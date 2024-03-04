package com.tencent.liteav.videoproducer.capture;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.capture.aj;
/* loaded from: classes4.dex */
public final class t extends CaptureSourceInterface {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    protected final Handler f32736a;

    /* renamed from: b  reason: collision with root package name */
    private final IVideoReporter f32737b;

    /* renamed from: c  reason: collision with root package name */
    private CaptureSourceInterface.CaptureSourceListener f32738c;

    /* renamed from: g  reason: collision with root package name */
    private CameraCaptureParams f32742g;

    /* renamed from: d  reason: collision with root package name */
    private boolean f32739d = true;

    /* renamed from: e  reason: collision with root package name */
    private boolean f32740e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f32741f = false;

    /* renamed from: h  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureSourceListener f32743h = new AnonymousClass1();

    public t(@NonNull IVideoReporter iVideoReporter, @NonNull Looper looper) {
        this.f32737b = iVideoReporter;
        this.f32736a = new CustomHandler(looper);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(t tVar) {
        tVar.f32738c = null;
        CameraCaptureSingleton.getInstance().removeListener(tVar.f32743h);
        tVar.f32739d = true;
        tVar.f32740e = false;
        tVar.f32741f = false;
        CameraCaptureSingleton.getInstance().stop();
    }

    static /* synthetic */ boolean h(t tVar) {
        tVar.f32741f = true;
        return true;
    }

    protected final void a(Runnable runnable) {
        if (this.f32736a != null) {
            if (Looper.myLooper() == this.f32736a.getLooper()) {
                runnable.run();
            } else {
                this.f32736a.post(runnable);
            }
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void pause() {
        LiteavLog.i("CameraCapturer", "pause");
        a(ab.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void resume() {
        LiteavLog.i("CameraCapturer", "resume");
        a(u.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void setCaptureCloudConfig(CaptureCloudConfig captureCloudConfig) {
        a(v.a(captureCloudConfig));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void start(Object obj, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener) {
        LiteavLog.i("CameraCapturer", "Start: ");
        a(y.a(this, captureParams, captureSourceListener, obj));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void stop() {
        LiteavLog.i("CameraCapturer", "Stop");
        a(z.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void updateParams(CaptureSourceInterface.CaptureParams captureParams) {
        LiteavLog.i("CameraCapturer", "updateParams");
        a(aa.a(this, captureParams));
    }

    public static Rotation b() {
        return CameraCaptureSingleton.getInstance().getCameraRotation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(t tVar) {
        if (tVar.f32739d) {
            return;
        }
        tVar.f32739d = true;
        CameraCaptureSingleton.getInstance().pause();
    }

    public static boolean a() {
        return !CameraCaptureSingleton.getInstance().isAutoFocusEnabled();
    }

    public final void a(int i9, int i10) {
        a(w.a(i9, i10));
    }

    public final void a(float f10) {
        LiteavLog.i("CameraCapturer", "setZoom: ".concat(String.valueOf(f10)));
        a(x.a(f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoproducer.capture.t$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass1 implements CaptureSourceInterface.CaptureSourceListener {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass1 anonymousClass1, PixelFrame pixelFrame) {
            if (t.this.f32739d) {
                pixelFrame.release();
            } else if (t.this.f32738c == null) {
                pixelFrame.release();
            } else {
                if (!t.this.f32741f) {
                    t.h(t.this);
                    t.this.f32738c.onCaptureFirstFrame();
                }
                t.this.f32738c.onFrameAvailable(t.this, pixelFrame);
                pixelFrame.release();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void b(AnonymousClass1 anonymousClass1, boolean z10) {
            if (t.this.f32738c != null) {
                t.this.f32738c.onCameraTouchEnable(z10);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void c(AnonymousClass1 anonymousClass1, boolean z10) {
            t.a(t.this, z10);
            if (t.this.f32738c != null) {
                t.this.f32738c.onStartFinish(z10);
            }
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onCameraTouchEnable(boolean z10) {
            t.this.a(af.a(this, z10));
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onCameraZoomEnable(boolean z10) {
            t.this.a(ag.a(this, z10));
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onCaptureError() {
            t.this.a(ae.a(this));
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onCaptureFirstFrame() {
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onFrameAvailable(CaptureSourceInterface captureSourceInterface, PixelFrame pixelFrame) {
            if (pixelFrame != null) {
                pixelFrame.retain();
            }
            t.this.a(ad.a(this, pixelFrame));
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onScreenDisplayOrientationChanged(boolean z10) {
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onStartFinish(boolean z10) {
            t.this.a(ac.a(this, z10));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass1 anonymousClass1) {
            if (t.this.f32737b != null) {
                t.this.f32737b.notifyError(h.a.ERR_VIDEO_CAPTURE_CAMERA_INVALID_DEVICE, "create EGLCore failed", new Object[0]);
            }
            if (t.this.f32738c != null) {
                t.this.f32738c.onCaptureError();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass1 anonymousClass1, boolean z10) {
            if (t.this.f32738c != null) {
                t.this.f32738c.onCameraZoomEnable(z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(t tVar, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener, Object obj) {
        tVar.f32739d = false;
        tVar.f32742g = new CameraCaptureParams((CameraCaptureParams) captureParams);
        tVar.f32738c = captureSourceListener;
        CameraCaptureSingleton.getInstance().start(obj, tVar.f32742g, tVar.f32743h);
        tVar.f32742g.f32476a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(t tVar, CaptureSourceInterface.CaptureParams captureParams) {
        tVar.f32742g = new CameraCaptureParams((CameraCaptureParams) captureParams);
        if (tVar.f32739d) {
            tVar.f32740e = true;
            return;
        }
        CameraCaptureSingleton.getInstance().updateParams(tVar.f32742g);
        tVar.f32742g.f32476a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(t tVar) {
        if (tVar.f32739d) {
            tVar.f32739d = false;
            if (tVar.f32740e) {
                tVar.f32740e = false;
                CameraCaptureSingleton.getInstance().updateParams(tVar.f32742g);
                tVar.f32742g.f32476a = null;
                return;
            }
            CameraCaptureSingleton.getInstance().resume();
        }
    }

    static /* synthetic */ void a(t tVar, boolean z10) {
        if (tVar.f32737b != null) {
            aj.a cameraAPIType = CameraCaptureSingleton.getInstance().getCameraAPIType();
            if (z10) {
                IVideoReporter iVideoReporter = tVar.f32737b;
                h.b bVar = h.b.EVT_VIDEO_CAPTURE_CAMERA_START_SUCCESS;
                iVideoReporter.notifyEvent(bVar, "cameraAPIType " + cameraAPIType + " params:" + tVar.f32742g, new Object[0]);
                return;
            }
            IVideoReporter iVideoReporter2 = tVar.f32737b;
            h.a aVar = h.a.ERR_VIDEO_CAPTURE_CAMERA_INVALID_DEVICE;
            iVideoReporter2.notifyError(aVar, "cameraAPIType " + cameraAPIType + " params:" + tVar.f32742g, new Object[0]);
        }
    }
}
