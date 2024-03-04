package com.tencent.liteav.videoproducer.capture;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.projection.MediaProjection;
import android.os.Looper;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.v;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.capture.bi;
import com.tencent.ugc.UGCTransitionRules;
import java.util.Locale;
/* loaded from: classes4.dex */
public final class ScreenCapturer extends av implements SurfaceTexture.OnFrameAvailableListener, v.a, bi.b {
    private boolean A;

    /* renamed from: f  reason: collision with root package name */
    protected com.tencent.liteav.videobase.frame.l f32492f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f32493g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final IVideoReporter f32494h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final CustomHandler f32495i;

    /* renamed from: j  reason: collision with root package name */
    private int f32496j;

    /* renamed from: k  reason: collision with root package name */
    private int f32497k;

    /* renamed from: l  reason: collision with root package name */
    private final int f32498l;

    /* renamed from: m  reason: collision with root package name */
    private final int f32499m;

    /* renamed from: n  reason: collision with root package name */
    private final int f32500n;

    /* renamed from: o  reason: collision with root package name */
    private ScreenCaptureParams f32501o;

    /* renamed from: p  reason: collision with root package name */
    private int f32502p;

    /* renamed from: q  reason: collision with root package name */
    private SurfaceTexture f32503q;

    /* renamed from: r  reason: collision with root package name */
    private Surface f32504r;

    /* renamed from: s  reason: collision with root package name */
    private PixelFrame f32505s;

    /* renamed from: t  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f32506t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f32507u;

    /* renamed from: v  reason: collision with root package name */
    private com.tencent.liteav.videobase.utils.g f32508v;

    /* renamed from: w  reason: collision with root package name */
    private com.tencent.liteav.base.util.v f32509w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f32510x;

    /* renamed from: y  reason: collision with root package name */
    private MediaProjection f32511y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f32512z;

    /* loaded from: classes4.dex */
    public static class ScreenCaptureParams extends CaptureSourceInterface.CaptureParams {

        /* renamed from: a  reason: collision with root package name */
        public boolean f32513a;

        /* renamed from: f  reason: collision with root package name */
        public MediaProjection f32514f;

        public ScreenCaptureParams() {
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureParams
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof ScreenCaptureParams) {
                ScreenCaptureParams screenCaptureParams = (ScreenCaptureParams) obj;
                return super.equals(obj) && this.f32513a == screenCaptureParams.f32513a && this.f32514f == screenCaptureParams.f32514f;
            }
            return false;
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureParams
        @NonNull
        public String toString() {
            return String.format(Locale.ENGLISH, "%s, autoRotate: %b, mediaProjcetion: %s", super.toString(), Boolean.valueOf(this.f32513a), this.f32514f);
        }

        public ScreenCaptureParams(ScreenCaptureParams screenCaptureParams) {
            super(screenCaptureParams);
            this.f32513a = screenCaptureParams.f32513a;
            this.f32514f = screenCaptureParams.f32514f;
        }
    }

    public ScreenCapturer(@NonNull Context context, @NonNull Looper looper, @NonNull IVideoReporter iVideoReporter) {
        super(looper, iVideoReporter);
        this.f32496j = UGCTransitionRules.DEFAULT_IMAGE_WIDTH;
        this.f32497k = 1080;
        this.f32502p = -1;
        this.f32507u = false;
        this.f32510x = false;
        this.f32512z = true;
        this.A = false;
        Context applicationContext = context.getApplicationContext();
        this.f32493g = applicationContext;
        this.f32494h = iVideoReporter;
        this.f32495i = new CustomHandler(Looper.getMainLooper());
        com.tencent.liteav.base.util.q a10 = com.tencent.liteav.base.util.t.a(applicationContext);
        int i9 = a10.f31029a;
        this.f32498l = i9;
        int i10 = a10.f31030b;
        this.f32499m = i10;
        this.f32500n = com.tencent.liteav.base.util.t.b(applicationContext);
        this.f32496j = i9;
        this.f32497k = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(ScreenCapturer screenCapturer) {
        LiteavLog.i("ScreenCapturer", "resume capture");
        if (screenCapturer.f32507u) {
            screenCapturer.f32494h.notifyEvent(h.b.EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_RESUME, "screen capture has been resumed", new Object[0]);
        }
        screenCapturer.f32507u = false;
        com.tencent.liteav.videobase.utils.g gVar = screenCapturer.f32508v;
        if (gVar != null) {
            gVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(ScreenCapturer screenCapturer) {
        LiteavLog.i("ScreenCapturer", "pause capture");
        if (!screenCapturer.f32507u) {
            screenCapturer.f32494h.notifyEvent(h.b.EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_INTERRUPTED, "screen capture has been interrupted", new Object[0]);
        }
        screenCapturer.f32507u = true;
    }

    private void f() {
        if (this.f32492f == null) {
            this.f32492f = new com.tencent.liteav.videobase.frame.l();
        }
        if (this.f32496j == 0 || this.f32497k == 0) {
            ScreenCaptureParams screenCaptureParams = this.f32501o;
            this.f32496j = screenCaptureParams.f32482c;
            this.f32497k = screenCaptureParams.f32483d;
        }
        if (this.f32501o.f32513a) {
            h();
        } else {
            g();
        }
        this.f32502p = OpenGlUtils.generateTextureOES();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f32502p);
        this.f32503q = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        this.f32503q.setDefaultBufferSize(this.f32496j, this.f32497k);
        this.f32504r = new Surface(this.f32503q);
        bi.a(this.f32493g).a(this.f32504r, this.f32496j, this.f32497k, this.f32511y, this);
        LiteavLog.i("ScreenCapturer", "Start virtual display, size: %dx%d", Integer.valueOf(this.f32496j), Integer.valueOf(this.f32497k));
        PixelFrame pixelFrame = new PixelFrame();
        this.f32505s = pixelFrame;
        pixelFrame.setPixelFormatType(GLConstants.PixelFormatType.RGBA);
        this.f32505s.setPixelBufferType(GLConstants.PixelBufferType.TEXTURE_OES);
        this.f32505s.setTextureId(this.f32502p);
        this.f32505s.setWidth(this.f32496j);
        this.f32505s.setHeight(this.f32497k);
        this.f32505s.setMatrix(new float[16]);
    }

    private void g() {
        ScreenCaptureParams screenCaptureParams = this.f32501o;
        boolean z10 = screenCaptureParams.f32482c > screenCaptureParams.f32483d;
        int i9 = this.f32496j;
        int i10 = this.f32497k;
        if (z10 != (i9 > i10)) {
            com.tencent.liteav.base.util.q qVar = new com.tencent.liteav.base.util.q(i9, i10);
            this.f32496j = qVar.f31030b;
            this.f32497k = qVar.f31029a;
            LiteavLog.i("ScreenCapturer", "Change device screen  " + qVar + " to " + new com.tencent.liteav.base.util.q(this.f32496j, this.f32497k));
        }
    }

    private void h() {
        int b10 = com.tencent.liteav.base.util.t.b(this.f32493g);
        boolean z10 = false;
        boolean z11 = b10 == 0 || b10 == 2;
        int i9 = this.f32500n;
        if (z11 != ((i9 == 0 || i9 == 2) ? true : true)) {
            this.f32496j = this.f32499m;
            this.f32497k = this.f32498l;
        } else {
            this.f32496j = this.f32498l;
            this.f32497k = this.f32499m;
        }
        LiteavLog.i("ScreenCapturer", "updateDeviceScreenSize original screen width:" + this.f32498l + " height:" + this.f32499m + " rotation:" + this.f32500n + " final width:" + this.f32496j + " height:" + this.f32497k + " rotation:" + b10);
    }

    private void i() {
        this.f32511y = null;
        bi.a(this.f32493g).a(this.f32504r);
        Surface surface = this.f32504r;
        if (surface != null) {
            surface.release();
            this.f32504r = null;
        }
        if (!c()) {
            LiteavLog.w("ScreenCapturer", "makeCurrent error!");
            d();
            return;
        }
        com.tencent.liteav.videobase.frame.l lVar = this.f32492f;
        if (lVar != null) {
            lVar.b();
            this.f32492f = null;
        }
        com.tencent.liteav.videobase.frame.j jVar = this.f32506t;
        if (jVar != null) {
            jVar.a();
            this.f32506t = null;
        }
        SurfaceTexture surfaceTexture = this.f32503q;
        if (surfaceTexture != null) {
            surfaceTexture.setOnFrameAvailableListener(null);
            this.f32503q.release();
            this.f32503q = null;
        }
        OpenGlUtils.deleteTexture(this.f32502p);
        this.f32502p = -1;
        com.tencent.liteav.base.util.v vVar = this.f32509w;
        if (vVar != null) {
            vVar.a();
            this.f32509w = null;
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.av
    protected final void a(CaptureSourceInterface.CaptureParams captureParams) {
        if (!this.f32512z) {
            LiteavLog.e("ScreenCapturer", "Start capture %s, capturer already started", captureParams);
        } else if (this.f32603c == null) {
            LiteavLog.e("ScreenCapturer", "Start capture %s, mEGLCore is null", captureParams);
            a(false);
        } else {
            LiteavLog.i("ScreenCapturer", "Start capture %s", captureParams);
            ScreenCaptureParams screenCaptureParams = new ScreenCaptureParams((ScreenCaptureParams) captureParams);
            this.f32501o = screenCaptureParams;
            this.f32511y = screenCaptureParams.f32514f;
            if (!c()) {
                IVideoReporter iVideoReporter = this.f32494h;
                h.a aVar = h.a.ERR_VIDEO_CAPTURE_SCREEN_CAPTURE_START_FAILED;
                iVideoReporter.notifyError(aVar, "Start screen capture failed, params:" + this.f32501o, new Object[0]);
                a(false);
                return;
            }
            f();
            this.f32512z = false;
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.av
    protected final void b() {
        if (this.f32512z) {
            LiteavLog.i("ScreenCapturer", "Stop capture, capturer already stopped");
            return;
        }
        LiteavLog.i("ScreenCapturer", "Stop capture");
        i();
        this.f32494h.notifyEvent(h.b.EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_STOP_SUCCESS, "Stop screen capture success", new Object[0]);
        this.f32512z = true;
        this.A = false;
    }

    @Override // com.tencent.liteav.videoproducer.capture.bi.b
    public final void e() {
        a(bg.a(this));
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        a(be.a(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003f  */
    @Override // com.tencent.liteav.base.util.v.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onTimeout() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.capture.ScreenCapturer.onTimeout():void");
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void pause() {
        a(bc.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void resume() {
        a(bd.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.capture.av, com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void stop() {
        b(ba.a(this));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void updateParams(CaptureSourceInterface.CaptureParams captureParams) {
        a(bb.a(this, captureParams));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ScreenCapturer screenCapturer) {
        if (screenCapturer.f32503q == null) {
            return;
        }
        screenCapturer.f32508v = new com.tencent.liteav.videobase.utils.g(screenCapturer.f32501o.f32481b);
        com.tencent.liteav.base.util.v vVar = new com.tencent.liteav.base.util.v(screenCapturer.f32601a.getLooper(), screenCapturer);
        screenCapturer.f32509w = vVar;
        vVar.a(0, 5);
        screenCapturer.f32503q.setOnFrameAvailableListener(null);
        screenCapturer.f32506t = new com.tencent.liteav.videobase.frame.j(screenCapturer.f32496j, screenCapturer.f32497k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ScreenCapturer screenCapturer, CaptureSourceInterface.CaptureParams captureParams) {
        ScreenCaptureParams screenCaptureParams = screenCapturer.f32501o;
        if (screenCaptureParams != null && screenCaptureParams.equals(captureParams)) {
            LiteavLog.i("ScreenCapturer", "updateParams %s is the same ", captureParams);
            return;
        }
        LiteavLog.i("ScreenCapturer", "updateParams change from %s to %s", screenCapturer.f32501o, captureParams);
        ScreenCaptureParams screenCaptureParams2 = new ScreenCaptureParams((ScreenCaptureParams) captureParams);
        screenCapturer.f32501o = screenCaptureParams2;
        if (screenCapturer.f32503q == null) {
            LiteavLog.e("ScreenCapturer", "capturer not started");
            return;
        }
        screenCapturer.f32511y = screenCaptureParams2.f32514f;
        screenCapturer.i();
        screenCapturer.f();
    }

    @Override // com.tencent.liteav.videoproducer.capture.bi.b
    public final void b(boolean z10) {
        a(bh.a(this, z10));
    }

    @Override // com.tencent.liteav.videoproducer.capture.bi.b
    public final void a(boolean z10, boolean z11) {
        a(bf.a(this, z10, z11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ScreenCapturer screenCapturer, boolean z10, boolean z11) {
        LiteavLog.i("ScreenCapturer", "on Start finish, success: %b, isPermissionDenied: %b", Boolean.valueOf(z10), Boolean.valueOf(z11));
        screenCapturer.a(z10);
        if (z10) {
            if (screenCapturer.f32510x) {
                return;
            }
            screenCapturer.f32510x = true;
            IVideoReporter iVideoReporter = screenCapturer.f32494h;
            h.b bVar = h.b.EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_START_SUCCESS;
            iVideoReporter.notifyEvent(bVar, "Start screen capture success params:" + screenCapturer.f32501o, new Object[0]);
        } else if (z11) {
            IVideoReporter iVideoReporter2 = screenCapturer.f32494h;
            h.a aVar = h.a.ERR_VIDEO_CAPTURE_SCREEN_UNAUTHORIZED;
            iVideoReporter2.notifyError(aVar, "permission denied, Start screen capture failed, params:" + screenCapturer.f32501o, new Object[0]);
        } else {
            IVideoReporter iVideoReporter3 = screenCapturer.f32494h;
            h.a aVar2 = h.a.ERR_VIDEO_CAPTURE_SCREEN_CAPTURE_START_FAILED;
            iVideoReporter3.notifyError(aVar2, "Start screen capture failed, params:" + screenCapturer.f32501o, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ScreenCapturer screenCapturer) {
        LiteavLog.e("ScreenCapturer", "capture error");
        CaptureSourceInterface.CaptureSourceListener captureSourceListener = screenCapturer.f32604d;
        if (captureSourceListener != null) {
            captureSourceListener.onCaptureError();
        }
        screenCapturer.f32494h.notifyEvent(h.b.EVT_VIDEO_CAPTURE_SCREEN_CAPTURE_INTERRUPTED, "screen capture has been interrupted", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ScreenCapturer screenCapturer, boolean z10) {
        LiteavLog.d("ScreenCapturer", "display orientation changed, isPortrait: %b", Boolean.valueOf(z10));
        if (screenCapturer.f32512z || !screenCapturer.f32501o.f32513a) {
            return;
        }
        screenCapturer.i();
        screenCapturer.f();
        CaptureSourceInterface.CaptureSourceListener captureSourceListener = screenCapturer.f32604d;
        if (captureSourceListener != null) {
            captureSourceListener.onScreenDisplayOrientationChanged(z10);
        }
    }
}
