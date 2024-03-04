package com.tencent.liteav.videobase.videobase;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.lang.ref.WeakReference;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class DisplayTarget {
    private static final String TAG = "DisplayTarget";
    private boolean mIsViewFromTXCloudVideoView;
    private Surface mSurface;
    private WeakReference<SurfaceView> mSurfaceView;
    private final String mTAG;
    private final a mTargetType;
    private WeakReference<TextureView> mTextureView;
    private WeakReference<TXCloudVideoView> mTxCloudVideoView;
    private final CustomHandler mUIHandler;

    /* loaded from: classes4.dex */
    public enum a {
        TEXTUREVIEW,
        SURFACEVIEW,
        SURFACE,
        TXCLOUDVIEW
    }

    public DisplayTarget(DisplayTarget displayTarget) {
        this.mTAG = "DisplayTarget_" + hashCode();
        this.mUIHandler = new CustomHandler(Looper.getMainLooper());
        this.mIsViewFromTXCloudVideoView = false;
        this.mTargetType = displayTarget.mTargetType;
        this.mTxCloudVideoView = displayTarget.mTxCloudVideoView;
        this.mTextureView = displayTarget.mTextureView;
        this.mSurfaceView = displayTarget.mSurfaceView;
        this.mSurface = displayTarget.mSurface;
        this.mIsViewFromTXCloudVideoView = displayTarget.mIsViewFromTXCloudVideoView;
    }

    @CalledByNative
    public static DisplayTarget create(Object obj) {
        if (obj instanceof DisplayTarget) {
            return new DisplayTarget((DisplayTarget) obj);
        }
        if (obj instanceof TXCloudVideoView) {
            return new DisplayTarget((TXCloudVideoView) obj);
        }
        if (obj instanceof TextureView) {
            return new DisplayTarget((TextureView) obj);
        }
        if (obj instanceof SurfaceView) {
            return new DisplayTarget((SurfaceView) obj);
        }
        LiteavLog.w(TAG, "object is unknown. object=".concat(String.valueOf(obj)));
        return null;
    }

    private void runOnUIThread(Runnable runnable) {
        if (Looper.myLooper() == this.mUIHandler.getLooper()) {
            runnable.run();
        } else {
            this.mUIHandler.post(runnable);
        }
    }

    private void setVisibility(View view, int i9) {
        if (view == null) {
            return;
        }
        runOnUIThread(b.a(view, i9));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            DisplayTarget displayTarget = (DisplayTarget) obj;
            if (this.mTargetType == displayTarget.mTargetType && CommonUtil.equals(getTXCloudVideoView(), displayTarget.getTXCloudVideoView()) && CommonUtil.equals(getTextureView(), displayTarget.getTextureView()) && CommonUtil.equals(getSurfaceView(), displayTarget.getSurfaceView()) && CommonUtil.equals(this.mSurface, displayTarget.mSurface)) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    public q getSize() {
        TXCloudVideoView tXCloudVideoView;
        WeakReference<TXCloudVideoView> weakReference;
        WeakReference<TextureView> weakReference2;
        int i9;
        WeakReference<SurfaceView> weakReference3;
        a aVar = this.mTargetType;
        if (aVar == a.SURFACEVIEW && (weakReference3 = this.mSurfaceView) != null) {
            tXCloudVideoView = weakReference3.get();
        } else if (aVar == a.TEXTUREVIEW && (weakReference2 = this.mTextureView) != null) {
            tXCloudVideoView = weakReference2.get();
        } else {
            tXCloudVideoView = (aVar != a.TXCLOUDVIEW || (weakReference = this.mTxCloudVideoView) == null) ? null : weakReference.get();
        }
        int i10 = 0;
        if (tXCloudVideoView != null) {
            i10 = tXCloudVideoView.getWidth();
            i9 = tXCloudVideoView.getHeight();
        } else {
            i9 = 0;
        }
        return new q(i10, i9);
    }

    public Surface getSurface() {
        return this.mSurface;
    }

    public SurfaceView getSurfaceView() {
        WeakReference<SurfaceView> weakReference = this.mSurfaceView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public TXCloudVideoView getTXCloudVideoView() {
        WeakReference<TXCloudVideoView> weakReference = this.mTxCloudVideoView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public TextureView getTextureView() {
        WeakReference<TextureView> weakReference = this.mTextureView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public a getType() {
        return this.mTargetType;
    }

    public void hideAll() {
        if (this.mIsViewFromTXCloudVideoView) {
            return;
        }
        setVisibility(getTextureView(), 8);
        setVisibility(getSurfaceView(), 8);
    }

    public void showAll() {
        setVisibility(getTextureView(), 0);
        setVisibility(getSurfaceView(), 0);
    }

    public String toString() {
        return "DisplayTarget{mTargetType=" + this.mTargetType + ", mTXCloudVideoView=" + getTXCloudVideoView() + ", mTextureView=" + getTextureView() + ", mSurfaceView=" + getSurfaceView() + ", mSurface=" + this.mSurface + '}';
    }

    public DisplayTarget(TXCloudVideoView tXCloudVideoView) {
        this.mTAG = "DisplayTarget_" + hashCode();
        this.mUIHandler = new CustomHandler(Looper.getMainLooper());
        this.mIsViewFromTXCloudVideoView = false;
        if (tXCloudVideoView == null) {
            this.mTargetType = a.TXCLOUDVIEW;
            return;
        }
        SurfaceView surfaceView = tXCloudVideoView.getSurfaceView();
        Surface surface = tXCloudVideoView.getSurface();
        TextureView a10 = g.a(tXCloudVideoView);
        if (surfaceView != null) {
            this.mTargetType = a.SURFACEVIEW;
            this.mSurfaceView = new WeakReference<>(surfaceView);
        } else if (surface != null) {
            this.mTargetType = a.SURFACE;
            this.mSurface = surface;
        } else if (a10 != null) {
            this.mTargetType = a.TEXTUREVIEW;
            this.mTextureView = new WeakReference<>(a10);
            this.mTxCloudVideoView = new WeakReference<>(tXCloudVideoView);
        } else {
            this.mTargetType = a.TXCLOUDVIEW;
            this.mTxCloudVideoView = new WeakReference<>(tXCloudVideoView);
        }
        this.mIsViewFromTXCloudVideoView = true;
    }

    public DisplayTarget(TextureView textureView) {
        this.mTAG = "DisplayTarget_" + hashCode();
        this.mUIHandler = new CustomHandler(Looper.getMainLooper());
        this.mIsViewFromTXCloudVideoView = false;
        this.mTargetType = a.TEXTUREVIEW;
        this.mTextureView = new WeakReference<>(textureView);
    }

    public DisplayTarget(SurfaceView surfaceView) {
        this.mTAG = "DisplayTarget_" + hashCode();
        this.mUIHandler = new CustomHandler(Looper.getMainLooper());
        this.mIsViewFromTXCloudVideoView = false;
        this.mTargetType = a.SURFACEVIEW;
        this.mSurfaceView = new WeakReference<>(surfaceView);
    }

    public DisplayTarget(Surface surface) {
        this.mTAG = "DisplayTarget_" + hashCode();
        this.mUIHandler = new CustomHandler(Looper.getMainLooper());
        this.mIsViewFromTXCloudVideoView = false;
        this.mTargetType = a.SURFACE;
        this.mSurface = surface;
    }
}
