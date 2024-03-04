package com.tencent.liteav.videoproducer.capture;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* loaded from: classes4.dex */
public abstract class av extends CaptureSourceInterface {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    protected final CustomHandler f32601a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    protected final IVideoReporter f32602b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    protected com.tencent.liteav.videobase.b.e f32603c;

    /* renamed from: d  reason: collision with root package name */
    protected CaptureSourceInterface.CaptureSourceListener f32604d;

    /* renamed from: e  reason: collision with root package name */
    protected com.tencent.liteav.videobase.frame.e f32605e;

    /* renamed from: f  reason: collision with root package name */
    private final com.tencent.liteav.base.b.b f32606f = new com.tencent.liteav.base.b.b();

    public av(@NonNull Looper looper, @NonNull IVideoReporter iVideoReporter) {
        this.f32601a = new CustomHandler(looper);
        this.f32602b = iVideoReporter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(av avVar, CaptureSourceInterface.CaptureSourceListener captureSourceListener, Object obj, CaptureSourceInterface.CaptureParams captureParams) {
        if (avVar.f32603c != null) {
            LiteavLog.e("GLCapturerSource", "capture source has already started!");
            return;
        }
        avVar.f32604d = captureSourceListener;
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        avVar.f32603c = eVar;
        try {
            eVar.a(obj, null, 128, 128);
            avVar.f32603c.a();
            avVar.f32605e = new com.tencent.liteav.videobase.frame.e();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e("GLCapturerSource", "initializeEGL failed.", e10);
            IVideoReporter iVideoReporter = avVar.f32602b;
            h.a aVar = h.a.ERR_VIDEO_CAPTURE_EGL_CORE_CREATE_FAILED;
            iVideoReporter.notifyError(aVar, "create EGLCore failed, errorCode:" + e10.mErrorCode, new Object[0]);
            avVar.f32603c = null;
        }
        avVar.a(captureParams);
    }

    protected abstract void a(CaptureSourceInterface.CaptureParams captureParams);

    protected abstract void b();

    public final void b(Runnable runnable) {
        if (this.f32601a.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.f32601a.a(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean c() {
        com.tencent.liteav.videobase.b.e eVar = this.f32603c;
        if (eVar == null) {
            LiteavLog.e(this.f32606f.a("makeCurrentNull"), "GLCapturerSource", "makeCurrent on mEGLCore is null", new Object[0]);
            return false;
        }
        try {
            eVar.a();
            return true;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.f32606f.a("makeCurrentError"), "GLCapturerSource", "make current failed.", e10);
            IVideoReporter iVideoReporter = this.f32602b;
            h.a aVar = h.a.ERR_VIDEO_CAPTURE_OPENGL_ERROR;
            iVideoReporter.notifyError(aVar, "OpenGL report error, errorCode:" + e10.mErrorCode, new Object[0]);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        CaptureSourceInterface.CaptureSourceListener captureSourceListener = this.f32604d;
        if (captureSourceListener != null) {
            captureSourceListener.onCaptureError();
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public void setCaptureCloudConfig(CaptureCloudConfig captureCloudConfig) {
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public void start(Object obj, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener) {
        a(aw.a(this, captureSourceListener, obj, captureParams));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public void stop() {
        a(ax.a(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        b();
        com.tencent.liteav.videobase.b.e eVar = this.f32603c;
        if (eVar != null) {
            try {
                eVar.a();
                com.tencent.liteav.videobase.frame.e eVar2 = this.f32605e;
                if (eVar2 != null) {
                    eVar2.b();
                    this.f32605e = null;
                }
            } catch (com.tencent.liteav.videobase.b.g e10) {
                LiteavLog.e(this.f32606f.a("unintError"), "GLCapturerSource", "EGLCore destroy failed.", e10);
            }
            com.tencent.liteav.videobase.b.e.a(this.f32603c);
            this.f32603c = null;
        }
        this.f32604d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Runnable runnable) {
        if (this.f32601a.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.f32601a.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(boolean z10) {
        CaptureSourceInterface.CaptureSourceListener captureSourceListener = this.f32604d;
        if (captureSourceListener != null) {
            captureSourceListener.onStartFinish(z10);
        }
    }
}
