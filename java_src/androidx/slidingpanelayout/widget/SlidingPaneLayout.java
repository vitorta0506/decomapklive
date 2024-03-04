package androidx.slidingpanelayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.content.ContextCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SlidingPaneLayout extends ViewGroup {
    private static final int DEFAULT_FADE_COLOR = -858993460;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private boolean mDisplayListReflectionLoaded;
    final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private Method mGetDisplayList;
    private float mInitialMotionX;
    private float mInitialMotionY;
    boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    final ArrayList<DisableLayerRunnable> mPostedRunnables;
    boolean mPreservedOpenState;
    private Field mRecreateDisplayList;
    private Drawable mShadowDrawableLeft;
    private Drawable mShadowDrawableRight;
    float mSlideOffset;
    int mSlideRange;
    View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;

    /* loaded from: classes.dex */
    class AccessibilityDelegate extends AccessibilityDelegateCompat {
        private final Rect mTmpRect = new Rect();

        AccessibilityDelegate() {
        }

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.mTmpRect;
            accessibilityNodeInfoCompat2.getBoundsInParent(rect);
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }

        public boolean filter(View view) {
            return SlidingPaneLayout.this.isDimmed(view);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, obtain);
            copyNodeInfoNoChildren(accessibilityNodeInfoCompat, obtain);
            obtain.recycle();
            accessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
            accessibilityNodeInfoCompat.setSource(view);
            ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i9);
                if (!filter(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.setImportantForAccessibility(childAt, 1);
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (filter(view)) {
                return false;
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class DisableLayerRunnable implements Runnable {
        final View mChildView;

        DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                this.mChildView.setLayerType(0, null);
                SlidingPaneLayout.this.invalidateChildRegion(this.mChildView);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }

    /* loaded from: classes.dex */
    private class DragHelperCallback extends ViewDragHelper.Callback {
        DragHelperCallback() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i9, int i10) {
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.mSlideableView.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + SlidingPaneLayout.this.mSlideableView.getWidth());
                return Math.max(Math.min(i9, width), width - SlidingPaneLayout.this.mSlideRange);
            }
            int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            return Math.min(Math.max(i9, paddingLeft), SlidingPaneLayout.this.mSlideRange + paddingLeft);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i9, int i10) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.mSlideRange;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int i9, int i10) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.mDragHelper.captureChildView(slidingPaneLayout.mSlideableView, i10);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i9) {
            SlidingPaneLayout.this.setAllChildrenVisible();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i9) {
            if (SlidingPaneLayout.this.mDragHelper.getViewDragState() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.mSlideOffset == 0.0f) {
                    slidingPaneLayout.updateObscuredViewsVisibility(slidingPaneLayout.mSlideableView);
                    SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                    slidingPaneLayout2.dispatchOnPanelClosed(slidingPaneLayout2.mSlideableView);
                    SlidingPaneLayout.this.mPreservedOpenState = false;
                    return;
                }
                slidingPaneLayout.dispatchOnPanelOpened(slidingPaneLayout.mSlideableView);
                SlidingPaneLayout.this.mPreservedOpenState = true;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i9, int i10, int i11, int i12) {
            SlidingPaneLayout.this.onPanelDragged(i9);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f10, float f11) {
            int paddingLeft;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                int paddingRight = SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                if (f10 < 0.0f || (f10 == 0.0f && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.mSlideRange;
                }
                paddingLeft = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.mSlideableView.getWidth();
            } else {
                paddingLeft = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                int i9 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
                if (i9 > 0 || (i9 == 0 && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                    paddingLeft += SlidingPaneLayout.this.mSlideRange;
                }
            }
            SlidingPaneLayout.this.mDragHelper.settleCapturedViewAt(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i9) {
            if (SlidingPaneLayout.this.mIsUnableToDrag) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).slideable;
        }
    }

    /* loaded from: classes.dex */
    public interface PanelSlideListener {
        void onPanelClosed(@NonNull View view);

        void onPanelOpened(@NonNull View view);

        void onPanelSlide(@NonNull View view, float f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i9) {
                return new SavedState[i9];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };
        boolean isOpen;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            super.writeToParcel(parcel, i9);
            parcel.writeInt(this.isOpen ? 1 : 0);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isOpen = parcel.readInt() != 0;
        }
    }

    /* loaded from: classes.dex */
    public static class SimplePanelSlideListener implements PanelSlideListener {
        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelClosed(View view) {
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelOpened(View view) {
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelSlide(View view, float f10) {
        }
    }

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean closePane(View view, int i9) {
        if (this.mFirstLayout || smoothSlideTo(0.0f, i9)) {
            this.mPreservedOpenState = false;
            return true;
        }
        return false;
    }

    private void dimChildView(View view, float f10, int i9) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f10 > 0.0f && i9 != 0) {
            int i10 = (((int) ((((-16777216) & i9) >>> 24) * f10)) << 24) | (i9 & ViewCompat.MEASURED_SIZE_MASK);
            if (layoutParams.dimPaint == null) {
                layoutParams.dimPaint = new Paint();
            }
            layoutParams.dimPaint.setColorFilter(new PorterDuffColorFilter(i10, PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.dimPaint);
            }
            invalidateChildRegion(view);
        } else if (view.getLayerType() != 0) {
            Paint paint = layoutParams.dimPaint;
            if (paint != null) {
                paint.setColorFilter(null);
            }
            DisableLayerRunnable disableLayerRunnable = new DisableLayerRunnable(view);
            this.mPostedRunnables.add(disableLayerRunnable);
            ViewCompat.postOnAnimation(this, disableLayerRunnable);
        }
    }

    private boolean openPane(View view, int i9) {
        if (this.mFirstLayout || smoothSlideTo(1.0f, i9)) {
            this.mPreservedOpenState = true;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parallaxOtherViews(float r10) {
        /*
            r9 = this;
            boolean r0 = r9.isLayoutRtlSupport()
            android.view.View r1 = r9.mSlideableView
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.slidingpanelayout.widget.SlidingPaneLayout$LayoutParams r1 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) r1
            boolean r2 = r1.dimWhenOffset
            r3 = 0
            if (r2 == 0) goto L1c
            if (r0 == 0) goto L16
            int r1 = r1.rightMargin
            goto L18
        L16:
            int r1 = r1.leftMargin
        L18:
            if (r1 > 0) goto L1c
            r1 = 1
            goto L1d
        L1c:
            r1 = 0
        L1d:
            int r2 = r9.getChildCount()
        L21:
            if (r3 >= r2) goto L59
            android.view.View r4 = r9.getChildAt(r3)
            android.view.View r5 = r9.mSlideableView
            if (r4 != r5) goto L2c
            goto L56
        L2c:
            float r5 = r9.mParallaxOffset
            r6 = 1065353216(0x3f800000, float:1.0)
            float r5 = r6 - r5
            int r7 = r9.mParallaxBy
            float r8 = (float) r7
            float r5 = r5 * r8
            int r5 = (int) r5
            r9.mParallaxOffset = r10
            float r8 = r6 - r10
            float r7 = (float) r7
            float r8 = r8 * r7
            int r7 = (int) r8
            int r5 = r5 - r7
            if (r0 == 0) goto L44
            int r5 = -r5
        L44:
            r4.offsetLeftAndRight(r5)
            if (r1 == 0) goto L56
            float r5 = r9.mParallaxOffset
            if (r0 == 0) goto L4f
            float r5 = r5 - r6
            goto L51
        L4f:
            float r5 = r6 - r5
        L51:
            int r6 = r9.mCoveredFadeColor
            r9.dimChildView(r4, r5, r6)
        L56:
            int r3 = r3 + 1
            goto L21
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.parallaxOtherViews(float):void");
    }

    private static boolean viewIsOpaque(View view) {
        return view.isOpaque();
    }

    protected boolean canScroll(View view, boolean z10, int i9, int i10, int i11) {
        int i12;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i13 = i10 + scrollX;
                if (i13 >= childAt.getLeft() && i13 < childAt.getRight() && (i12 = i11 + scrollY) >= childAt.getTop() && i12 < childAt.getBottom() && canScroll(childAt, true, i9, i13 - childAt.getLeft(), i12 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (z10) {
            if (view.canScrollHorizontally(isLayoutRtlSupport() ? i9 : -i9)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean canSlide() {
        return this.mCanSlide;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mDragHelper.continueSettling(true)) {
            if (!this.mCanSlide) {
                this.mDragHelper.abort();
            } else {
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }
    }

    void dispatchOnPanelClosed(View view) {
        PanelSlideListener panelSlideListener = this.mPanelSlideListener;
        if (panelSlideListener != null) {
            panelSlideListener.onPanelClosed(view);
        }
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelOpened(View view) {
        PanelSlideListener panelSlideListener = this.mPanelSlideListener;
        if (panelSlideListener != null) {
            panelSlideListener.onPanelOpened(view);
        }
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelSlide(View view) {
        PanelSlideListener panelSlideListener = this.mPanelSlideListener;
        if (panelSlideListener != null) {
            panelSlideListener.onPanelSlide(view, this.mSlideOffset);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        int i9;
        int i10;
        super.draw(canvas);
        if (isLayoutRtlSupport()) {
            drawable = this.mShadowDrawableRight;
        } else {
            drawable = this.mShadowDrawableLeft;
        }
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (isLayoutRtlSupport()) {
            i10 = childAt.getRight();
            i9 = intrinsicWidth + i10;
        } else {
            int left = childAt.getLeft();
            int i11 = left - intrinsicWidth;
            i9 = left;
            i10 = i11;
        }
        drawable.setBounds(i10, top, i9, bottom);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.mCanSlide && !layoutParams.slideable && this.mSlideableView != null) {
            canvas.getClipBounds(this.mTmpRect);
            if (isLayoutRtlSupport()) {
                Rect rect = this.mTmpRect;
                rect.left = Math.max(rect.left, this.mSlideableView.getRight());
            } else {
                Rect rect2 = this.mTmpRect;
                rect2.right = Math.min(rect2.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.mTmpRect);
        }
        boolean drawChild = super.drawChild(canvas, view, j10);
        canvas.restoreToCount(save);
        return drawChild;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @ColorInt
    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    @Px
    public int getParallaxDistance() {
        return this.mParallaxBy;
    }

    @ColorInt
    public int getSliderFadeColor() {
        return this.mSliderFadeColor;
    }

    void invalidateChildRegion(View view) {
        ViewCompat.setLayerPaint(view, ((LayoutParams) view.getLayoutParams()).dimPaint);
    }

    boolean isDimmed(View view) {
        if (view == null) {
            return false;
        }
        return this.mCanSlide && ((LayoutParams) view.getLayoutParams()).dimWhenOffset && this.mSlideOffset > 0.0f;
    }

    boolean isLayoutRtlSupport() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public boolean isOpen() {
        return !this.mCanSlide || this.mSlideOffset == 1.0f;
    }

    public boolean isSlideable() {
        return this.mCanSlide;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        int size = this.mPostedRunnables.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mPostedRunnables.get(i9).run();
        }
        this.mPostedRunnables.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.mCanSlide && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.mPreservedOpenState = !this.mDragHelper.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.mCanSlide || (this.mIsUnableToDrag && actionMasked != 0)) {
            this.mDragHelper.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.mDragHelper.cancel();
            return false;
        } else {
            if (actionMasked == 0) {
                this.mIsUnableToDrag = false;
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                this.mInitialMotionX = x10;
                this.mInitialMotionY = y10;
                if (this.mDragHelper.isViewUnder(this.mSlideableView, (int) x10, (int) y10) && isDimmed(this.mSlideableView)) {
                    z10 = true;
                    return this.mDragHelper.shouldInterceptTouchEvent(motionEvent) || z10;
                }
            } else if (actionMasked == 2) {
                float x11 = motionEvent.getX();
                float y11 = motionEvent.getY();
                float abs = Math.abs(x11 - this.mInitialMotionX);
                float abs2 = Math.abs(y11 - this.mInitialMotionY);
                if (abs > this.mDragHelper.getTouchSlop() && abs2 > abs) {
                    this.mDragHelper.cancel();
                    this.mIsUnableToDrag = true;
                    return false;
                }
            }
            z10 = false;
            if (this.mDragHelper.shouldInterceptTouchEvent(motionEvent)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        if (isLayoutRtlSupport) {
            this.mDragHelper.setEdgeTrackingEnabled(2);
        } else {
            this.mDragHelper.setEdgeTrackingEnabled(1);
        }
        int i17 = i11 - i9;
        int paddingRight = isLayoutRtlSupport ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = isLayoutRtlSupport ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.mFirstLayout) {
            this.mSlideOffset = (this.mCanSlide && this.mPreservedOpenState) ? 1.0f : 0.0f;
        }
        int i18 = paddingRight;
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt = getChildAt(i19);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.slideable) {
                    int i20 = i17 - paddingLeft;
                    int min = (Math.min(paddingRight, i20 - this.mOverhangSize) - i18) - (((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    this.mSlideRange = min;
                    int i21 = isLayoutRtlSupport ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.dimWhenOffset = ((i18 + i21) + min) + (measuredWidth / 2) > i20;
                    int i22 = (int) (min * this.mSlideOffset);
                    i18 += i21 + i22;
                    this.mSlideOffset = i22 / min;
                    i13 = 0;
                } else if (!this.mCanSlide || (i14 = this.mParallaxBy) == 0) {
                    i18 = paddingRight;
                    i13 = 0;
                } else {
                    i13 = (int) ((1.0f - this.mSlideOffset) * i14);
                    i18 = paddingRight;
                }
                if (isLayoutRtlSupport) {
                    i16 = (i17 - i18) + i13;
                    i15 = i16 - measuredWidth;
                } else {
                    i15 = i18 - i13;
                    i16 = i15 + measuredWidth;
                }
                childAt.layout(i15, paddingTop, i16, childAt.getMeasuredHeight() + paddingTop);
                paddingRight += childAt.getWidth();
            }
        }
        if (this.mFirstLayout) {
            if (this.mCanSlide) {
                if (this.mParallaxBy != 0) {
                    parallaxOtherViews(this.mSlideOffset);
                }
                if (((LayoutParams) this.mSlideableView.getLayoutParams()).dimWhenOffset) {
                    dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
                }
            } else {
                for (int i23 = 0; i23 < childCount; i23++) {
                    dimChildView(getChildAt(i23), 0.0f, this.mSliderFadeColor);
                }
            }
            updateObscuredViewsVisibility(this.mSlideableView);
        }
        this.mFirstLayout = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int paddingTop;
        int i11;
        int i12;
        int makeMeasureSpec;
        int i13;
        int i14;
        int makeMeasureSpec2;
        float f10;
        int i15;
        int makeMeasureSpec3;
        int makeMeasureSpec4;
        int i16;
        int mode = View.MeasureSpec.getMode(i9);
        int size = View.MeasureSpec.getSize(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i10);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
        } else if (mode2 == 0) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            }
            if (mode2 == 0) {
                mode2 = Integer.MIN_VALUE;
                size2 = 300;
            }
        }
        boolean z10 = false;
        if (mode2 == Integer.MIN_VALUE) {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            i11 = 0;
        } else if (mode2 != 1073741824) {
            i11 = 0;
            paddingTop = 0;
        } else {
            i11 = (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = i11;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e(TAG, "onMeasure: More than two child views are not supported.");
        }
        this.mSlideableView = null;
        int i17 = paddingLeft;
        int i18 = 0;
        boolean z11 = false;
        float f11 = 0.0f;
        while (true) {
            i12 = 8;
            if (i18 >= childCount) {
                break;
            }
            View childAt = getChildAt(i18);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.dimWhenOffset = z10;
            } else {
                float f12 = layoutParams.weight;
                if (f12 > 0.0f) {
                    f11 += f12;
                    if (((ViewGroup.MarginLayoutParams) layoutParams).width == 0) {
                    }
                }
                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int i20 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                if (i20 == -2) {
                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i19, Integer.MIN_VALUE);
                    f10 = f11;
                    i15 = Integer.MIN_VALUE;
                } else {
                    f10 = f11;
                    i15 = Integer.MIN_VALUE;
                    if (i20 == -1) {
                        makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i19, BasicMeasure.EXACTLY);
                    } else {
                        makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i20, BasicMeasure.EXACTLY);
                    }
                }
                int i21 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                if (i21 == -2) {
                    i16 = View.MeasureSpec.makeMeasureSpec(paddingTop, i15);
                } else {
                    if (i21 == -1) {
                        makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(paddingTop, BasicMeasure.EXACTLY);
                    } else {
                        makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(i21, BasicMeasure.EXACTLY);
                    }
                    i16 = makeMeasureSpec4;
                }
                childAt.measure(makeMeasureSpec3, i16);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (mode2 == i15 && measuredHeight > i11) {
                    i11 = Math.min(measuredHeight, paddingTop);
                }
                i17 -= measuredWidth;
                boolean z12 = i17 < 0;
                layoutParams.slideable = z12;
                z11 |= z12;
                if (z12) {
                    this.mSlideableView = childAt;
                }
                f11 = f10;
            }
            i18++;
            z10 = false;
        }
        if (z11 || f11 > 0.0f) {
            int i22 = paddingLeft - this.mOverhangSize;
            int i23 = 0;
            while (i23 < childCount) {
                View childAt2 = getChildAt(i23);
                if (childAt2.getVisibility() != i12) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != i12) {
                        boolean z13 = ((ViewGroup.MarginLayoutParams) layoutParams2).width == 0 && layoutParams2.weight > 0.0f;
                        int measuredWidth2 = z13 ? 0 : childAt2.getMeasuredWidth();
                        if (z11 && childAt2 != this.mSlideableView) {
                            if (((ViewGroup.MarginLayoutParams) layoutParams2).width < 0 && (measuredWidth2 > i22 || layoutParams2.weight > 0.0f)) {
                                if (z13) {
                                    int i24 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                    if (i24 == -2) {
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                        i14 = BasicMeasure.EXACTLY;
                                    } else if (i24 == -1) {
                                        i14 = BasicMeasure.EXACTLY;
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, BasicMeasure.EXACTLY);
                                    } else {
                                        i14 = BasicMeasure.EXACTLY;
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i24, BasicMeasure.EXACTLY);
                                    }
                                } else {
                                    i14 = BasicMeasure.EXACTLY;
                                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), BasicMeasure.EXACTLY);
                                }
                                childAt2.measure(View.MeasureSpec.makeMeasureSpec(i22, i14), makeMeasureSpec2);
                            }
                        } else if (layoutParams2.weight > 0.0f) {
                            if (((ViewGroup.MarginLayoutParams) layoutParams2).width == 0) {
                                int i25 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                if (i25 == -2) {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                } else if (i25 == -1) {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, BasicMeasure.EXACTLY);
                                } else {
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i25, BasicMeasure.EXACTLY);
                                }
                            } else {
                                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), BasicMeasure.EXACTLY);
                            }
                            if (z11) {
                                int i26 = paddingLeft - (((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                i13 = i22;
                                int makeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(i26, BasicMeasure.EXACTLY);
                                if (measuredWidth2 != i26) {
                                    childAt2.measure(makeMeasureSpec5, makeMeasureSpec);
                                }
                                i23++;
                                i22 = i13;
                                i12 = 8;
                            } else {
                                i13 = i22;
                                childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((layoutParams2.weight * Math.max(0, i17)) / f11)), BasicMeasure.EXACTLY), makeMeasureSpec);
                                i23++;
                                i22 = i13;
                                i12 = 8;
                            }
                        }
                    }
                }
                i13 = i22;
                i23++;
                i22 = i13;
                i12 = 8;
            }
        }
        setMeasuredDimension(size, i11 + getPaddingTop() + getPaddingBottom());
        this.mCanSlide = z11;
        if (this.mDragHelper.getViewDragState() == 0 || z11) {
            return;
        }
        this.mDragHelper.abort();
    }

    void onPanelDragged(int i9) {
        if (this.mSlideableView == null) {
            this.mSlideOffset = 0.0f;
            return;
        }
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        int width = this.mSlideableView.getWidth();
        if (isLayoutRtlSupport) {
            i9 = (getWidth() - i9) - width;
        }
        float paddingRight = (i9 - ((isLayoutRtlSupport ? getPaddingRight() : getPaddingLeft()) + (isLayoutRtlSupport ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.mSlideRange;
        this.mSlideOffset = paddingRight;
        if (this.mParallaxBy != 0) {
            parallaxOtherViews(paddingRight);
        }
        if (layoutParams.dimWhenOffset) {
            dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        dispatchOnPanelSlide(this.mSlideableView);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.isOpen) {
            openPane();
        } else {
            closePane();
        }
        this.mPreservedOpenState = savedState.isOpen;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isOpen = isSlideable() ? isOpen() : this.mPreservedOpenState;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        if (i9 != i11) {
            this.mFirstLayout = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.processTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 && isDimmed(this.mSlideableView)) {
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                float f10 = x10 - this.mInitialMotionX;
                float f11 = y10 - this.mInitialMotionY;
                int touchSlop = this.mDragHelper.getTouchSlop();
                if ((f10 * f10) + (f11 * f11) < touchSlop * touchSlop && this.mDragHelper.isViewUnder(this.mSlideableView, (int) x10, (int) y10)) {
                    closePane(this.mSlideableView, 0);
                }
            }
        } else {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            this.mInitialMotionX = x11;
            this.mInitialMotionY = y11;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.mCanSlide) {
            return;
        }
        this.mPreservedOpenState = view == this.mSlideableView;
    }

    void setAllChildrenVisible() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    public void setCoveredFadeColor(@ColorInt int i9) {
        this.mCoveredFadeColor = i9;
    }

    public void setPanelSlideListener(@Nullable PanelSlideListener panelSlideListener) {
        this.mPanelSlideListener = panelSlideListener;
    }

    public void setParallaxDistance(@Px int i9) {
        this.mParallaxBy = i9;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.mShadowDrawableLeft = drawable;
    }

    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.mShadowDrawableRight = drawable;
    }

    @Deprecated
    public void setShadowResource(@DrawableRes int i9) {
        setShadowDrawable(getResources().getDrawable(i9));
    }

    public void setShadowResourceLeft(int i9) {
        setShadowDrawableLeft(ContextCompat.getDrawable(getContext(), i9));
    }

    public void setShadowResourceRight(int i9) {
        setShadowDrawableRight(ContextCompat.getDrawable(getContext(), i9));
    }

    public void setSliderFadeColor(@ColorInt int i9) {
        this.mSliderFadeColor = i9;
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    boolean smoothSlideTo(float f10, int i9) {
        int paddingLeft;
        if (this.mCanSlide) {
            boolean isLayoutRtlSupport = isLayoutRtlSupport();
            LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
            if (isLayoutRtlSupport) {
                paddingLeft = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f10 * this.mSlideRange)) + this.mSlideableView.getWidth()));
            } else {
                paddingLeft = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f10 * this.mSlideRange));
            }
            ViewDragHelper viewDragHelper = this.mDragHelper;
            View view = this.mSlideableView;
            if (viewDragHelper.smoothSlideViewTo(view, paddingLeft, view.getTop())) {
                setAllChildrenVisible();
                ViewCompat.postInvalidateOnAnimation(this);
                return true;
            }
            return false;
        }
        return false;
    }

    void updateObscuredViewsVisibility(View view) {
        int i9;
        int i10;
        int i11;
        int i12;
        View childAt;
        boolean z10;
        View view2 = view;
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        int width = isLayoutRtlSupport ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = isLayoutRtlSupport ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !viewIsOpaque(view)) {
            i9 = 0;
            i10 = 0;
            i11 = 0;
            i12 = 0;
        } else {
            i9 = view.getLeft();
            i10 = view.getRight();
            i11 = view.getTop();
            i12 = view.getBottom();
        }
        int childCount = getChildCount();
        int i13 = 0;
        while (i13 < childCount && (childAt = getChildAt(i13)) != view2) {
            if (childAt.getVisibility() == 8) {
                z10 = isLayoutRtlSupport;
            } else {
                z10 = isLayoutRtlSupport;
                childAt.setVisibility((Math.max(isLayoutRtlSupport ? paddingLeft : width, childAt.getLeft()) < i9 || Math.max(paddingTop, childAt.getTop()) < i11 || Math.min(isLayoutRtlSupport ? width : paddingLeft, childAt.getRight()) > i10 || Math.min(height, childAt.getBottom()) > i12) ? 0 : 4);
            }
            i13++;
            view2 = view;
            isLayoutRtlSupport = z10;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int[] ATTRS = {16843137};
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight;

        public LayoutParams() {
            super(-1, -1);
            this.weight = 0.0f;
        }

        public LayoutParams(int i9, int i10) {
            super(i9, i10);
            this.weight = 0.0f;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.weight = 0.0f;
            this.weight = layoutParams.weight;
        }

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.weight = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
            this.weight = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mSliderFadeColor = DEFAULT_FADE_COLOR;
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        this.mPostedRunnables = new ArrayList<>();
        float f10 = context.getResources().getDisplayMetrics().density;
        this.mOverhangSize = (int) ((32.0f * f10) + 0.5f);
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewDragHelper create = ViewDragHelper.create(this, 0.5f, new DragHelperCallback());
        this.mDragHelper = create;
        create.setMinVelocity(f10 * 400.0f);
    }

    public boolean closePane() {
        return closePane(this.mSlideableView, 0);
    }

    public boolean openPane() {
        return openPane(this.mSlideableView, 0);
    }
}
