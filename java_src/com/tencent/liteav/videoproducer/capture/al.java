package com.tencent.liteav.videoproducer.capture;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.f;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.capture.ScreenCapturer;
import com.tencent.liteav.videoproducer.capture.VirtualCamera;
/* loaded from: classes4.dex */
public final class al extends CaptureSourceInterface {

    /* renamed from: a  reason: collision with root package name */
    public CaptureSourceInterface f32564a;

    /* renamed from: b  reason: collision with root package name */
    private VirtualCamera f32565b;

    /* renamed from: c  reason: collision with root package name */
    private VirtualCamera.VirtualCameraParams f32566c;

    /* renamed from: d  reason: collision with root package name */
    private CaptureSourceInterface.CaptureParams f32567d;

    /* renamed from: e  reason: collision with root package name */
    private CaptureSourceInterface.CaptureSourceListener f32568e;

    /* renamed from: f  reason: collision with root package name */
    private final Looper f32569f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f32570g;

    /* renamed from: h  reason: collision with root package name */
    private final IVideoReporter f32571h;

    /* renamed from: i  reason: collision with root package name */
    private Object f32572i;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final CustomHandler f32574k;

    /* renamed from: j  reason: collision with root package name */
    private boolean f32573j = false;

    /* renamed from: l  reason: collision with root package name */
    private a f32575l = a.STOPED;

    /* renamed from: m  reason: collision with root package name */
    private boolean f32576m = false;

    /* renamed from: o  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureSourceListener f32578o = new AnonymousClass1();

    /* renamed from: n  reason: collision with root package name */
    private final com.tencent.liteav.videobase.utils.f f32577n = new com.tencent.liteav.videobase.utils.f("CaptureController", 1000, new f.a(this) { // from class: com.tencent.liteav.videoproducer.capture.am

        /* renamed from: a  reason: collision with root package name */
        private final al f32584a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f32584a = this;
        }

        @Override // com.tencent.liteav.videobase.utils.f.a
        public final void a(double d10) {
            this.f32584a.f32571h.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_CAPTURE_REAL_FRAME_RATE, Double.valueOf(d10));
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoproducer.capture.al$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass1 implements CaptureSourceInterface.CaptureSourceListener {
        AnonymousClass1() {
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onCameraTouchEnable(boolean z10) {
            if (al.this.f32568e != null) {
                al.this.f32568e.onCameraTouchEnable(z10);
            }
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onCameraZoomEnable(boolean z10) {
            if (al.this.f32568e != null) {
                al.this.f32568e.onCameraZoomEnable(z10);
            }
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onCaptureError() {
            if (al.this.f32568e != null) {
                al.this.f32568e.onCaptureError();
            }
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onCaptureFirstFrame() {
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onFrameAvailable(CaptureSourceInterface captureSourceInterface, PixelFrame pixelFrame) {
            if (!al.this.f32576m) {
                al.f(al.this);
                LiteavLog.i("CaptureController", "CaptureController received first frame.");
            }
            if (pixelFrame != null) {
                al.this.a(at.a(this));
            }
            if (al.this.f32568e != null) {
                al.this.f32568e.onFrameAvailable(al.this, pixelFrame);
            }
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onScreenDisplayOrientationChanged(boolean z10) {
            if (al.this.f32568e != null) {
                al.this.f32568e.onScreenDisplayOrientationChanged(z10);
            }
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
        public final void onStartFinish(boolean z10) {
            if (al.this.f32568e != null) {
                al.this.f32568e.onStartFinish(z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum a {
        STOPED,
        STARTED,
        PAUSED
    }

    public al(@NonNull Context context, @NonNull Looper looper, @NonNull IVideoReporter iVideoReporter) {
        this.f32570g = context.getApplicationContext();
        this.f32569f = looper;
        this.f32571h = iVideoReporter;
        this.f32574k = new CustomHandler(looper);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(al alVar) {
        if (alVar.f32575l != a.PAUSED) {
            LiteavLog.w("CaptureController", "resume capture but mStatus is " + alVar.f32575l);
            return;
        }
        alVar.f32575l = a.STARTED;
        VirtualCamera virtualCamera = alVar.f32565b;
        if (virtualCamera != null) {
            virtualCamera.stop();
            alVar.f32565b = null;
        }
        CaptureSourceInterface captureSourceInterface = alVar.f32564a;
        if (captureSourceInterface != null) {
            captureSourceInterface.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(al alVar) {
        if (alVar.f32575l != a.STARTED) {
            LiteavLog.w("CaptureController", "pause capture but mStatus is " + alVar.f32575l);
            return;
        }
        alVar.f32575l = a.PAUSED;
        CaptureSourceInterface captureSourceInterface = alVar.f32564a;
        if (captureSourceInterface != null) {
            captureSourceInterface.pause();
        }
        if (alVar.f32573j) {
            if (alVar.f32566c == null) {
                CaptureSourceInterface.CaptureParams captureParams = alVar.f32567d;
                alVar.a((Bitmap) null, 5, captureParams.f32482c, captureParams.f32483d);
            } else {
                alVar.f32565b = new VirtualCamera(alVar.f32569f, alVar.f32571h);
            }
            VirtualCamera virtualCamera = alVar.f32565b;
            if (virtualCamera != null) {
                virtualCamera.start(alVar.f32572i, alVar.f32566c, alVar.f32578o);
                return;
            }
            return;
        }
        alVar.f32577n.b();
    }

    static /* synthetic */ boolean f(al alVar) {
        alVar.f32576m = true;
        return true;
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void pause() {
        LiteavLog.i("CaptureController", "pause");
        a(ap.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void resume() {
        LiteavLog.i("CaptureController", "resume");
        a(aq.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void setCaptureCloudConfig(CaptureCloudConfig captureCloudConfig) {
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void start(Object obj, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener) {
        LiteavLog.i("CaptureController", "Start params = " + captureParams.toString() + ", glContext=" + obj);
        a(ao.a(this, captureParams, captureSourceListener, obj));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void stop() {
        LiteavLog.i("CaptureController", "Stop");
        a(ar.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void updateParams(CaptureSourceInterface.CaptureParams captureParams) {
        a(as.a(this, captureParams));
    }

    public final void a(Bitmap bitmap, int i9, int i10, int i11) {
        LiteavLog.i("CaptureController", "setVirtualCameraParams fps = " + i9 + ",width=" + i10 + ",height=" + i11 + ",bm=" + bitmap);
        a(an.a(this, bitmap, i9, i11, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(al alVar, Bitmap bitmap, int i9, int i10, int i11) {
        VirtualCamera.VirtualCameraParams virtualCameraParams = new VirtualCamera.VirtualCameraParams();
        alVar.f32566c = virtualCameraParams;
        virtualCameraParams.f32522a = bitmap;
        virtualCameraParams.f32481b = i9;
        virtualCameraParams.f32483d = i10;
        virtualCameraParams.f32482c = i11;
        VirtualCamera virtualCamera = alVar.f32565b;
        if (virtualCamera != null) {
            virtualCamera.stop();
        }
        alVar.f32565b = new VirtualCamera(alVar.f32569f, alVar.f32571h);
        alVar.f32573j = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(al alVar, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener, Object obj) {
        if (alVar.f32575l != a.STOPED) {
            LiteavLog.w("CaptureController", "Start capture but mStatus is " + alVar.f32575l);
            return;
        }
        alVar.f32577n.b();
        alVar.f32575l = a.STARTED;
        if (captureParams instanceof CameraCaptureParams) {
            alVar.f32564a = new t(alVar.f32571h, alVar.f32569f);
        } else if (captureParams instanceof ScreenCapturer.ScreenCaptureParams) {
            alVar.f32564a = new ScreenCapturer(alVar.f32570g, alVar.f32569f, alVar.f32571h);
        } else {
            LiteavLog.w("CaptureController", "initCaptureSource： param is VirtualCameraParams");
        }
        alVar.f32568e = captureSourceListener;
        alVar.f32567d = captureParams;
        alVar.f32572i = obj;
        CaptureSourceInterface captureSourceInterface = alVar.f32564a;
        if (captureSourceInterface != null) {
            captureSourceInterface.start(obj, captureParams, alVar.f32578o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(al alVar) {
        a aVar = alVar.f32575l;
        a aVar2 = a.STOPED;
        if (aVar == aVar2) {
            LiteavLog.w("CaptureController", "Stop capture but mStatus is stoped");
            return;
        }
        alVar.f32575l = aVar2;
        CaptureSourceInterface captureSourceInterface = alVar.f32564a;
        if (captureSourceInterface != null) {
            captureSourceInterface.stop();
            alVar.f32564a = null;
        }
        VirtualCamera virtualCamera = alVar.f32565b;
        if (virtualCamera != null) {
            virtualCamera.stop();
            alVar.f32565b = null;
        }
        alVar.f32576m = false;
        alVar.f32577n.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(al alVar, CaptureSourceInterface.CaptureParams captureParams) {
        VirtualCamera virtualCamera;
        CaptureSourceInterface captureSourceInterface = alVar.f32564a;
        if (captureSourceInterface == null) {
            return;
        }
        alVar.f32567d = captureParams;
        a aVar = alVar.f32575l;
        if (aVar == a.STARTED) {
            captureSourceInterface.updateParams(captureParams);
        } else if (aVar == a.PAUSED) {
            captureSourceInterface.updateParams(captureParams);
            if (!alVar.f32573j || (virtualCamera = alVar.f32565b) == null) {
                return;
            }
            virtualCamera.updateParams(alVar.f32567d);
        }
    }

    protected final void a(Runnable runnable) {
        if (Looper.myLooper() == this.f32574k.getLooper()) {
            runnable.run();
        } else {
            this.f32574k.post(runnable);
        }
    }
}
