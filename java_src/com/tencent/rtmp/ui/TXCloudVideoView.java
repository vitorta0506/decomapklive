package com.tencent.rtmp.ui;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.g;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class TXCloudVideoView extends FrameLayout implements ScaleGestureDetector.OnScaleGestureListener {
    private static final int FOCUS_AREA_SIZE_IN_DP = 70;
    private WeakReference<b> mCallback;
    private final DashBoard mDashBoard;
    private final Rect mDashMargin;
    private final a mDelayedTapRunnable;
    private final HashSet<TextureView> mDeprecatedTextureViewSet;
    private boolean mEnableShowLog;
    private boolean mEnableTouchToFocus;
    private boolean mEnableZoom;
    private FocusIndicatorView mFocusIndicatorView;
    protected Object mGLContext;
    private final Runnable mHideIndicatorViewRunnable;
    private float mLastScaleFactor;
    private float mScaleFactor;
    private ScaleGestureDetector mScaleGestureDetector;
    private WeakReference<Surface> mSurface;
    private final WeakReference<SurfaceView> mSurfaceView;
    private final String mTAG;
    private com.tencent.rtmp.ui.a mTapListener;
    private TextureView mTopTextureView;
    private String mUserId;
    private TextureView mVideoViewSetByUser;
    private com.tencent.rtmp.ui.b mZoomListener;

    /* loaded from: classes4.dex */
    public interface b {
        void onShowLog(boolean z10);
    }

    public TXCloudVideoView(Context context) {
        this(context, null, null);
    }

    private void addViewInternal(TextureView textureView) {
        if (textureView == null) {
            LiteavLog.w(this.mTAG, "addViewInternal,TextureView is null.");
            return;
        }
        if (textureView.getParent() == null) {
            addView(textureView);
            updateTopTextureView();
        } else if (textureView.getParent() == this) {
            LiteavLog.i(this.mTAG, "view has been added.");
        } else {
            String str = this.mTAG;
            LiteavLog.w(str, "view has been added to other parent view. parent=" + textureView.getParent());
        }
        this.mDeprecatedTextureViewSet.remove(textureView);
    }

    private TextureView getTextureViewSetByUser() {
        return this.mVideoViewSetByUser;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideIndicatorView() {
        FocusIndicatorView focusIndicatorView = this.mFocusIndicatorView;
        if (focusIndicatorView != null) {
            focusIndicatorView.setVisibility(8);
        }
    }

    private boolean isShowLogEnabled() {
        return this.mEnableShowLog;
    }

    private static int px2dip(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void removeDeprecatedViews(TextureView textureView) {
        Iterator<TextureView> it = this.mDeprecatedTextureViewSet.iterator();
        while (it.hasNext()) {
            TextureView next = it.next();
            if (next != null && next != textureView) {
                removeView(next);
                it.remove();
            }
        }
        updateTopTextureView();
    }

    private void removeViewInternal(TextureView textureView, boolean z10) {
        if (textureView == null) {
            return;
        }
        if (z10) {
            removeView(textureView);
            updateTopTextureView();
            this.mDeprecatedTextureViewSet.remove(textureView);
        } else if (textureView.getParent() == this) {
            removeDeprecatedViews(textureView);
            this.mDeprecatedTextureViewSet.add(textureView);
        } else if (textureView.getParent() == null) {
            LiteavLog.i(this.mTAG, "current view has been removed from the parent view. view=".concat(String.valueOf(textureView)));
        } else if (textureView.getParent() != this) {
            String str = this.mTAG;
            LiteavLog.w(str, "current view is not a child view of this view. parent=" + textureView.getParent());
        }
    }

    private void repositionDashBoard() {
        removeView(this.mDashBoard);
        addView(this.mDashBoard);
    }

    private void setShowLogCallback(WeakReference<b> weakReference) {
        this.mCallback = weakReference;
    }

    private void setTouchToFocusEnabled(boolean z10, com.tencent.rtmp.ui.a aVar) {
        this.mEnableTouchToFocus = z10;
        this.mTapListener = aVar;
    }

    private void setZoomEnabled(boolean z10, com.tencent.rtmp.ui.b bVar) {
        LiteavLog.i(this.mTAG, "setZoomEnabled: ".concat(String.valueOf(z10)));
        this.mEnableZoom = z10;
        this.mZoomListener = bVar;
    }

    private void showFocusView(int i9, int i10, int i11, int i12) {
        post(d.a(this, i9, i10, i11, i12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFocusViewInternal(int i9, int i10, int i11, int i12) {
        if (i11 == getWidth() && i12 == getHeight()) {
            LiteavLog.v(this.mTAG, "show indicator view at (%d,%d)", Integer.valueOf(i9), Integer.valueOf(i10));
            removeCallbacks(this.mHideIndicatorViewRunnable);
            int i13 = (int) ((getResources().getDisplayMetrics().density * 70.0f) + 0.5f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i13, i13);
            int i14 = i13 / 2;
            layoutParams.leftMargin = g.a(i9 - i14, 0, getWidth() - i13);
            layoutParams.topMargin = g.a(i10 - i14, 0, getHeight() - i13);
            View view = this.mFocusIndicatorView;
            if (view == null) {
                FocusIndicatorView focusIndicatorView = new FocusIndicatorView(getContext());
                this.mFocusIndicatorView = focusIndicatorView;
                addView(focusIndicatorView, layoutParams);
            } else if (indexOfChild(view) != getChildCount() - 1) {
                removeView(this.mFocusIndicatorView);
                addView(this.mFocusIndicatorView, layoutParams);
            } else {
                this.mFocusIndicatorView.setLayoutParams(layoutParams);
            }
            this.mFocusIndicatorView.setVisibility(0);
            FocusIndicatorView focusIndicatorView2 = this.mFocusIndicatorView;
            focusIndicatorView2.startAnimation(focusIndicatorView2.f33429a);
            postDelayed(this.mHideIndicatorViewRunnable, TimeUnit.SECONDS.toMillis(1L));
            return;
        }
        LiteavLog.i(this.mTAG, "ignore show indicator view when view size changed");
    }

    private void updateTopTextureView() {
        TextureView textureView;
        int childCount = getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                textureView = null;
                break;
            }
            View childAt = getChildAt(childCount);
            if (childAt instanceof TextureView) {
                textureView = (TextureView) childAt;
                break;
            }
            childCount--;
        }
        if (this.mTopTextureView != textureView) {
            this.mTopTextureView = textureView;
        }
    }

    public void addVideoView(TextureView textureView) {
        removeViewInternal(this.mVideoViewSetByUser, true);
        addViewInternal(textureView);
        this.mVideoViewSetByUser = textureView;
        repositionDashBoard();
    }

    public void clearLastFrame(boolean z10) {
        if (z10) {
            setVisibility(8);
        }
    }

    public void clearLog() {
        DashBoard dashBoard = this.mDashBoard;
        if (dashBoard != null) {
            dashBoard.f33422a.setLength(0);
            TextView textView = dashBoard.f33423b;
            if (textView != null) {
                textView.setText("");
            }
            TextView textView2 = dashBoard.f33424c;
            if (textView2 != null) {
                textView2.setText("");
            }
        }
    }

    public void disableLog(boolean z10) {
    }

    @Deprecated
    public TextureView getHWVideoView() {
        return getVideoView();
    }

    public Object getOpenGLContext() {
        return this.mGLContext;
    }

    public Surface getSurface() {
        WeakReference<Surface> weakReference = this.mSurface;
        if (weakReference == null) {
            return null;
        }
        Surface surface = weakReference.get();
        if (surface == null) {
            LiteavLog.w(this.mTAG, "surface is null.");
        }
        return surface;
    }

    public SurfaceView getSurfaceView() {
        WeakReference<SurfaceView> weakReference = this.mSurfaceView;
        if (weakReference == null) {
            return null;
        }
        SurfaceView surfaceView = weakReference.get();
        if (surfaceView == null) {
            LiteavLog.w(this.mTAG, "surfaceView is null.");
        }
        return surfaceView;
    }

    public String getUserId() {
        return this.mUserId;
    }

    @Deprecated
    public TextureView getVideoView() {
        TextureView textureView = this.mVideoViewSetByUser;
        return textureView != null ? textureView : this.mTopTextureView;
    }

    public void onDestroy() {
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        DashBoard dashBoard = this.mDashBoard;
        Rect rect = this.mDashMargin;
        dashBoard.a(rect.left, rect.top, rect.right, rect.bottom);
        this.mDashBoard.setStatusTextSize((float) (px2dip(getContext(), getWidth()) / 30.0d));
        this.mDashBoard.setEventTextSize((float) (px2dip(getContext(), getWidth()) / 25.0d));
    }

    public void onPause() {
    }

    public void onResume() {
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        if (this.mEnableZoom) {
            this.mLastScaleFactor = scaleGestureDetector.getScaleFactor();
            float a10 = g.a(this.mScaleFactor + (scaleGestureDetector.getScaleFactor() - this.mLastScaleFactor), 0.0f, 1.0f);
            this.mScaleFactor = a10;
            com.tencent.rtmp.ui.b bVar = this.mZoomListener;
            if (bVar != null) {
                bVar.a(a10);
            }
            return false;
        }
        return false;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.mLastScaleFactor = scaleGestureDetector.getScaleFactor();
        return this.mEnableZoom;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() == 1 && motionEvent.getAction() == 0) {
            if (this.mEnableTouchToFocus) {
                a aVar = this.mDelayedTapRunnable;
                int width = getWidth();
                int height = getHeight();
                Point point = aVar.f33438a;
                point.x = (int) motionEvent.getX();
                point.y = (int) motionEvent.getY();
                aVar.f33439b = width;
                aVar.f33440c = height;
                removeCallbacks(this.mDelayedTapRunnable);
                postDelayed(this.mDelayedTapRunnable, 100L);
            }
        } else if (motionEvent.getPointerCount() > 1 && motionEvent.getAction() == 2 && this.mEnableZoom) {
            removeCallbacks(this.mDelayedTapRunnable);
            hideIndicatorView();
            if (this.mScaleGestureDetector == null) {
                this.mScaleGestureDetector = new ScaleGestureDetector(getContext(), this);
            }
            this.mScaleGestureDetector.onTouchEvent(motionEvent);
        }
        if (this.mEnableZoom) {
            if (motionEvent.getAction() == 0) {
                performClick();
            }
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void removeVideoView() {
        removeViewInternal(this.mVideoViewSetByUser, true);
        this.mVideoViewSetByUser = null;
    }

    public void setDashBoardMarginInPx(int i9, int i10, int i11, int i12) {
        Rect rect = this.mDashMargin;
        rect.left = i9;
        rect.right = i10;
        rect.top = i11;
        rect.bottom = i12;
        this.mDashBoard.a(i9, i11, i10, i12);
    }

    public void setDashBoardMarginInRatio(final float f10, final float f11, final float f12, final float f13) {
        postDelayed(new Runnable() { // from class: com.tencent.rtmp.ui.TXCloudVideoView.1
            @Override // java.lang.Runnable
            public final void run() {
                TXCloudVideoView tXCloudVideoView = TXCloudVideoView.this;
                tXCloudVideoView.setDashBoardMarginInPx((int) (tXCloudVideoView.getWidth() * f10), (int) (TXCloudVideoView.this.getWidth() * f11), (int) (TXCloudVideoView.this.getHeight() * f12), (int) (TXCloudVideoView.this.getHeight() * f13));
            }
        }, 100L);
    }

    public void setLogMargin(float f10, float f11, float f12, float f13) {
        setDashBoardMarginInPx((int) f10, (int) f11, (int) f12, (int) f13);
    }

    public void setOpenGLContext(Object obj) {
        this.mGLContext = obj;
    }

    public void setUserId(String str) {
        this.mUserId = str;
    }

    public void showLog(boolean z10) {
        this.mEnableShowLog = z10;
        WeakReference<b> weakReference = this.mCallback;
        b bVar = weakReference == null ? null : weakReference.get();
        if (bVar != null) {
            bVar.onShowLog(z10);
        }
    }

    public TXCloudVideoView(SurfaceView surfaceView) {
        this(surfaceView.getContext(), null, surfaceView);
    }

    public TXCloudVideoView(Context context, Surface surface) {
        this(context, null, null);
        this.mSurface = surface != null ? new WeakReference<>(surface) : null;
    }

    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Point f33438a;

        /* renamed from: b  reason: collision with root package name */
        int f33439b;

        /* renamed from: c  reason: collision with root package name */
        int f33440c;

        private a() {
            this.f33438a = new Point();
            this.f33439b = 0;
            this.f33440c = 0;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (TXCloudVideoView.this.mTapListener != null) {
                com.tencent.rtmp.ui.a aVar = TXCloudVideoView.this.mTapListener;
                Point point = this.f33438a;
                aVar.a(point.x, point.y, this.f33439b, this.f33440c);
            }
        }

        /* synthetic */ a(TXCloudVideoView tXCloudVideoView, byte b10) {
            this();
        }
    }

    public TXCloudVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, null);
    }

    public TXCloudVideoView(Context context, AttributeSet attributeSet, SurfaceView surfaceView) {
        super(context, attributeSet);
        this.mTAG = "TXCloudVideoView_" + hashCode();
        this.mDashMargin = new Rect();
        this.mDeprecatedTextureViewSet = new HashSet<>();
        this.mEnableTouchToFocus = false;
        this.mDelayedTapRunnable = new a(this, (byte) 0);
        this.mEnableZoom = false;
        this.mUserId = "";
        this.mHideIndicatorViewRunnable = c.a(this);
        this.mDashBoard = new DashBoard(context);
        this.mSurfaceView = surfaceView != null ? new WeakReference<>(surfaceView) : null;
    }
}
