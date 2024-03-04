package com.tencent.liteav.videoproducer.capture;

import androidx.annotation.NonNull;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public final class au implements CaptureSourceInterface.CaptureSourceListener {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    protected final Set<CaptureSourceInterface.CaptureSourceListener> f32600a = new HashSet();

    public final void a(CaptureSourceInterface.CaptureSourceListener captureSourceListener) {
        if (captureSourceListener != null) {
            this.f32600a.add(captureSourceListener);
        }
    }

    public final void b(CaptureSourceInterface.CaptureSourceListener captureSourceListener) {
        this.f32600a.remove(captureSourceListener);
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onCameraTouchEnable(boolean z10) {
        for (CaptureSourceInterface.CaptureSourceListener captureSourceListener : this.f32600a) {
            if (captureSourceListener != null) {
                captureSourceListener.onCameraTouchEnable(z10);
            }
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onCameraZoomEnable(boolean z10) {
        for (CaptureSourceInterface.CaptureSourceListener captureSourceListener : this.f32600a) {
            if (captureSourceListener != null) {
                captureSourceListener.onCameraZoomEnable(z10);
            }
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onCaptureError() {
        for (CaptureSourceInterface.CaptureSourceListener captureSourceListener : this.f32600a) {
            if (captureSourceListener != null) {
                captureSourceListener.onCaptureError();
            }
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onCaptureFirstFrame() {
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onFrameAvailable(CaptureSourceInterface captureSourceInterface, PixelFrame pixelFrame) {
        for (CaptureSourceInterface.CaptureSourceListener captureSourceListener : this.f32600a) {
            if (captureSourceListener != null) {
                captureSourceListener.onFrameAvailable(null, pixelFrame);
            }
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onScreenDisplayOrientationChanged(boolean z10) {
        for (CaptureSourceInterface.CaptureSourceListener captureSourceListener : this.f32600a) {
            if (captureSourceListener != null) {
                captureSourceListener.onScreenDisplayOrientationChanged(z10);
            }
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onStartFinish(boolean z10) {
        for (CaptureSourceInterface.CaptureSourceListener captureSourceListener : this.f32600a) {
            if (captureSourceListener != null) {
                captureSourceListener.onStartFinish(z10);
            }
        }
    }

    public final int a() {
        return this.f32600a.size();
    }
}
