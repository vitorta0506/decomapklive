package com.tencent.liteav.videoproducer.producer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.TimeUtil;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.common.SnapshotSourceType;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderInterface;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
import com.tencent.liteav.videoproducer.capture.CameraCaptureParams;
import com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.capture.ScreenCapturer;
import com.tencent.liteav.videoproducer.capture.VirtualCamera;
import com.tencent.liteav.videoproducer.capture.ay;
import com.tencent.liteav.videoproducer.encoder.EncodeAbilityProvider;
import com.tencent.liteav.videoproducer.encoder.VideoEncodeParams;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.preprocessor.BeautyProcessor;
import com.tencent.liteav.videoproducer.preprocessor.VideoPreprocessor;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
import com.tencent.liteav.videoproducer.producer.d;
import com.tencent.liteav.videoproducer.producer.e;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4.dex */
public final class f implements CaptureSourceInterface.CaptureSourceListener, com.tencent.liteav.videoproducer.preprocessor.ah, d.a, com.tencent.rtmp.ui.a, com.tencent.rtmp.ui.b {
    @NonNull
    private final ConcurrentHashMap<VideoProducerDef.StreamType, com.tencent.liteav.videoproducer.encoder.ah> A;
    private DisplayTarget B;
    private Rotation C;
    private GLConstants.MirrorMode D;
    private GLConstants.GLScaleType E;
    private volatile VideoRenderListener F;
    private VideoRenderInterface G;
    private final VideoRenderListener H;
    private VideoRenderInterface I;
    private final VideoRenderListener J;
    private a K;
    private final com.tencent.liteav.base.util.q L;
    private final com.tencent.liteav.base.util.q M;
    private final e N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private final com.tencent.liteav.base.util.q R;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final IVideoReporter f33266b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final VideoPreprocessor f33267c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    final BeautyProcessor f33268d;

    /* renamed from: e  reason: collision with root package name */
    CustomHandler f33269e;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final Context f33271g;

    /* renamed from: i  reason: collision with root package name */
    private com.tencent.liteav.videobase.b.e f33273i;

    /* renamed from: k  reason: collision with root package name */
    private ServerVideoProducerConfig f33275k;

    /* renamed from: m  reason: collision with root package name */
    private Rotation f33277m;

    /* renamed from: n  reason: collision with root package name */
    private int f33278n;

    /* renamed from: o  reason: collision with root package name */
    private d f33279o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f33280p;

    /* renamed from: q  reason: collision with root package name */
    private volatile CaptureSourceInterface.SourceType f33281q;

    /* renamed from: r  reason: collision with root package name */
    private CaptureSourceInterface f33282r;

    /* renamed from: s  reason: collision with root package name */
    private CaptureSourceInterface.CaptureParams f33283s;

    /* renamed from: t  reason: collision with root package name */
    private final ax f33284t;

    /* renamed from: u  reason: collision with root package name */
    private PixelFrame f33285u;

    /* renamed from: v  reason: collision with root package name */
    private final ConcurrentHashMap<VideoProducerDef.StreamType, GLConstants.Orientation> f33286v;

    /* renamed from: w  reason: collision with root package name */
    private Rotation f33287w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f33288x;

    /* renamed from: y  reason: collision with root package name */
    private JSONArray f33289y;

    /* renamed from: z  reason: collision with root package name */
    private final Map<VideoProducerDef.StreamType, VideoEncoderDef.EncodeStrategy> f33290z;

    /* renamed from: a  reason: collision with root package name */
    String f33265a = "VideoProducer";
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final com.tencent.liteav.base.b.b f33272h = new com.tencent.liteav.base.b.b();

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f33270f = false;

    /* renamed from: j  reason: collision with root package name */
    private Object f33274j = null;

    /* renamed from: l  reason: collision with root package name */
    private VideoProducerDef.GSensorMode f33276l = VideoProducerDef.GSensorMode.UI_FIX_LAYOUT;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoproducer.producer.f$4  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33293a;

        static {
            int[] iArr = new int[VideoProducerDef.HomeOrientation.values().length];
            f33293a = iArr;
            try {
                iArr[VideoProducerDef.HomeOrientation.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33293a[VideoProducerDef.HomeOrientation.UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33293a[VideoProducerDef.HomeOrientation.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33293a[VideoProducerDef.HomeOrientation.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33293a[VideoProducerDef.HomeOrientation.UNSET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public f(@NonNull Context context, boolean z10, @NonNull IVideoReporter iVideoReporter) {
        Rotation rotation = Rotation.NORMAL;
        this.f33277m = rotation;
        this.f33278n = 0;
        this.f33280p = false;
        this.f33281q = CaptureSourceInterface.SourceType.NONE;
        this.f33287w = rotation;
        this.f33288x = false;
        this.f33289y = null;
        this.f33290z = new HashMap<VideoProducerDef.StreamType, VideoEncoderDef.EncodeStrategy>() { // from class: com.tencent.liteav.videoproducer.producer.f.1
            {
                VideoProducerDef.StreamType streamType = VideoProducerDef.StreamType.STREAM_TYPE_BIG_VIDEO;
                VideoEncoderDef.EncodeStrategy encodeStrategy = VideoEncoderDef.EncodeStrategy.PREFER_HARDWARE;
                put(streamType, encodeStrategy);
                put(VideoProducerDef.StreamType.STREAM_TYPE_SMALL_VIDEO, VideoEncoderDef.EncodeStrategy.USE_SOFTWARE_ONLY);
                put(VideoProducerDef.StreamType.STREAM_TYPE_SUB_VIDEO, encodeStrategy);
            }
        };
        this.C = rotation;
        this.D = GLConstants.MirrorMode.AUTO;
        this.E = GLConstants.GLScaleType.CENTER_CROP;
        this.G = null;
        this.H = new VideoRenderListener() { // from class: com.tencent.liteav.videoproducer.producer.f.2
            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onFocusAtPoint(int i9, int i10, int i11, int i12) {
            }

            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onRenderFirstFrameOnView(int i9, int i10) {
            }

            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onRenderFrame(PixelFrame pixelFrame) {
                f.this.a(pixelFrame);
            }

            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onRenderTargetSizeChanged(int i9, int i10) {
            }

            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onZoom(float f10) {
            }
        };
        this.I = null;
        this.J = new VideoRenderListener() { // from class: com.tencent.liteav.videoproducer.producer.f.3
            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onFocusAtPoint(int i9, int i10, int i11, int i12) {
            }

            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onRenderFirstFrameOnView(int i9, int i10) {
            }

            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onRenderFrame(PixelFrame pixelFrame) {
                f.b(f.this, pixelFrame);
            }

            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onRenderTargetSizeChanged(int i9, int i10) {
            }

            @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
            public final void onZoom(float f10) {
            }
        };
        this.L = new com.tencent.liteav.base.util.q();
        this.M = new com.tencent.liteav.base.util.q();
        this.N = new e();
        this.O = false;
        this.P = false;
        this.Q = false;
        this.R = new com.tencent.liteav.base.util.q(0, 0);
        this.f33271g = context;
        this.f33266b = iVideoReporter;
        BeautyProcessor beautyProcessor = new BeautyProcessor(context, z10, iVideoReporter);
        this.f33268d = beautyProcessor;
        this.f33267c = new VideoPreprocessor(context, beautyProcessor, iVideoReporter);
        this.A = new ConcurrentHashMap<>();
        this.f33286v = new ConcurrentHashMap<>();
        this.f33284t = new ax(context);
        this.f33265a += "_" + hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(f fVar) {
        LiteavLog.i(fVar.f33265a, "uninitialize");
        fVar.b();
        for (com.tencent.liteav.videoproducer.encoder.ah ahVar : fVar.A.values()) {
            if (ahVar != null) {
                ahVar.c();
                ahVar.d();
                ahVar.b();
            }
        }
        fVar.A.clear();
        fVar.f33284t.b(new com.tencent.liteav.base.util.q());
        synchronized (fVar) {
            if (!fVar.f33270f) {
                LiteavLog.w(fVar.f33265a, "videoproducer already uninitialize.");
                return;
            }
            CustomHandler customHandler = fVar.f33269e;
            fVar.f33269e = null;
            fVar.f33270f = false;
            fVar.f33267c.uninitialize();
            fVar.G = null;
            fVar.I = null;
            fVar.e();
            if (customHandler != null) {
                customHandler.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(f fVar) {
        fVar.f33267c.initialize();
        fVar.G = new com.tencent.liteav.videoconsumer.renderer.p(fVar.f33269e.getLooper(), fVar.f33266b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(f fVar, boolean z10) {
        if (fVar.f33288x == z10) {
            return;
        }
        String str = fVar.f33265a;
        LiteavLog.i(str, "setEncodeMirrorEnabled : " + z10 + ", old is " + fVar.f33288x);
        fVar.f33288x = z10;
        fVar.h();
    }

    private void e() {
        LiteavLog.i(this.f33272h.a("uninitGL"), this.f33265a, "uninitOpenGLComponents", new Object[0]);
        com.tencent.liteav.videobase.b.e.a(this.f33273i);
        this.f33273i = null;
        this.f33267c.uninitializeGLComponents();
    }

    private void f() {
        int i9 = ((360 - this.f33278n) + this.C.mValue) % 360;
        for (VideoRenderInterface videoRenderInterface : g()) {
            if (videoRenderInterface != null) {
                videoRenderInterface.setRenderRotation(Rotation.a(i9));
            }
        }
    }

    private List<VideoRenderInterface> g() {
        ArrayList arrayList = new ArrayList();
        VideoRenderInterface videoRenderInterface = this.G;
        if (videoRenderInterface != null) {
            arrayList.add(videoRenderInterface);
        }
        VideoRenderInterface videoRenderInterface2 = this.I;
        if (videoRenderInterface2 != null) {
            arrayList.add(videoRenderInterface2);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        for (VideoProducerDef.StreamType streamType : this.A.keySet()) {
            b(streamType);
        }
    }

    @Override // com.tencent.liteav.videoproducer.preprocessor.ah
    public final void didProcessFrame(int i9, PixelFrame pixelFrame) {
        if (pixelFrame == null) {
            return;
        }
        if (!this.Q) {
            this.Q = true;
            LiteavLog.d(this.f33265a, "preprocess first frame out!");
        }
        GLES20.glFinish();
        pixelFrame.retain();
        if (a(ao.a(this, i9, pixelFrame))) {
            return;
        }
        pixelFrame.release();
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onCameraTouchEnable(boolean z10) {
        LiteavLog.i(this.f33265a, "onCameraTouchEnable enableTouch:".concat(String.valueOf(z10)));
        a(ak.a(this, z10));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onCameraZoomEnable(boolean z10) {
        LiteavLog.i(this.f33265a, "onCameraZoomEnable enableZoom:".concat(String.valueOf(z10)));
        a(al.a(this, z10));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onCaptureError() {
        LiteavLog.i(this.f33265a, "onCaptureError");
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onCaptureFirstFrame() {
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onFrameAvailable(CaptureSourceInterface captureSourceInterface, PixelFrame pixelFrame) {
        if (pixelFrame != null) {
            pixelFrame.retain();
            if (pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_2D || pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_OES) {
                GLES20.glFinish();
            }
            if (a(am.a(this, pixelFrame, captureSourceInterface))) {
                return;
            }
            pixelFrame.release();
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onScreenDisplayOrientationChanged(boolean z10) {
        LiteavLog.i(this.f33265a, "onScreenDisplayOrientationChanged isPortrait:".concat(String.valueOf(z10)));
        a(aj.a(this, z10));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface.CaptureSourceListener
    public final void onStartFinish(boolean z10) {
        LiteavLog.i(this.f33265a, "onStartFinish success:".concat(String.valueOf(z10)));
        a(ai.a(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, ServerVideoProducerConfig serverVideoProducerConfig) {
        LiteavLog.i(fVar.f33265a, "setServerConfig=".concat(String.valueOf(serverVideoProducerConfig)));
        fVar.f33275k = serverVideoProducerConfig;
        for (com.tencent.liteav.videoproducer.encoder.ah ahVar : fVar.A.values()) {
            if (ahVar != null) {
                ahVar.a(serverVideoProducerConfig);
            }
        }
        CameraCaptureSingleton.getInstance().setServerConfig(serverVideoProducerConfig);
    }

    private void c() {
        CaptureSourceInterface captureSourceInterface = this.f33282r;
        if (captureSourceInterface != null) {
            captureSourceInterface.stop();
            this.f33282r = null;
        }
        this.f33283s = null;
        this.f33285u = null;
    }

    private void d() {
        com.tencent.liteav.base.util.q c10 = this.f33284t.c();
        if (!c10.equals(this.M)) {
            com.tencent.liteav.base.util.q b10 = this.f33284t.b();
            String str = this.f33265a;
            LiteavLog.i(str, "producer with capture " + b10 + " preview " + c10 + " mode:" + this.f33284t.f33231b);
        }
        this.M.a(c10.f31029a, c10.f31030b);
        if (this.f33280p) {
            this.f33267c.unregisterVideoProcessedListener(1, this);
            this.f33267c.unregisterVideoProcessedListener(2, this);
        }
        com.tencent.liteav.videobase.videobase.a aVar = new com.tencent.liteav.videobase.videobase.a(c10.f31029a, c10.f31030b);
        VideoPreprocessor videoPreprocessor = this.f33267c;
        GLConstants.PixelBufferType pixelBufferType = GLConstants.PixelBufferType.TEXTURE_2D;
        GLConstants.PixelFormatType pixelFormatType = GLConstants.PixelFormatType.RGBA;
        videoPreprocessor.registerVideoProcessedListener(1, aVar, pixelBufferType, pixelFormatType, true, this);
        this.f33267c.registerVideoProcessedListener(2, aVar, pixelBufferType, pixelFormatType, false, this);
        this.f33280p = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(f fVar) {
        LiteavLog.i(fVar.f33265a, "pauseCaptureInternal");
        if (fVar.f33281q == CaptureSourceInterface.SourceType.CUSTOM) {
            LiteavLog.w(fVar.f33265a, "ignore invoking pauseCapture() when using custom input");
            return;
        }
        CaptureSourceInterface captureSourceInterface = fVar.f33282r;
        if (captureSourceInterface != null) {
            captureSourceInterface.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void f(f fVar) {
        LiteavLog.i(fVar.f33265a, "resumeCaptureInternal");
        if (fVar.f33281q == CaptureSourceInterface.SourceType.CUSTOM) {
            LiteavLog.w(fVar.f33265a, "ignore invoking resumeCapture() when using custom input");
            return;
        }
        CaptureSourceInterface captureSourceInterface = fVar.f33282r;
        if (captureSourceInterface != null) {
            captureSourceInterface.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void g(f fVar) {
        if (fVar.f33281q != CaptureSourceInterface.SourceType.NONE) {
            LiteavLog.w(fVar.f33265a, "can't Start when sourceType isn't NONE");
            return;
        }
        LiteavLog.i(fVar.f33265a, "Start custom capture");
        fVar.a(ay.a().b());
        fVar.c();
        fVar.f33284t.a(VideoProducerDef.ProducerMode.AUTO);
        fVar.L.a(0, 0);
        fVar.f33281q = CaptureSourceInterface.SourceType.CUSTOM;
        fVar.f33267c.setSourceType(fVar.f33281q);
        fVar.N.a(fVar.f33281q);
        fVar.f33284t.f33230a = fVar.f33281q;
        fVar.a(fVar.G, fVar.H);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, CaptureSourceInterface.SourceType sourceType, VideoProducerDef.ProducerMode producerMode, CaptureSourceInterface.CaptureParams captureParams) {
        CaptureSourceInterface.CaptureParams captureParams2;
        String str = fVar.f33265a;
        LiteavLog.i(str, "setCaptureParams " + sourceType + " ,mode = " + producerMode + " , " + captureParams.toString());
        LiteavLog.d(fVar.f33265a, "setCaptureParamInternal ".concat(String.valueOf(sourceType)));
        if (fVar.f33281q != sourceType) {
            String str2 = fVar.f33265a;
            LiteavLog.i(str2, "setCaptureParamInternal sourcetype not match: " + sourceType + " , current is " + fVar.f33281q);
        } else if (fVar.f33282r != null && (captureParams2 = fVar.f33283s) != null) {
            if (producerMode == fVar.f33284t.f33231b && captureParams2.equals(captureParams)) {
                return;
            }
            fVar.f33268d.setPerformanceMode(producerMode == VideoProducerDef.ProducerMode.PERFORMANCE);
            fVar.f33284t.a(producerMode);
            fVar.f33284t.a(new com.tencent.liteav.base.util.q(captureParams.f32482c, captureParams.f32483d));
            fVar.f33284t.a(captureParams.f32484e);
            com.tencent.liteav.base.util.q b10 = fVar.f33284t.b();
            captureParams.f32482c = b10.f31029a;
            captureParams.f32483d = b10.f31030b;
            if (!fVar.f33284t.c().equals(fVar.M)) {
                fVar.d();
            }
            if (captureParams instanceof CameraCaptureParams) {
                fVar.f33283s = new CameraCaptureParams((CameraCaptureParams) captureParams);
            } else if (captureParams instanceof VirtualCamera.VirtualCameraParams) {
                fVar.f33283s = new VirtualCamera.VirtualCameraParams((VirtualCamera.VirtualCameraParams) captureParams);
            } else if (captureParams instanceof ScreenCapturer.ScreenCaptureParams) {
                fVar.f33283s = new ScreenCapturer.ScreenCaptureParams((ScreenCapturer.ScreenCaptureParams) captureParams);
            } else {
                fVar.f33283s = new CaptureSourceInterface.CaptureParams(captureParams);
            }
            fVar.f33282r.updateParams(fVar.f33283s);
            a(fVar.f33283s);
        } else {
            String str3 = fVar.f33265a;
            LiteavLog.i(str3, "setCaptureParamInternal capturesource is " + fVar.f33282r + ", " + fVar.f33283s);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(f fVar, Rotation rotation) {
        if (fVar.f33287w == rotation) {
            return;
        }
        LiteavLog.i(fVar.f33265a, "setEncodeRotation rotation: %s, GSensor mode: %s", rotation, fVar.f33276l);
        fVar.f33287w = rotation;
        fVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(f fVar, int i9, VideoProducerDef.StreamType streamType) {
        LiteavLog.i(fVar.f33265a, "setRPSIFrameFPS: %d", Integer.valueOf(i9));
        com.tencent.liteav.videoproducer.encoder.ah ahVar = fVar.A.get(streamType);
        if (ahVar == null) {
            LiteavLog.w(fVar.f33265a, "setRPSIFrameFPS with stream type: %s, but can't find matched videoEncodeController.", streamType);
        } else {
            ahVar.a(com.tencent.liteav.videoproducer.encoder.al.a(ahVar, i9), "setRPSIFrameFPS");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        LiteavLog.i(this.f33265a, "stopCaptureInternal");
        this.f33280p = false;
        this.f33267c.unregisterVideoProcessedListener(1, this);
        this.f33267c.unregisterVideoProcessedListener(2, this);
        for (VideoRenderInterface videoRenderInterface : g()) {
            if (videoRenderInterface != null) {
                videoRenderInterface.stop(true);
            }
        }
        c();
        d dVar = this.f33279o;
        if (dVar != null) {
            dVar.disable();
            this.f33279o = null;
        }
        this.f33281q = CaptureSourceInterface.SourceType.NONE;
        this.f33267c.setSourceType(this.f33281q);
        this.N.a(this.f33281q);
        this.f33284t.f33230a = this.f33281q;
        this.f33284t.a(new com.tencent.liteav.base.util.q());
        this.f33284t.a((Rect) null);
        this.P = false;
        this.Q = false;
        this.O = false;
        e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, Bitmap bitmap, int i9) {
        if (fVar.f33282r == null) {
            return;
        }
        int width = bitmap != null ? bitmap.getWidth() : 64;
        int height = bitmap != null ? bitmap.getHeight() : 64;
        CaptureSourceInterface captureSourceInterface = fVar.f33282r;
        if (captureSourceInterface instanceof com.tencent.liteav.videoproducer.capture.al) {
            ((com.tencent.liteav.videoproducer.capture.al) captureSourceInterface).a(bitmap, i9, width, height);
        } else if (captureSourceInterface instanceof VirtualCamera) {
            LiteavLog.w(fVar.f33265a, "setPausedImage in Start param.");
        } else {
            LiteavLog.w(fVar.f33265a, "setPausedImage failed!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, DisplayTarget displayTarget) {
        if (CommonUtil.equals(fVar.B, displayTarget)) {
            return;
        }
        fVar.a(displayTarget);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, VideoProducerDef.StreamType streamType, VideoEncoderDef.EncodeStrategy encodeStrategy) {
        VideoEncoderDef.EncodeStrategy encodeStrategy2;
        if (streamType == VideoProducerDef.StreamType.STREAM_TYPE_SMALL_VIDEO || (encodeStrategy2 = fVar.f33290z.get(streamType)) == null || encodeStrategy2 == encodeStrategy) {
            return;
        }
        String str = fVar.f33265a;
        LiteavLog.i(str, "setEncodeStrategy: " + streamType + " " + encodeStrategy);
        fVar.f33290z.put(streamType, encodeStrategy);
        com.tencent.liteav.videoproducer.encoder.ah ahVar = fVar.A.get(streamType);
        if (ahVar != null) {
            ahVar.a(encodeStrategy);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(f fVar, boolean z10) {
        DisplayTarget displayTarget = fVar.B;
        TXCloudVideoView tXCloudVideoView = displayTarget != null ? displayTarget.getTXCloudVideoView() : null;
        if (tXCloudVideoView != null) {
            if (!z10) {
                fVar = null;
            }
            com.tencent.liteav.videobase.videobase.g.a(tXCloudVideoView, z10, (com.tencent.rtmp.ui.a) fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, String str) {
        try {
            LiteavLog.i(fVar.f33265a, "setHWEncoderDeviceRelatedParams: ".concat(String.valueOf(str)));
            fVar.f33289y = new JSONArray(str);
        } catch (JSONException e10) {
            LiteavLog.e(fVar.f33265a, "setHWEncoderDeviceRelatedParams error ".concat(String.valueOf(e10)));
        }
    }

    private void b(VideoProducerDef.StreamType streamType) {
        com.tencent.liteav.videoproducer.encoder.ah ahVar = this.A.get(streamType);
        if (ahVar == null) {
            return;
        }
        ahVar.b(this.f33276l == VideoProducerDef.GSensorMode.DISABLE ? this.f33287w : Rotation.NORMAL);
        ahVar.a(a(streamType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, int i9, int i10) {
        DisplayTarget displayTarget = fVar.B;
        if (displayTarget != null) {
            com.tencent.liteav.base.util.q size = displayTarget.getSize();
            fVar.a(i9, i10, size.f31029a, size.f31030b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(f fVar, VideoProducerDef.StreamType streamType) {
        com.tencent.liteav.videoproducer.encoder.ah ahVar = fVar.A.get(streamType);
        if (ahVar != null) {
            ahVar.c();
            ahVar.d();
            ahVar.b();
            fVar.A.remove(streamType);
            if (streamType == VideoProducerDef.StreamType.STREAM_TYPE_BIG_VIDEO) {
                fVar.f33284t.b(new com.tencent.liteav.base.util.q());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, VideoProducerDef.GSensorMode gSensorMode) {
        if (fVar.f33281q == CaptureSourceInterface.SourceType.SCREEN) {
            LiteavLog.i(fVar.f33265a, "setGSensorMode has been ignored for screen capturing");
            return;
        }
        fVar.f33276l = gSensorMode;
        fVar.N.f33258f = gSensorMode;
        LiteavLog.i(fVar.f33265a, "set GSensor mode to %s", gSensorMode);
        fVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(f fVar, CaptureSourceInterface.SourceType sourceType, VideoProducerDef.ProducerMode producerMode, CaptureSourceInterface.CaptureParams captureParams) {
        String str = fVar.f33265a;
        LiteavLog.i(str, "startCaptureInternal sourceType:" + sourceType + ",mode:" + producerMode + ",captureParams:" + captureParams);
        if (fVar.f33281q == CaptureSourceInterface.SourceType.NONE && fVar.f33281q != CaptureSourceInterface.SourceType.CUSTOM) {
            fVar.a(ay.a().b());
            fVar.f33281q = sourceType;
            fVar.f33283s = captureParams;
            fVar.f33268d.setPerformanceMode(producerMode == VideoProducerDef.ProducerMode.PERFORMANCE);
            fVar.f33267c.setSourceType(fVar.f33281q);
            fVar.N.a(fVar.f33281q);
            fVar.f33284t.f33230a = fVar.f33281q;
            fVar.f33284t.a(producerMode);
            fVar.f33284t.a(fVar.f33283s.f32484e);
            ax axVar = fVar.f33284t;
            CaptureSourceInterface.CaptureParams captureParams2 = fVar.f33283s;
            axVar.a(new com.tencent.liteav.base.util.q(captureParams2.f32482c, captureParams2.f32483d));
            com.tencent.liteav.base.util.q b10 = fVar.f33284t.b();
            CaptureSourceInterface.CaptureParams captureParams3 = fVar.f33283s;
            captureParams3.f32482c = b10.f31029a;
            captureParams3.f32483d = b10.f31030b;
            fVar.d();
            if (sourceType == CaptureSourceInterface.SourceType.CAMERA) {
                fVar.f33282r = new com.tencent.liteav.videoproducer.capture.al(fVar.f33271g, Looper.myLooper(), fVar.f33266b);
                if (fVar.f33279o == null) {
                    fVar.f33279o = new d(fVar.f33271g, fVar);
                    if (fVar.f33284t.a() == VideoProducerDef.HomeOrientation.UNSET) {
                        fVar.f33279o.enable();
                    }
                }
            } else if (sourceType == CaptureSourceInterface.SourceType.SCREEN) {
                fVar.f33282r = new com.tencent.liteav.videoproducer.capture.al(fVar.f33271g, Looper.myLooper(), fVar.f33266b);
                VideoProducerDef.GSensorMode gSensorMode = VideoProducerDef.GSensorMode.DISABLE;
                fVar.f33276l = gSensorMode;
                fVar.N.f33258f = gSensorMode;
            } else if (sourceType == CaptureSourceInterface.SourceType.VIRTUAL_CAMERA) {
                fVar.f33282r = new VirtualCamera(Looper.myLooper(), fVar.f33266b);
            }
            CaptureSourceInterface captureSourceInterface = fVar.f33282r;
            com.tencent.liteav.videobase.b.e eVar = fVar.f33273i;
            captureSourceInterface.start(eVar != null ? eVar.d() : null, captureParams, fVar);
            fVar.a(fVar.B);
            fVar.a(fVar.G, fVar.H);
            a(fVar.f33283s);
            return;
        }
        String str2 = fVar.f33265a;
        LiteavLog.w(str2, "can't Start when sourceType isn't NONE. current is " + fVar.f33281q.name());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, VideoProducerDef.HomeOrientation homeOrientation) {
        if (fVar.f33281q == CaptureSourceInterface.SourceType.SCREEN) {
            LiteavLog.i(fVar.f33265a, "setHomeOrientation has been ignored for screen capturing");
            return;
        }
        d dVar = fVar.f33279o;
        if (dVar != null) {
            dVar.disable();
        }
        fVar.f33284t.f33232c = homeOrientation;
        fVar.N.f33257e = homeOrientation == null ? VideoProducerDef.HomeOrientation.UNSET : homeOrientation;
        LiteavLog.i(fVar.f33265a, "set HomeOrientation to %s", homeOrientation);
        if (!fVar.f33284t.c().equals(fVar.M)) {
            fVar.d();
        }
        fVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, GLConstants.Orientation orientation, VideoProducerDef.StreamType streamType, VideoEncodeParams videoEncodeParams) {
        if (orientation != null) {
            GLConstants.Orientation orientation2 = fVar.f33286v.get(streamType);
            fVar.f33286v.put(streamType, orientation);
            fVar.f33284t.f33234e = orientation;
            if (orientation2 != orientation) {
                LiteavLog.i(fVar.f33265a, "update %s orientation from %s to %s", streamType, orientation2, orientation);
                fVar.b(streamType);
            }
        }
        VideoEncodeParams a10 = fVar.a(videoEncodeParams);
        if (streamType != VideoProducerDef.StreamType.STREAM_TYPE_SMALL_VIDEO) {
            fVar.a(a10.fps);
        }
        com.tencent.liteav.videoproducer.encoder.ah ahVar = fVar.A.get(streamType);
        if (ahVar != null) {
            ahVar.a(a10);
        }
    }

    private VideoEncodeParams a(VideoEncodeParams videoEncodeParams) {
        com.tencent.liteav.base.util.q d10 = this.f33284t.d();
        this.f33284t.b(new com.tencent.liteav.base.util.q(videoEncodeParams.width, videoEncodeParams.height));
        com.tencent.liteav.base.util.q d11 = this.f33284t.d();
        if (videoEncodeParams.width != d11.f31029a || videoEncodeParams.height != d11.f31030b) {
            String str = this.f33265a;
            LiteavLog.i(str, "update encode size from " + videoEncodeParams.width + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + videoEncodeParams.height + " to " + d11.f31029a + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + d11.f31030b);
            videoEncodeParams.width = d11.f31029a;
            videoEncodeParams.height = d11.f31030b;
        }
        if (!d10.equals(d11)) {
            LiteavLog.i(this.f33265a, "producer with encoder ".concat(String.valueOf(d11)));
        }
        return videoEncodeParams;
    }

    private void a(int i9) {
        CaptureSourceInterface captureSourceInterface;
        com.tencent.liteav.base.util.q b10 = this.f33284t.b();
        CaptureSourceInterface.CaptureParams captureParams = this.f33283s;
        boolean z10 = true;
        boolean z11 = false;
        if (captureParams != null) {
            int i10 = b10.f31029a;
            if (i10 != captureParams.f32482c || b10.f31030b != captureParams.f32483d) {
                captureParams.f32482c = i10;
                captureParams.f32483d = b10.f31030b;
                z11 = true;
            }
            if (i9 > captureParams.f32481b) {
                captureParams.f32481b = i9;
            } else {
                z10 = z11;
            }
        } else {
            LiteavLog.w(this.f33265a, "updateCapturePreviewSizeFromSupervisor mCaptureParams==null!");
            z10 = false;
        }
        if (z10 && (captureSourceInterface = this.f33282r) != null) {
            captureSourceInterface.updateParams(this.f33283s);
        }
        if (this.f33284t.c().equals(this.M)) {
            return;
        }
        d();
    }

    static /* synthetic */ void b(f fVar, PixelFrame pixelFrame) {
        fVar.a(pixelFrame);
        if (fVar.F != null) {
            fVar.F.onRenderFrame(pixelFrame);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, int i9, VideoProducerDef.StreamType streamType) {
        LiteavLog.i(fVar.f33265a, "setRPSNearestREFSize: %d", Integer.valueOf(i9));
        com.tencent.liteav.videoproducer.encoder.ah ahVar = fVar.A.get(streamType);
        if (ahVar == null) {
            LiteavLog.w(fVar.f33265a, "setRPSNearestREFSize with stream type: %s, but can't find matched videoEncodeController.", streamType);
        } else {
            ahVar.a(com.tencent.liteav.videoproducer.encoder.am.a(ahVar, i9), "setRPSNearestREFSize");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, VideoProducerDef.StreamType streamType, int i9, int i10) {
        com.tencent.liteav.videoproducer.encoder.ah ahVar = fVar.A.get(streamType);
        if (ahVar == null) {
            LiteavLog.w(fVar.f33265a, "ackRPSRecvFrameIndex with stream type: %s, but can't find matched videoEncodeController.", streamType);
        } else {
            ahVar.a(com.tencent.liteav.videoproducer.encoder.an.a(ahVar, i9, i10), "ackRPSRecvFrameIndex");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, VideoProducerDef.StreamType streamType) {
        LiteavLog.i(fVar.f33265a, "requestKeyFrame");
        com.tencent.liteav.videoproducer.encoder.ah ahVar = fVar.A.get(streamType);
        if (ahVar == null) {
            LiteavLog.w(fVar.f33265a, "requestKeyFrame with stream type: %s, but can't find matched videoEncodeController.", streamType);
        } else {
            ahVar.a(com.tencent.liteav.videoproducer.encoder.ak.a(ahVar), "restartIDRFrame");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, GLConstants.MirrorMode mirrorMode) {
        if (fVar.D != mirrorMode) {
            LiteavLog.i(fVar.f33265a, "setRenderMirrorMode: %s", mirrorMode.name());
            fVar.D = mirrorMode;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, GLConstants.GLScaleType gLScaleType) {
        if (fVar.E == gLScaleType) {
            return;
        }
        LiteavLog.i(fVar.f33265a, "setRenderScaleType: %s", gLScaleType.name());
        fVar.E = gLScaleType;
        for (VideoRenderInterface videoRenderInterface : fVar.g()) {
            if (videoRenderInterface != null) {
                videoRenderInterface.setScaleType(gLScaleType);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, Rotation rotation) {
        if (fVar.C == rotation) {
            return;
        }
        LiteavLog.i(fVar.f33265a, "setRenderRotation: %s, GSensorMode is %s", rotation.name(), fVar.f33276l.name());
        fVar.C = rotation;
        fVar.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, SnapshotSourceType snapshotSourceType, TakeSnapshotListener takeSnapshotListener) {
        VideoRenderInterface videoRenderInterface;
        String str = fVar.f33265a;
        LiteavLog.i(str, "takeSnapshot sourceType: " + snapshotSourceType + ", listener: " + takeSnapshotListener);
        if (snapshotSourceType == SnapshotSourceType.STREAM) {
            for (com.tencent.liteav.videoproducer.encoder.ah ahVar : fVar.A.values()) {
                if (ahVar != null) {
                    ahVar.a(com.tencent.liteav.videoproducer.encoder.as.a(ahVar, takeSnapshotListener), "snapshot");
                    return;
                }
            }
        } else if (snapshotSourceType == SnapshotSourceType.VIEW) {
            if (fVar.B != null && (videoRenderInterface = fVar.G) != null) {
                videoRenderInterface.takeSnapshot(takeSnapshotListener);
                return;
            }
            VideoRenderInterface videoRenderInterface2 = fVar.I;
            if (videoRenderInterface2 != null) {
                videoRenderInterface2.takeSnapshot(takeSnapshotListener);
                return;
            }
            LiteavLog.w(fVar.f33265a, "takeSnapshot return null, no match render.");
            if (takeSnapshotListener != null) {
                takeSnapshotListener.onComplete(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, PixelFrame pixelFrame, int i9, int i10) {
        boolean z10;
        boolean z11;
        if (fVar.f33281q != CaptureSourceInterface.SourceType.CUSTOM) {
            pixelFrame.release();
            return;
        }
        if (pixelFrame.getTimestamp() == 0) {
            pixelFrame.setTimestamp(TimeUtil.c());
        }
        boolean z12 = false;
        fVar.f33266b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_INCOME_FRAME, 0);
        fVar.f33266b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_CAPTURE_FRAME, 0);
        fVar.N.a(pixelFrame.getTimestamp(), fVar.D);
        fVar.N.a(pixelFrame.getTimestamp(), fVar.f33288x);
        com.tencent.liteav.base.util.q qVar = fVar.L;
        if (qVar.f31029a == i9 && qVar.f31030b == i10) {
            z12 = true;
        }
        if (!z12 || !fVar.f33280p) {
            fVar.f33284t.a(VideoProducerDef.ProducerMode.MANUAL);
            fVar.f33284t.a(new com.tencent.liteav.base.util.q(i9, i10));
            fVar.d();
            fVar.L.a(i9, i10);
        }
        if (pixelFrame.getGLContext() != null && !CommonUtil.equals(fVar.f33274j, pixelFrame.getGLContext())) {
            fVar.e();
            fVar.a(pixelFrame.getGLContext());
        }
        e.b a10 = fVar.N.a(pixelFrame.getTimestamp());
        if ((pixelFrame.getRotation() == Rotation.ROTATION_90 || pixelFrame.getRotation() == Rotation.ROTATION_270) && (z10 = a10.f33263a) != (z11 = a10.f33264b)) {
            a10.f33263a = z11;
            a10.f33264b = z10;
        }
        if (a10.f33263a) {
            pixelFrame.setMirrorHorizontal(!pixelFrame.isMirrorHorizontal());
        }
        if (a10.f33264b) {
            pixelFrame.setMirrorVertical(!pixelFrame.isMirrorVertical());
        }
        if (pixelFrame.getGLContext() == null) {
            pixelFrame.setGLContext(fVar.f33273i.d());
        }
        fVar.f33267c.processFrame(pixelFrame);
        pixelFrame.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar) {
        LiteavLog.i(fVar.f33265a, "Stop custom capture");
        fVar.b();
        fVar.f33281q = CaptureSourceInterface.SourceType.NONE;
        fVar.f33267c.setSourceType(fVar.f33281q);
        fVar.N.a(fVar.f33281q);
        fVar.f33284t.f33230a = fVar.f33281q;
        fVar.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, VideoRenderListener videoRenderListener) {
        String str = fVar.f33265a;
        LiteavLog.i(str, "setCustomRenderListener PixelFormatType = " + pixelFormatType + ",  PixelBufferType = " + pixelBufferType + " listener= " + videoRenderListener);
        fVar.F = videoRenderListener;
        if (fVar.F != null) {
            if (fVar.I == null) {
                com.tencent.liteav.videoconsumer.consumer.a aVar = new com.tencent.liteav.videoconsumer.consumer.a(fVar.f33269e.getLooper());
                fVar.I = aVar;
                fVar.a(aVar, fVar.J);
            }
            ((com.tencent.liteav.videoconsumer.consumer.a) fVar.I).a(pixelFormatType, pixelBufferType);
            return;
        }
        VideoRenderInterface videoRenderInterface = fVar.I;
        if (videoRenderInterface != null) {
            videoRenderInterface.stop(true);
            fVar.I = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, CustomVideoProcessListener customVideoProcessListener) {
        String str = fVar.f33265a;
        LiteavLog.i(str, "setCustomVideoProcessListener PixelFormatType = " + pixelFormatType + ",  PixelBufferType = " + pixelBufferType + " listener= " + customVideoProcessListener);
        if (fVar.K == null) {
            fVar.K = new a(fVar.f33266b);
        }
        fVar.K.a(pixelFormatType, pixelBufferType, customVideoProcessListener);
        fVar.f33267c.setInterceptorBeforeWatermark(fVar.K);
    }

    private void a(Object obj) {
        if (!CommonUtil.equals(this.f33274j, obj)) {
            e();
        }
        if (this.f33273i != null) {
            return;
        }
        LiteavLog.i(this.f33272h.a("initGL"), this.f33265a, "initOpenGLComponents", new Object[0]);
        this.f33274j = obj;
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.f33273i = eVar;
        try {
            eVar.a(obj, null, 128, 128);
        } catch (com.tencent.liteav.videobase.b.g e10) {
            this.f33273i = null;
            LiteavLog.e(this.f33272h.a("initGLError"), this.f33265a, "EGLCore create failed.", e10);
        }
    }

    private static void a(CaptureSourceInterface.CaptureParams captureParams) {
        if (captureParams instanceof CameraCaptureParams) {
            ((CameraCaptureParams) captureParams).f32476a = null;
        }
    }

    private void a(DisplayTarget displayTarget) {
        LiteavLog.i(this.f33265a, "setDisplayView ".concat(String.valueOf(displayTarget)));
        this.B = displayTarget;
        TXCloudVideoView tXCloudVideoView = displayTarget != null ? displayTarget.getTXCloudVideoView() : null;
        if (tXCloudVideoView != null) {
            com.tencent.liteav.videobase.videobase.g.a(tXCloudVideoView, true, (com.tencent.rtmp.ui.a) this);
            com.tencent.liteav.videobase.videobase.g.a(tXCloudVideoView, true, (com.tencent.rtmp.ui.b) this);
        }
        for (VideoRenderInterface videoRenderInterface : g()) {
            if (videoRenderInterface != null) {
                videoRenderInterface.setDisplayView(this.B, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, boolean z10) {
        DisplayTarget displayTarget = fVar.B;
        TXCloudVideoView tXCloudVideoView = displayTarget != null ? displayTarget.getTXCloudVideoView() : null;
        if (tXCloudVideoView != null) {
            if (!z10) {
                fVar = null;
            }
            com.tencent.liteav.videobase.videobase.g.a(tXCloudVideoView, z10, (com.tencent.rtmp.ui.b) fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, PixelFrame pixelFrame, CaptureSourceInterface captureSourceInterface) {
        fVar.f33266b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_CAPTURE_FRAME, 0);
        if (!fVar.P) {
            fVar.P = true;
            fVar.f33266b.notifyEvent(h.b.EVT_VIDEO_CAPTURE_FIRST_FRAME, "capture first frame", new Object[0]);
            LiteavLog.d(fVar.f33265a, "receive first capture frame! ");
        }
        com.tencent.liteav.base.util.q qVar = fVar.f33284t.f33235f;
        if (!fVar.f33280p || qVar.f31029a != pixelFrame.getWidth() || qVar.f31030b != pixelFrame.getHeight()) {
            ax axVar = fVar.f33284t;
            axVar.f33235f.a(new com.tencent.liteav.base.util.q(pixelFrame.getWidth(), pixelFrame.getHeight()));
            axVar.f33236g.a(0, 0);
            fVar.d();
            if (fVar.f33281q == CaptureSourceInterface.SourceType.SCREEN) {
                for (com.tencent.liteav.videoproducer.encoder.ah ahVar : fVar.A.values()) {
                    if (ahVar != null) {
                        VideoEncodeParams a10 = fVar.a(ahVar.e());
                        fVar.a(a10.fps);
                        ahVar.a(a10);
                    }
                }
            }
        }
        if (a(captureSourceInterface) != null) {
            PixelFrame pixelFrame2 = new PixelFrame(pixelFrame);
            fVar.f33285u = pixelFrame2;
            pixelFrame2.setRotation(com.tencent.liteav.videoproducer.capture.t.b());
            fVar.N.b(pixelFrame.getTimestamp()).f33260a = CameraCaptureSingleton.getInstance().isFrontCamera();
            fVar.N.a(pixelFrame.getTimestamp(), fVar.D);
            fVar.N.a(pixelFrame.getTimestamp(), fVar.f33288x);
            Rotation b10 = com.tencent.liteav.videoproducer.capture.t.b();
            int i9 = b10 != null ? b10.mValue : 0;
            int i10 = AnonymousClass4.f33293a[fVar.f33284t.a().ordinal()];
            if (i10 == 1) {
                pixelFrame.setRotation(Rotation.a(360 - i9));
                pixelFrame.swapWidthHeight();
            } else if (i10 == 2) {
                pixelFrame.setRotation(Rotation.ROTATION_180);
            } else if (i10 == 3) {
                pixelFrame.setRotation(Rotation.a((540 - i9) % 360));
                pixelFrame.swapWidthHeight();
            }
            e.b a11 = fVar.N.a(pixelFrame.getTimestamp());
            if (a11.f33263a) {
                pixelFrame.setMirrorHorizontal(!pixelFrame.isMirrorHorizontal());
            }
            if (a11.f33264b) {
                pixelFrame.setMirrorVertical(!pixelFrame.isMirrorVertical());
            }
        }
        if (pixelFrame.getGLContext() == null) {
            pixelFrame.setGLContext(fVar.f33273i.d());
        }
        fVar.f33267c.processFrame(pixelFrame);
        pixelFrame.release();
    }

    private void a(VideoRenderInterface videoRenderInterface, VideoRenderListener videoRenderListener) {
        if (videoRenderInterface != null) {
            videoRenderInterface.setDisplayView(this.B, true);
            videoRenderInterface.start(videoRenderListener);
            videoRenderInterface.setScaleType(this.E);
        }
        f();
    }

    @Override // com.tencent.liteav.videoproducer.producer.d.a
    public final void a(Rotation rotation, int i9) {
        a(ap.a(this, rotation, i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, Rotation rotation, int i9) {
        LiteavLog.i(fVar.f33265a, "onOrientationChanged: %s, displayRotation:%d", rotation, Integer.valueOf(i9));
        fVar.f33277m = rotation;
        fVar.f33278n = i9;
        e eVar = fVar.N;
        if (rotation == null) {
            rotation = Rotation.NORMAL;
        }
        eVar.f33256d = rotation;
        fVar.f();
        fVar.h();
    }

    @Override // com.tencent.rtmp.ui.a
    public final void a(int i9, int i10, int i11, int i12) {
        PixelFrame pixelFrame = this.f33285u;
        if (pixelFrame == null || i11 <= 0 || i12 <= 0) {
            return;
        }
        a(aq.a(this, OpenGlUtils.reverseMappingPoint(GLConstants.GLScaleType.CENTER_CROP, this.f33285u.getRotation(), new Point(i9, i10), new com.tencent.liteav.base.util.q(i11, i12), new com.tencent.liteav.base.util.q(pixelFrame.getWidth(), this.f33285u.getHeight())), i9, i10, i11, i12));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, Point point, int i9, int i10, int i11, int i12) {
        com.tencent.liteav.videoproducer.capture.t a10;
        if (fVar.f33281q == CaptureSourceInterface.SourceType.CAMERA && (a10 = a(fVar.f33282r)) != null && com.tencent.liteav.videoproducer.capture.t.a()) {
            a10.a(point.x, point.y);
            DisplayTarget displayTarget = fVar.B;
            TXCloudVideoView tXCloudVideoView = displayTarget != null ? displayTarget.getTXCloudVideoView() : null;
            if (tXCloudVideoView != null) {
                com.tencent.liteav.videobase.videobase.g.a(tXCloudVideoView, i9, i10, i11, i12);
            }
        }
    }

    @Override // com.tencent.rtmp.ui.b
    public final void a(float f10) {
        a(ar.a(this, f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, float f10) {
        com.tencent.liteav.videoproducer.capture.t a10;
        if (fVar.f33281q == CaptureSourceInterface.SourceType.CAMERA && (a10 = a(fVar.f33282r)) != null) {
            a10.a(f10);
        }
    }

    public static VideoEncoderDef.EncodeAbility a() {
        return EncodeAbilityProvider.getInstance().getEncodeAbility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(PixelFrame pixelFrame) {
        if (pixelFrame != null && (pixelFrame.getWidth() != this.R.f31029a || pixelFrame.getHeight() != this.R.f31030b)) {
            this.R.a(pixelFrame.getWidth(), pixelFrame.getHeight());
            this.f33266b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_FRAME_WIDTH, Integer.valueOf(this.R.f31029a));
            this.f33266b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_FRAME_HEIGHT, Integer.valueOf(this.R.f31030b));
        }
        if (!this.O) {
            LiteavLog.d(this.f33265a, "rendered first frame!");
            this.f33266b.notifyEvent(h.b.EVT_VIDEO_RENDER_FIRST_FRAME, "rendered first frame", new Object[0]);
            this.O = true;
        }
        this.f33266b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_FRAME, 0);
    }

    private void a(PixelFrame pixelFrame, VideoRenderInterface videoRenderInterface) {
        CaptureSourceInterface.SourceType sourceType;
        if (videoRenderInterface == null) {
            return;
        }
        e eVar = this.N;
        long timestamp = pixelFrame.getTimestamp();
        e.b bVar = new e.b();
        CaptureSourceInterface.SourceType sourceType2 = eVar.f33255c;
        if (sourceType2 == CaptureSourceInterface.SourceType.CUSTOM || (sourceType2 == (sourceType = CaptureSourceInterface.SourceType.CAMERA) && eVar.f33257e != VideoProducerDef.HomeOrientation.UNSET)) {
            bVar.f33263a = eVar.c(timestamp);
            e.b a10 = eVar.a(timestamp);
            if (a10.f33263a || a10.f33264b) {
                bVar.f33263a = !bVar.f33263a;
            }
        } else if (sourceType2 == sourceType) {
            Rotation rotation = eVar.f33256d;
            boolean z10 = false;
            if (rotation != Rotation.NORMAL && rotation != Rotation.ROTATION_180) {
                boolean c10 = eVar.c(timestamp);
                boolean z11 = eVar.b(timestamp).f33260a;
                bVar.f33263a = z11;
                if (!z11) {
                    z10 = c10;
                } else if (!c10) {
                    z10 = true;
                }
            } else {
                bVar.f33263a = eVar.c(timestamp);
            }
            bVar.f33264b = z10;
            e.b a11 = eVar.a(timestamp);
            if (a11.f33263a) {
                bVar.f33263a = !bVar.f33263a;
            }
            if (a11.f33264b) {
                bVar.f33264b = !bVar.f33264b;
            }
        }
        videoRenderInterface.setHorizontalMirror(bVar.f33263a);
        videoRenderInterface.setVerticalMirror(bVar.f33264b);
        pixelFrame.setMetaData(null);
        videoRenderInterface.renderFrame(pixelFrame);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Runnable runnable) {
        CustomHandler customHandler = this.f33269e;
        if (!this.f33270f || customHandler == null) {
            return false;
        }
        if (Looper.myLooper() == customHandler.getLooper()) {
            runnable.run();
            return true;
        }
        return customHandler.post(runnable);
    }

    private static com.tencent.liteav.videoproducer.capture.t a(CaptureSourceInterface captureSourceInterface) {
        if (captureSourceInterface instanceof com.tencent.liteav.videoproducer.capture.al) {
            CaptureSourceInterface captureSourceInterface2 = ((com.tencent.liteav.videoproducer.capture.al) captureSourceInterface).f32564a;
            if (captureSourceInterface2 instanceof com.tencent.liteav.videoproducer.capture.t) {
                return (com.tencent.liteav.videoproducer.capture.t) captureSourceInterface2;
            }
            return null;
        }
        return null;
    }

    private Rotation a(VideoProducerDef.StreamType streamType) {
        int i9;
        Rotation rotation = Rotation.NORMAL;
        if (this.f33281q != CaptureSourceInterface.SourceType.CAMERA) {
            return rotation;
        }
        if (this.f33276l != VideoProducerDef.GSensorMode.DISABLE) {
            if (this.f33277m == null) {
                return rotation;
            }
            if (CameraCaptureSingleton.getInstance().isFrontCamera()) {
                i9 = (360 - this.f33277m.mValue) % 360;
            } else {
                i9 = this.f33277m.mValue;
            }
            return Rotation.a(i9);
        } else if (this.f33286v.get(streamType) == GLConstants.Orientation.LANDSCAPE && this.f33284t.a() == VideoProducerDef.HomeOrientation.UNSET) {
            return CameraCaptureSingleton.getInstance().isFrontCamera() ? Rotation.ROTATION_90 : Rotation.ROTATION_270;
        } else {
            return rotation;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, int i9, PixelFrame pixelFrame) {
        if (fVar.f33273i != null) {
            if (pixelFrame.getGLContext() != null) {
                pixelFrame.setGLContext(fVar.f33273i.d());
            }
            if (i9 == 1) {
                for (com.tencent.liteav.videoproducer.encoder.ah ahVar : fVar.A.values()) {
                    if (ahVar != null) {
                        ahVar.a(pixelFrame);
                    }
                }
            } else if (i9 == 2) {
                fVar.a(pixelFrame, fVar.G);
                fVar.a(pixelFrame, fVar.I);
                e eVar = fVar.N;
                long timestamp = pixelFrame.getTimestamp();
                long j10 = eVar.f33254b;
                if (j10 != -1) {
                    eVar.f33253a.remove(j10);
                }
                eVar.f33254b = timestamp;
            }
        }
        pixelFrame.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(f fVar, VideoProducerDef.StreamType streamType, VideoEncodeParams videoEncodeParams, VideoEncoderDef.VideoEncoderDataListener videoEncoderDataListener) {
        if (fVar.A.get(streamType) != null) {
            LiteavLog.w(fVar.f33265a, "%s video encoder is started", streamType.toString());
            return;
        }
        String str = fVar.f33265a;
        LiteavLog.i(str, "startEncodeStreamInternal: " + streamType + "; " + videoEncodeParams);
        VideoEncodeParams a10 = fVar.a(videoEncodeParams);
        if (streamType != VideoProducerDef.StreamType.STREAM_TYPE_SMALL_VIDEO) {
            fVar.a(a10.fps);
        }
        a10.mediaCodecDeviceRelatedParams = fVar.f33289y;
        com.tencent.liteav.videoproducer.encoder.ah ahVar = new com.tencent.liteav.videoproducer.encoder.ah(fVar.f33266b, streamType, a10.isTranscodingMode());
        ahVar.a();
        ahVar.a(fVar.f33275k);
        ahVar.a(fVar.f33290z.get(streamType));
        fVar.A.put(streamType, ahVar);
        fVar.b(streamType);
        ahVar.a(a10, videoEncoderDataListener);
    }
}
