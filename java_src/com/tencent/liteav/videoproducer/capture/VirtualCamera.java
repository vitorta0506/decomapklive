package com.tencent.liteav.videoproducer.capture;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.TimeUtil;
import com.tencent.liteav.base.util.v;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import java.util.Locale;
/* loaded from: classes4.dex */
public final class VirtualCamera extends av {

    /* renamed from: f  reason: collision with root package name */
    private PixelFrame f32515f;

    /* renamed from: g  reason: collision with root package name */
    private com.tencent.liteav.base.util.v f32516g;

    /* renamed from: h  reason: collision with root package name */
    private VirtualCameraParams f32517h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f32518i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f32519j;

    /* renamed from: k  reason: collision with root package name */
    private final v.a f32520k;

    /* loaded from: classes4.dex */
    public static class VirtualCameraParams extends CaptureSourceInterface.CaptureParams {

        /* renamed from: a  reason: collision with root package name */
        public Bitmap f32522a;

        public VirtualCameraParams() {
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureParams
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof VirtualCameraParams) {
                return super.equals(obj) && com.tencent.liteav.base.util.h.a(this.f32522a, ((VirtualCameraParams) obj).f32522a);
            }
            return false;
        }

        @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureParams
        @NonNull
        public String toString() {
            Locale locale = Locale.ENGLISH;
            Object[] objArr = new Object[4];
            objArr[0] = super.toString();
            objArr[1] = Boolean.valueOf(this.f32522a != null);
            Bitmap bitmap = this.f32522a;
            objArr[2] = Integer.valueOf(bitmap != null ? bitmap.getWidth() : 0);
            Bitmap bitmap2 = this.f32522a;
            objArr[3] = Integer.valueOf(bitmap2 != null ? bitmap2.getHeight() : 0);
            return String.format(locale, "%s, hasBitmap:%b, w*h:%d*%d", objArr);
        }

        public VirtualCameraParams(VirtualCameraParams virtualCameraParams) {
            super(virtualCameraParams);
            this.f32522a = virtualCameraParams.f32522a;
        }
    }

    public VirtualCamera(@NonNull Looper looper, @NonNull IVideoReporter iVideoReporter) {
        super(looper, iVideoReporter);
        this.f32518i = true;
        this.f32519j = false;
        this.f32520k = new v.a() { // from class: com.tencent.liteav.videoproducer.capture.VirtualCamera.1
            @Override // com.tencent.liteav.base.util.v.a
            public final void onTimeout() {
                VirtualCamera virtualCamera = VirtualCamera.this;
                CaptureSourceInterface.CaptureSourceListener captureSourceListener = virtualCamera.f32604d;
                if (captureSourceListener == null || !virtualCamera.c()) {
                    return;
                }
                if (VirtualCamera.this.f32515f != null) {
                    VirtualCamera.this.f32515f.setTimestamp(TimeUtil.c());
                }
                VirtualCamera virtualCamera2 = VirtualCamera.this;
                captureSourceListener.onFrameAvailable(virtualCamera2, virtualCamera2.f32515f);
            }
        };
    }

    private void e() {
        if (this.f32603c == null) {
            LiteavLog.e("VirtualCameraImpl", "Start virtual camera, mEGLCore is null!");
        } else if (!this.f32518i) {
            LiteavLog.e("VirtualCameraImpl", "virtual camera is started.");
        } else {
            this.f32518i = false;
            VirtualCameraParams virtualCameraParams = this.f32517h;
            Bitmap bitmap = virtualCameraParams.f32522a;
            if (bitmap == null) {
                bitmap = Bitmap.createBitmap(Math.max((virtualCameraParams.f32482c / 2) * 2, 2), Math.max((this.f32517h.f32483d / 2) * 2, 2), Bitmap.Config.ARGB_8888);
                new Canvas(bitmap).drawARGB(255, 0, 0, 0);
            } else if (bitmap.getWidth() % 2 == 1 || bitmap.getHeight() % 2 == 1) {
                Bitmap createBitmap = Bitmap.createBitmap(Math.max((bitmap.getWidth() / 2) * 2, 2), Math.max((bitmap.getHeight() / 2) * 2, 2), bitmap.getConfig());
                Canvas canvas = new Canvas(createBitmap);
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
                bitmap = createBitmap;
            }
            LiteavLog.i("VirtualCameraImpl", "Start virtual camera, bitmap:" + bitmap.getWidth() + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + bitmap.getHeight());
            PixelFrame pixelFrame = new PixelFrame();
            this.f32515f = pixelFrame;
            pixelFrame.setPixelBufferType(GLConstants.PixelBufferType.TEXTURE_2D);
            this.f32515f.setPixelFormatType(GLConstants.PixelFormatType.RGBA);
            this.f32515f.setWidth(bitmap.getWidth());
            this.f32515f.setHeight(bitmap.getHeight());
            this.f32515f.setGLContext(this.f32603c.d());
            this.f32515f.setTextureId(OpenGlUtils.loadTexture(bitmap, -1, false));
            if (bitmap != this.f32517h.f32522a) {
                bitmap.recycle();
            }
            this.f32516g = new com.tencent.liteav.base.util.v(this.f32601a.getLooper(), this.f32520k);
            this.f32516g.a(0, 1000 / Math.max(this.f32517h.f32481b, 1));
        }
    }

    private void f() {
        LiteavLog.i("VirtualCameraImpl", "Stop virtual camera");
        com.tencent.liteav.base.util.v vVar = this.f32516g;
        if (vVar != null) {
            vVar.a();
            this.f32516g = null;
        }
        PixelFrame pixelFrame = this.f32515f;
        if (pixelFrame != null) {
            OpenGlUtils.deleteTexture(pixelFrame.getTextureId());
            this.f32515f = null;
        }
        this.f32518i = true;
    }

    @Override // com.tencent.liteav.videoproducer.capture.av
    protected final void b() {
        f();
        this.f32519j = false;
        this.f32602b.notifyEvent(h.b.EVT_VIDEO_CAPTURE_VIRTUAL_CAMERA_STOP_SUCCESS, "Stop virtual camera success", new Object[0]);
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void pause() {
        f();
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void resume() {
        e();
        if (this.f32519j) {
            this.f32519j = false;
            IVideoReporter iVideoReporter = this.f32602b;
            h.b bVar = h.b.EVT_VIDEO_CAPTURE_VIRTUAL_CAMERA_SIZE_CHANGE_SUCCESS;
            iVideoReporter.notifyEvent(bVar, "Start virtual camera success params:" + this.f32517h, new Object[0]);
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public final void updateParams(CaptureSourceInterface.CaptureParams captureParams) {
        this.f32517h = new VirtualCameraParams((VirtualCameraParams) captureParams);
        if (this.f32518i) {
            this.f32519j = true;
            return;
        }
        f();
        e();
        IVideoReporter iVideoReporter = this.f32602b;
        h.b bVar = h.b.EVT_VIDEO_CAPTURE_VIRTUAL_CAMERA_SIZE_CHANGE_SUCCESS;
        iVideoReporter.notifyEvent(bVar, "Start virtual camera success params:" + this.f32517h, new Object[0]);
    }

    @Override // com.tencent.liteav.videoproducer.capture.av
    protected final void a(CaptureSourceInterface.CaptureParams captureParams) {
        this.f32517h = new VirtualCameraParams((VirtualCameraParams) captureParams);
        e();
        IVideoReporter iVideoReporter = this.f32602b;
        h.b bVar = h.b.EVT_VIDEO_CAPTURE_VIRTUAL_CAMERA_START_SUCCESS;
        iVideoReporter.notifyEvent(bVar, "Start virtual camera success params:" + this.f32517h, new Object[0]);
    }
}
