package com.tencent.liteav.videoconsumer.decoder;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.frame.l;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.consumer.ServerVideoConsumerConfig;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
import com.tencent.liteav.videoconsumer.decoder.az;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import com.tencent.tmediacodec.b;
import com.tencent.tmediacodec.d.a;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class s implements SurfaceTexture.OnFrameAvailableListener, az {
    private final com.tencent.tmediacodec.a.a A;

    /* renamed from: a  reason: collision with root package name */
    private String f32311a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final com.tencent.liteav.base.util.q f32312b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final IVideoReporter f32313c;

    /* renamed from: d  reason: collision with root package name */
    private final JSONArray f32314d;

    /* renamed from: e  reason: collision with root package name */
    private final String f32315e;

    /* renamed from: f  reason: collision with root package name */
    private final com.tencent.liteav.base.b.b f32316f;

    /* renamed from: g  reason: collision with root package name */
    private volatile CustomHandler f32317g;

    /* renamed from: h  reason: collision with root package name */
    private com.tencent.tmediacodec.b f32318h;

    /* renamed from: i  reason: collision with root package name */
    private ba f32319i;

    /* renamed from: j  reason: collision with root package name */
    private final MediaCodec.BufferInfo f32320j;

    /* renamed from: k  reason: collision with root package name */
    private EncodedVideoFrame f32321k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f32322l;

    /* renamed from: m  reason: collision with root package name */
    private com.tencent.liteav.videobase.b.e f32323m;

    /* renamed from: n  reason: collision with root package name */
    private int f32324n;

    /* renamed from: o  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.l f32325o;

    /* renamed from: p  reason: collision with root package name */
    private SurfaceTexture f32326p;

    /* renamed from: q  reason: collision with root package name */
    private Surface f32327q;

    /* renamed from: r  reason: collision with root package name */
    private VideoDecoderDef.ConsumerScene f32328r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f32329s;

    /* renamed from: t  reason: collision with root package name */
    private final r f32330t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f32331u;

    /* renamed from: v  reason: collision with root package name */
    private MediaFormat f32332v;

    /* renamed from: w  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.j f32333w;

    /* renamed from: x  reason: collision with root package name */
    private com.tencent.liteav.videobase.frame.e f32334x;

    /* renamed from: y  reason: collision with root package name */
    private final boolean f32335y;

    /* renamed from: z  reason: collision with root package name */
    private final boolean f32336z;

    public s(@NonNull com.tencent.liteav.base.util.q qVar, boolean z10, boolean z11, boolean z12, @Nullable JSONArray jSONArray, @NonNull IVideoReporter iVideoReporter) {
        this(qVar, z10 ? "video/hevc" : TPDecoderType.TP_CODEC_MIMETYPE_AVC, z11, z12, jSONArray, iVideoReporter);
    }

    private void c() {
        EncodedVideoFrame encodedVideoFrame;
        synchronized (this) {
            encodedVideoFrame = this.f32321k;
            this.f32321k = null;
        }
        a(encodedVideoFrame);
    }

    private boolean d() {
        try {
            com.tencent.liteav.videobase.b.e eVar = this.f32323m;
            if (eVar != null) {
                eVar.a();
            }
            return true;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.f32316f.a("makeCurrent"), this.f32311a, "makeCurrent failed.", e10);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(s sVar) {
        com.tencent.tmediacodec.b.b bVar;
        sVar.c();
        com.tencent.tmediacodec.b bVar2 = sVar.f32318h;
        if (bVar2 != null && (bVar = bVar2.f34513c) != null) {
            bVar.e();
        }
        if (sVar.f32322l) {
            sVar.b();
        } else {
            sVar.f32331u = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void f(s sVar) {
        LiteavLog.i(sVar.f32311a, "Stop internal");
        com.tencent.tmediacodec.b bVar = sVar.f32318h;
        if (bVar != null) {
            sVar.a(bVar);
            sVar.f32318h = null;
        }
        sVar.c();
        LiteavLog.i(sVar.f32311a, "uninitialize gl components");
        if (sVar.d()) {
            com.tencent.liteav.videobase.frame.l lVar = sVar.f32325o;
            if (lVar != null) {
                lVar.b();
            }
            Surface surface = sVar.f32327q;
            if (surface != null) {
                surface.release();
                sVar.f32327q = null;
            }
            SurfaceTexture surfaceTexture = sVar.f32326p;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                sVar.f32326p = null;
            }
            com.tencent.liteav.videobase.frame.e eVar = sVar.f32334x;
            if (eVar != null) {
                eVar.b();
                sVar.f32334x = null;
            }
            com.tencent.liteav.videobase.frame.j jVar = sVar.f32333w;
            if (jVar != null) {
                jVar.a();
                sVar.f32333w = null;
            }
            OpenGlUtils.deleteTexture(sVar.f32324n);
            sVar.f32324n = -1;
            com.tencent.liteav.videobase.b.e.a(sVar.f32323m);
            sVar.f32323m = null;
        }
        sVar.f32322l = true;
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public final void abandonDecodingFrames() {
        LiteavLog.i(this.f32311a, "flush");
        a(x.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public final boolean decode(EncodedVideoFrame encodedVideoFrame) {
        synchronized (this) {
            if (this.f32321k == null && encodedVideoFrame != null) {
                this.f32321k = encodedVideoFrame;
                a(w.a(this));
                return true;
            }
            a(v.a(this));
            return false;
        }
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public final az.a getDecoderType() {
        return az.a.HARDWARE;
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public final void initialize() {
        HandlerThread handlerThread = new HandlerThread("HardwareVideoDecoder_" + hashCode());
        handlerThread.start();
        this.f32317g = new CustomHandler(handlerThread.getLooper());
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        a(aa.a(this, surfaceTexture));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public final void setScene(VideoDecoderDef.ConsumerScene consumerScene) {
        a(t.a(this, consumerScene));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public final void setServerConfig(ServerVideoConsumerConfig serverVideoConsumerConfig) {
        a(z.a(this, serverVideoConsumerConfig));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public final void start(Object obj, ba baVar) {
        a(u.a(this, obj, baVar));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public final void stop() {
        a(y.a(this));
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.az
    public final void uninitialize() {
        if (this.f32317g != null) {
            LiteavLog.i(this.f32311a, "uninitialize quitLooper");
            this.f32317g.a();
        }
    }

    public s(@NonNull MediaFormat mediaFormat, boolean z10, boolean z11, @Nullable JSONArray jSONArray, @NonNull IVideoReporter iVideoReporter) {
        this(new com.tencent.liteav.base.util.q(mediaFormat.getInteger("width"), mediaFormat.getInteger("height")), mediaFormat.getString("mime"), z10, z11, jSONArray, iVideoReporter);
        this.f32332v = mediaFormat;
    }

    private void b() {
        ba baVar = this.f32319i;
        if (baVar != null) {
            baVar.onAbandonDecodingFramesCompleted();
        }
    }

    private boolean a(Object obj) {
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.f32323m = eVar;
        try {
            eVar.a(obj, null, 128, 128);
            this.f32323m.a();
            this.f32324n = OpenGlUtils.generateTextureOES();
            this.f32325o = new com.tencent.liteav.videobase.frame.l();
            try {
                this.f32326p = new SurfaceTexture(this.f32324n);
                this.f32327q = new Surface(this.f32326p);
                this.f32326p.setOnFrameAvailableListener(this);
                LiteavLog.i(this.f32316f.a("initGL"), this.f32311a, "initialize gl components", new Object[0]);
                return true;
            } catch (Surface.OutOfResourcesException e10) {
                LiteavLog.e(this.f32316f.a("surface"), this.f32311a, "create SurfaceTexture failed.", e10);
                h.c cVar = h.c.WARNING_VIDEO_DECODE_START_FAILED_INSUFFICIENT_RESOURCE;
                a(cVar, "VideoDecode: insufficient resource, Start decoder failed:" + e10.getMessage(), new Object[0]);
                return false;
            }
        } catch (com.tencent.liteav.videobase.b.g e11) {
            LiteavLog.e(this.f32316f.a("initGL"), this.f32311a, "create EGLCore failed.", e11);
            h.c cVar2 = h.c.WARNING_VIDEO_DECODE_EGL_CORE_CREATE_FAILED;
            a(cVar2, "VideoDecode: create EGLCore failed errorCode:" + e11.mErrorCode, new Object[0]);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public com.tencent.tmediacodec.b f32338a;

        /* renamed from: b  reason: collision with root package name */
        public h.c f32339b;

        /* renamed from: c  reason: collision with root package name */
        public String f32340c;

        /* renamed from: d  reason: collision with root package name */
        public Exception f32341d;

        private a() {
            this.f32338a = null;
            this.f32339b = null;
            this.f32340c = null;
            this.f32341d = null;
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    private s(@NonNull com.tencent.liteav.base.util.q qVar, String str, boolean z10, boolean z11, @Nullable JSONArray jSONArray, @NonNull IVideoReporter iVideoReporter) {
        this.f32311a = "HardwareVideoDecoder";
        this.f32316f = new com.tencent.liteav.base.b.b();
        this.f32318h = null;
        this.f32320j = new MediaCodec.BufferInfo();
        this.f32321k = null;
        this.f32322l = true;
        this.f32324n = -1;
        this.f32328r = VideoDecoderDef.ConsumerScene.UNKNOWN;
        this.f32329s = false;
        this.f32330t = new r();
        this.f32331u = false;
        this.A = new com.tencent.tmediacodec.a.a() { // from class: com.tencent.liteav.videoconsumer.decoder.s.1
            @Override // com.tencent.tmediacodec.a.a
            public final void a(Boolean bool, String str2) {
                String str3 = s.this.f32311a;
                LiteavLog.i(str3, "tmediacodec onStarted, isReUse:" + bool + ". " + str2);
                try {
                    s.this.f32313c.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_DECODER_CODEC_COST, Integer.valueOf(new JSONObject(str2).getInt("totalCodec")));
                } catch (Exception e10) {
                    String str4 = s.this.f32311a;
                    LiteavLog.i(str4, "json get object error " + e10.getCause());
                }
            }

            @Override // com.tencent.tmediacodec.a.a
            public final void a(String str2) {
                LiteavLog.e(s.this.f32311a, "onReuseCodecAPIException:".concat(String.valueOf(str2)));
                s.this.f32313c.notifyWarning(h.c.WARNING_VIDEO_DECODE_HARDWARE_ERROR, str2, new Object[0]);
            }
        };
        this.f32312b = new com.tencent.liteav.base.util.q(qVar);
        this.f32315e = str;
        this.f32313c = iVideoReporter;
        this.f32314d = jSONArray;
        this.f32335y = z10;
        this.f32336z = z11;
        String str2 = this.f32311a + "_" + hashCode();
        this.f32311a = str2;
        LiteavLog.i(str2, "create decoder isLowLatencyEnabled:" + z10 + ", format: " + this.f32332v + " , params: " + jSONArray);
    }

    private void a(com.tencent.tmediacodec.b bVar) {
        try {
            try {
                if (bVar != null) {
                    try {
                        LiteavLog.i(this.f32311a, "mediaCodec stop");
                        bVar.a();
                        LiteavLog.i(this.f32311a, "mediaCodec release");
                        bVar.b();
                    } catch (Exception e10) {
                        String str = this.f32311a;
                        LiteavLog.e(str, "Stop MediaCodec failed." + e10.getMessage());
                        LiteavLog.i(this.f32311a, "mediaCodec release");
                        bVar.b();
                    }
                }
            } catch (Throwable th2) {
                try {
                    LiteavLog.i(this.f32311a, "mediaCodec release");
                    bVar.b();
                } catch (Exception e11) {
                    LiteavLog.e(this.f32311a, "release MediaCodec failed.", e11);
                }
                throw th2;
            }
        } catch (Exception e12) {
            LiteavLog.e(this.f32311a, "release MediaCodec failed.", e12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02ae A[Catch: Exception -> 0x02c2, TRY_LEAVE, TryCatch #3 {Exception -> 0x02c2, blocks: (B:7:0x000f, B:11:0x001b, B:13:0x002b, B:18:0x0037, B:28:0x00b7, B:21:0x0043, B:23:0x0049, B:25:0x004f, B:27:0x0055, B:30:0x00bd, B:32:0x00c5, B:33:0x00c8, B:35:0x00cf, B:37:0x00da, B:38:0x00dd, B:40:0x00e1, B:43:0x00f3, B:47:0x00f9, B:49:0x00fd, B:51:0x0101, B:53:0x0107, B:163:0x02ae, B:168:0x02b7, B:54:0x0110, B:56:0x0116, B:58:0x011c, B:61:0x0125, B:67:0x012e, B:69:0x0138, B:71:0x013e, B:75:0x0149, B:77:0x014d, B:79:0x0153, B:81:0x0159, B:83:0x015d, B:86:0x0165, B:87:0x017c, B:89:0x0180, B:91:0x018a, B:93:0x0191, B:94:0x0193, B:118:0x01d8, B:152:0x0249, B:154:0x0259, B:155:0x025e, B:150:0x023f, B:97:0x0199, B:98:0x019f, B:100:0x01a3, B:102:0x01a7, B:104:0x01ad, B:114:0x01c7, B:106:0x01b3, B:108:0x01b7, B:110:0x01bd, B:112:0x01c3, B:115:0x01cc, B:116:0x01cf, B:156:0x0277, B:158:0x0296, B:159:0x029a, B:121:0x01de, B:122:0x01e5, B:124:0x01e8, B:126:0x01ec, B:128:0x01f0, B:130:0x01f6, B:132:0x01fc, B:134:0x0202, B:135:0x0210, B:137:0x021b, B:139:0x021e, B:144:0x022c, B:147:0x0239, B:164:0x02af, B:166:0x02b3, B:167:0x02b6, B:44:0x00f4, B:45:0x00f6), top: B:182:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x012e A[Catch: Exception -> 0x02c2, TryCatch #3 {Exception -> 0x02c2, blocks: (B:7:0x000f, B:11:0x001b, B:13:0x002b, B:18:0x0037, B:28:0x00b7, B:21:0x0043, B:23:0x0049, B:25:0x004f, B:27:0x0055, B:30:0x00bd, B:32:0x00c5, B:33:0x00c8, B:35:0x00cf, B:37:0x00da, B:38:0x00dd, B:40:0x00e1, B:43:0x00f3, B:47:0x00f9, B:49:0x00fd, B:51:0x0101, B:53:0x0107, B:163:0x02ae, B:168:0x02b7, B:54:0x0110, B:56:0x0116, B:58:0x011c, B:61:0x0125, B:67:0x012e, B:69:0x0138, B:71:0x013e, B:75:0x0149, B:77:0x014d, B:79:0x0153, B:81:0x0159, B:83:0x015d, B:86:0x0165, B:87:0x017c, B:89:0x0180, B:91:0x018a, B:93:0x0191, B:94:0x0193, B:118:0x01d8, B:152:0x0249, B:154:0x0259, B:155:0x025e, B:150:0x023f, B:97:0x0199, B:98:0x019f, B:100:0x01a3, B:102:0x01a7, B:104:0x01ad, B:114:0x01c7, B:106:0x01b3, B:108:0x01b7, B:110:0x01bd, B:112:0x01c3, B:115:0x01cc, B:116:0x01cf, B:156:0x0277, B:158:0x0296, B:159:0x029a, B:121:0x01de, B:122:0x01e5, B:124:0x01e8, B:126:0x01ec, B:128:0x01f0, B:130:0x01f6, B:132:0x01fc, B:134:0x0202, B:135:0x0210, B:137:0x021b, B:139:0x021e, B:144:0x022c, B:147:0x0239, B:164:0x02af, B:166:0x02b3, B:167:0x02b6, B:44:0x00f4, B:45:0x00f6), top: B:182:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0138 A[Catch: Exception -> 0x02c2, TryCatch #3 {Exception -> 0x02c2, blocks: (B:7:0x000f, B:11:0x001b, B:13:0x002b, B:18:0x0037, B:28:0x00b7, B:21:0x0043, B:23:0x0049, B:25:0x004f, B:27:0x0055, B:30:0x00bd, B:32:0x00c5, B:33:0x00c8, B:35:0x00cf, B:37:0x00da, B:38:0x00dd, B:40:0x00e1, B:43:0x00f3, B:47:0x00f9, B:49:0x00fd, B:51:0x0101, B:53:0x0107, B:163:0x02ae, B:168:0x02b7, B:54:0x0110, B:56:0x0116, B:58:0x011c, B:61:0x0125, B:67:0x012e, B:69:0x0138, B:71:0x013e, B:75:0x0149, B:77:0x014d, B:79:0x0153, B:81:0x0159, B:83:0x015d, B:86:0x0165, B:87:0x017c, B:89:0x0180, B:91:0x018a, B:93:0x0191, B:94:0x0193, B:118:0x01d8, B:152:0x0249, B:154:0x0259, B:155:0x025e, B:150:0x023f, B:97:0x0199, B:98:0x019f, B:100:0x01a3, B:102:0x01a7, B:104:0x01ad, B:114:0x01c7, B:106:0x01b3, B:108:0x01b7, B:110:0x01bd, B:112:0x01c3, B:115:0x01cc, B:116:0x01cf, B:156:0x0277, B:158:0x0296, B:159:0x029a, B:121:0x01de, B:122:0x01e5, B:124:0x01e8, B:126:0x01ec, B:128:0x01f0, B:130:0x01f6, B:132:0x01fc, B:134:0x0202, B:135:0x0210, B:137:0x021b, B:139:0x021e, B:144:0x022c, B:147:0x0239, B:164:0x02af, B:166:0x02b3, B:167:0x02b6, B:44:0x00f4, B:45:0x00f6), top: B:182:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            Method dump skipped, instructions count: 741
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoconsumer.decoder.s.a():void");
    }

    private static void a(EncodedVideoFrame encodedVideoFrame) {
        if (encodedVideoFrame == null) {
            return;
        }
        encodedVideoFrame.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(s sVar, ServerVideoConsumerConfig serverVideoConsumerConfig) {
        if (serverVideoConsumerConfig == null) {
            return;
        }
        sVar.f32329s = serverVideoConsumerConfig.enableVui;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(s sVar, SurfaceTexture surfaceTexture) {
        l.b bVar;
        SurfaceTexture surfaceTexture2 = sVar.f32326p;
        if (surfaceTexture2 == null || surfaceTexture != surfaceTexture2) {
            return;
        }
        sVar.d();
        try {
            bVar = sVar.f32325o.a();
        } catch (InterruptedException unused) {
            LiteavLog.w(sVar.f32311a, "textureholderpool obtain interrupted.");
            bVar = null;
        }
        int i9 = sVar.f32324n;
        com.tencent.liteav.base.util.q qVar = sVar.f32312b;
        bVar.a(36197, i9, qVar.f31029a, qVar.f31030b);
        PixelFrame a10 = bVar.a(sVar.f32323m.d());
        if (a10.getMatrix() == null) {
            a10.setMatrix(new float[16]);
        }
        try {
            surfaceTexture.updateTexImage();
            surfaceTexture.getTransformMatrix(a10.getMatrix());
        } catch (Exception e10) {
            LiteavLog.w(sVar.f32316f.a("updateImage"), sVar.f32311a, "updateTexImage exception: ".concat(String.valueOf(e10)), new Object[0]);
        }
        sVar.f32322l = true;
        long millis = TimeUnit.NANOSECONDS.toMillis(surfaceTexture.getTimestamp());
        if (millis == 0) {
            millis = TimeUnit.MICROSECONDS.toMillis(sVar.f32320j.presentationTimeUs);
        }
        if (LiteavSystemInfo.getSystemOSVersionInt() <= 22) {
            int width = a10.getWidth();
            int height = a10.getHeight();
            com.tencent.liteav.videobase.frame.j jVar = sVar.f32333w;
            if (jVar != null) {
                com.tencent.liteav.base.util.q qVar2 = new com.tencent.liteav.base.util.q(jVar.f31855a, jVar.f31856b);
                if (qVar2.f31029a != width || qVar2.f31030b != height) {
                    sVar.f32333w.a();
                    sVar.f32333w = null;
                }
            }
            if (sVar.f32333w == null) {
                sVar.f32333w = new com.tencent.liteav.videobase.frame.j(width, height);
            }
            if (sVar.f32334x == null) {
                sVar.f32334x = new com.tencent.liteav.videobase.frame.e();
            }
            OpenGlUtils.glViewport(0, 0, width, height);
            com.tencent.liteav.videobase.frame.d a11 = sVar.f32334x.a(width, height);
            sVar.f32333w.a(a10, GLConstants.GLScaleType.CENTER_CROP, a11);
            PixelFrame a12 = a11.a(sVar.f32323m.d());
            GLES20.glFinish();
            a11.release();
            a10.release();
            a10 = a12;
        }
        a10.setTimestamp(millis);
        sVar.f32319i.onDecodeFrame(a10, millis);
        bVar.release();
        a10.release();
        if (sVar.f32331u) {
            sVar.b();
            sVar.f32331u = false;
        }
    }

    private void a(h.c cVar, String str, Object... objArr) {
        this.f32313c.notifyWarning(cVar, str, objArr);
        ba baVar = this.f32319i;
        if (baVar != null) {
            baVar.onDecodeFailed();
        }
    }

    private void a(Runnable runnable) {
        CustomHandler customHandler = this.f32317g;
        if (customHandler != null) {
            if (customHandler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                customHandler.post(runnable);
            }
        }
    }

    private boolean a(a aVar, boolean z10, boolean z11) {
        String str;
        com.tencent.tmediacodec.b.b b10;
        MediaCodec a10;
        MediaFormat mediaFormat = this.f32332v;
        if (mediaFormat == null) {
            String str2 = this.f32315e;
            com.tencent.liteav.base.util.q qVar = this.f32312b;
            mediaFormat = MediaFormat.createVideoFormat(str2, qVar.f31029a, qVar.f31030b);
        }
        MediaFormat mediaFormat2 = mediaFormat;
        if (z10) {
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 30) {
                mediaFormat2.setInteger("low-latency", 1);
            }
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 26 && LiteavSystemInfo.getHardware().toLowerCase().contains("qcom")) {
                mediaFormat2.setInteger("vendor.qti-ext-dec-low-latency.enable", 1);
                mediaFormat2.setInteger("vendor.qti-ext-dec-picture-order.enable", 1);
            } else if (LiteavSystemInfo.getSystemOSVersionInt() >= 29 && LiteavSystemInfo.getHardware().toLowerCase().contains("kirin")) {
                mediaFormat2.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req", 1);
                mediaFormat2.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy", -1);
            } else if (LiteavSystemInfo.getSystemOSVersionInt() >= 26 && LiteavSystemInfo.getHardware().toLowerCase().contains("exynos")) {
                mediaFormat2.setInteger("vendor.rtc-ext-dec-low-latency.enable", 1);
            }
        }
        JSONArray jSONArray = this.f32314d;
        if (jSONArray != null) {
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i9);
                    mediaFormat2.setInteger(jSONObject.optString("key"), jSONObject.optInt("value"));
                } catch (JSONException e10) {
                    LiteavLog.e("HardwareVideoDecoder", "set MediaCodec device related params failed.", e10);
                }
            }
        }
        LiteavLog.i(this.f32311a, "mediaFormat:".concat(String.valueOf(mediaFormat2)));
        try {
            final com.tencent.tmediacodec.b bVar = new com.tencent.tmediacodec.b(mediaFormat2.getString("mime"), b.a.CreateByType);
            aVar.f32338a = bVar;
            bVar.f34516f = z11;
            bVar.f34514d = this.A;
            Surface surface = this.f32327q;
            if (bVar.f34517g) {
                com.tencent.tmediacodec.f.a.d("TMediaCodec", "configure ignored, mediaFormat:" + mediaFormat2 + " surface:" + surface + " crypto:" + ((Object) null) + " flags:0 stack:" + Log.getStackTraceString(new Throwable()));
            } else {
                bVar.f34517g = true;
                boolean z12 = com.tencent.tmediacodec.a.a().f34507b;
                boolean z13 = bVar.f34516f;
                boolean a11 = com.tencent.tmediacodec.f.c.a(bVar.f34518h);
                boolean z14 = z12 && z13;
                boolean z15 = Build.VERSION.SDK_INT >= 23 && !com.tencent.tmediacodec.f.c.a();
                if (com.tencent.tmediacodec.f.a.a()) {
                    com.tencent.tmediacodec.f.a.b("TCodecManager", "reuseEnable getCodec isVideo:" + a11 + " reuseEnable:" + z14 + " globalReuseEnable:" + z12 + " mediaCodecReuseEnable:" + z13 + " canUseSetOutputSurfaceAPI:" + z15 + " ,surface:" + surface);
                }
                bVar.f34511a = z14 && a11 && z15 && surface != null;
                com.tencent.tmediacodec.e.a aVar2 = bVar.f34515e;
                aVar2.f34617f = "";
                aVar2.f34612a.clear();
                aVar2.f34613b = System.currentTimeMillis();
                com.tencent.tmediacodec.e.a aVar3 = bVar.f34515e;
                aVar3.f34612a.put("createCodec", Long.valueOf(System.currentTimeMillis() - aVar3.f34613b));
                com.tencent.tmediacodec.e.a aVar4 = bVar.f34515e;
                aVar4.f34615d = bVar.f34511a;
                aVar4.f34613b = System.currentTimeMillis();
                try {
                    com.tencent.tmediacodec.a a12 = com.tencent.tmediacodec.a.a();
                    if (com.tencent.tmediacodec.f.a.a()) {
                        com.tencent.tmediacodec.f.a.b("TCodecManager", "configureStart videoPoolInfo:" + a12.f34509d.a());
                    }
                    a12.f34508c = true;
                    a12.f34510e = true;
                    boolean a13 = com.tencent.tmediacodec.f.c.a(bVar.f34518h);
                    if (com.tencent.tmediacodec.f.a.a()) {
                        com.tencent.tmediacodec.f.a.b("TCodecManager", "getCodec isVideo:" + a13 + " codecFinalReuseEnable:" + bVar.f34511a);
                    }
                    if (!bVar.f34511a) {
                        bVar.f34512b = false;
                        if (com.tencent.tmediacodec.f.a.a()) {
                            com.tencent.tmediacodec.f.a.b("TCodecManager", "getCodec return DirectCodecWrapper for mediaFormat:" + mediaFormat2 + " codecFinalReuseEnable:false surface:" + surface);
                        }
                        b10 = com.tencent.tmediacodec.a.a(mediaFormat2, bVar);
                    } else if (!a13) {
                        if (com.tencent.tmediacodec.f.a.a()) {
                            com.tencent.tmediacodec.f.a.b("TCodecManager", "getCodec isn't video mediaformat, return direct");
                        }
                        b10 = com.tencent.tmediacodec.a.a(mediaFormat2, bVar);
                    } else {
                        com.tencent.tmediacodec.b.d a14 = com.tencent.tmediacodec.b.d.a(mediaFormat2);
                        com.tencent.tmediacodec.c.b bVar2 = a12.f34509d.f34586a;
                        com.tencent.tmediacodec.b.e a15 = bVar2.a(a14);
                        if (com.tencent.tmediacodec.f.a.a()) {
                            com.tencent.tmediacodec.f.a.b("CodecWrapperPool", "obtain codecWrapper:".concat(String.valueOf(a15)));
                        }
                        if (a15 != null) {
                            bVar2.f34592b.remove(a15);
                        } else {
                            a15 = null;
                        }
                        if (com.tencent.tmediacodec.f.a.a()) {
                            com.tencent.tmediacodec.f.a.b("CodecWrapperManager", "obtainCodecWrapper codecWrapper:".concat(String.valueOf(a15)));
                        }
                        com.tencent.tmediacodec.b.d.a(a14.f34529a);
                        if (a15 != null) {
                            a.b a16 = a15.a(a14);
                            if (a16 != a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION && a16 != a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION) {
                                if (a16 == a.b.KEEP_CODEC_RESULT_NO && com.tencent.tmediacodec.f.a.a()) {
                                    com.tencent.tmediacodec.f.a.d("TCodecManager", "getCodec not reuse, isVideo:" + a13 + " reuseType:" + a16);
                                }
                            }
                            if (com.tencent.tmediacodec.f.a.a()) {
                                com.tencent.tmediacodec.f.a.b("TCodecManager", "getCodec reuse, isVideo:" + a13 + " reuseType:" + a16);
                            }
                            a15.b();
                            a15.c();
                            bVar.f34512b = true;
                            b10 = a15;
                        }
                        if (com.tencent.tmediacodec.f.a.a()) {
                            com.tencent.tmediacodec.f.a.b("TCodecManager", "getCodec not reuse, for can't find reUseAble CodecWrapper. isVideo:".concat(String.valueOf(a13)));
                        }
                        bVar.f34512b = false;
                        b10 = com.tencent.tmediacodec.a.b(mediaFormat2, bVar);
                        b10.b();
                    }
                    if (a12.f34507b && (b10 instanceof com.tencent.tmediacodec.b.f)) {
                        final com.tencent.tmediacodec.c.a aVar5 = a12.f34509d;
                        final com.tencent.tmediacodec.b.e eVar = (com.tencent.tmediacodec.b.e) b10;
                        if (com.tencent.tmediacodec.f.a.a()) {
                            com.tencent.tmediacodec.f.a.b("CodecWrapperManager", "transToRunning codecWrapper:".concat(String.valueOf(eVar)));
                        }
                        aVar5.f34586a.b(eVar);
                        aVar5.f34587b.a(eVar);
                        com.tencent.tmediacodec.f.d.c(new Runnable() { // from class: com.tencent.tmediacodec.c.a.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                    b10.a(bVar.f34514d);
                    b10.a(mediaFormat2, surface);
                    if (com.tencent.tmediacodec.f.a.a()) {
                        com.tencent.tmediacodec.f.a.b("TCodecManager", "configureEnd   videoPoolInfo:" + a12.f34509d.a());
                    }
                    bVar.f34513c = b10;
                } catch (IOException e11) {
                    com.tencent.tmediacodec.f.a.b("TMediaCodec", "createCodec mediaFormat:".concat(String.valueOf(mediaFormat2)), e11);
                }
                com.tencent.tmediacodec.e.a aVar6 = bVar.f34515e;
                aVar6.f34614c = bVar.f34512b;
                aVar6.f34616e = true;
                aVar6.f34612a.put("configCodec", Long.valueOf(System.currentTimeMillis() - aVar6.f34613b));
                com.tencent.tmediacodec.f.d.c(new Runnable() { // from class: com.tencent.tmediacodec.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        b bVar3 = bVar;
                        com.tencent.tmediacodec.b.b bVar4 = bVar3.f34513c;
                        if (bVar4 != null) {
                            bVar4.a(bVar3.f34514d);
                        }
                        b bVar5 = bVar;
                        if (bVar5.f34514d != null) {
                            boolean z16 = bVar5.f34512b;
                        }
                    }
                });
            }
            com.tencent.tmediacodec.b.b bVar3 = aVar.f32338a.f34513c;
            if (bVar3 != null && (a10 = bVar3.a()) != null) {
                a10.setVideoScalingMode(1);
            }
            final com.tencent.tmediacodec.b bVar4 = aVar.f32338a;
            if (com.tencent.tmediacodec.f.a.a()) {
                com.tencent.tmediacodec.f.a.b("TMediaCodec", "start codecWrapper:" + bVar4.f34513c);
            }
            bVar4.f34515e.f34613b = System.currentTimeMillis();
            com.tencent.tmediacodec.b.b bVar5 = bVar4.f34513c;
            if (bVar5 != null) {
                bVar5.d();
            }
            com.tencent.tmediacodec.e.a aVar7 = bVar4.f34515e;
            aVar7.f34612a.put("startCodec", Long.valueOf(System.currentTimeMillis() - aVar7.f34613b));
            com.tencent.tmediacodec.f.d.c(new Runnable() { // from class: com.tencent.tmediacodec.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    b bVar6 = bVar4;
                    com.tencent.tmediacodec.a.a aVar8 = bVar6.f34514d;
                    if (aVar8 != null) {
                        Boolean valueOf = Boolean.valueOf(bVar6.f34512b);
                        com.tencent.tmediacodec.e.a aVar9 = bVar4.f34515e;
                        if (TextUtils.isEmpty(aVar9.f34617f)) {
                            StringBuilder sb2 = new StringBuilder("{");
                            sb2.append("\"isVideo\":");
                            sb2.append(aVar9.f34618g + " ,");
                            if (aVar9.f34616e) {
                                sb2.append("\"isReuse\":");
                                sb2.append(aVar9.f34614c + " ,");
                            }
                            sb2.append("\"reuseEnable\":");
                            sb2.append(aVar9.f34615d + " ,");
                            long j10 = 0;
                            for (Map.Entry<String, Long> entry : aVar9.f34612a.entrySet()) {
                                if (entry != null) {
                                    j10 += entry.getValue().longValue();
                                }
                                sb2.append("\"" + ((Object) entry.getKey()) + "\":");
                                sb2.append(entry.getValue().longValue() + " ,");
                            }
                            sb2.append("\"totalCodec\":");
                            sb2.append(j10);
                            sb2.append("}");
                            aVar9.f34617f = sb2.toString();
                        }
                        aVar8.a(valueOf, aVar9.f34617f);
                    }
                }
            });
            LiteavLog.i(this.f32311a, "Start MediaCodec success.");
            return true;
        } catch (Exception e12) {
            LiteavLog.e(this.f32311a, "Start MediaCodec failed.", e12);
            a(aVar.f32338a);
            aVar.f32338a = null;
            h.c cVar = h.c.WARNING_VIDEO_DECODE_START_FAILED;
            if (e12 instanceof IllegalArgumentException) {
                cVar = h.c.WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_ARGUMENT;
                str = "VideoDecode: illegal argument, Start decoder failed";
            } else if (e12 instanceof IllegalStateException) {
                cVar = h.c.WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_STATE;
                str = "VideoDecode: illegal state, Start decoder failed";
            } else {
                str = "VideoDecode: Start decoder failed";
            }
            aVar.f32339b = cVar;
            aVar.f32340c = str;
            aVar.f32341d = e12;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(s sVar, Object obj, ba baVar) {
        LiteavLog.i(sVar.f32311a, "Start internal");
        if (sVar.f32323m != null) {
            LiteavLog.w(sVar.f32311a, "Decoder already started.");
            return;
        }
        sVar.f32319i = baVar;
        if (sVar.a(obj)) {
            a aVar = new a((byte) 0);
            boolean a10 = sVar.a(aVar, sVar.f32335y, sVar.f32336z);
            if (!a10 && !sVar.a(aVar, false, false)) {
                h.c cVar = aVar.f32339b;
                sVar.a(cVar, "decoder config fail, message:" + aVar.f32340c + " exception:" + aVar.f32341d.getMessage(), new Object[0]);
                return;
            }
            sVar.f32318h = aVar.f32338a;
            ba baVar2 = sVar.f32319i;
            if (baVar2 != null) {
                baVar2.onDecodeLatencyChanged(sVar.f32335y && a10);
            }
            sVar.f32313c.notifyEvent(h.b.EVT_VIDEO_DECODE_START_SUCCESS, "Start decoder success", new Object[0]);
        }
    }
}
