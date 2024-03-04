package com.tencent.liteav.videoconsumer.decoder;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
import com.tencent.liteav.videoconsumer.decoder.az;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public final class d {
    long A;
    float C;

    /* renamed from: a  reason: collision with root package name */
    String f32245a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final InterfaceC0330d f32246b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final IVideoReporter f32247c;

    /* renamed from: e  reason: collision with root package name */
    boolean f32249e;

    /* renamed from: f  reason: collision with root package name */
    boolean f32250f;

    /* renamed from: h  reason: collision with root package name */
    az.a f32252h;

    /* renamed from: j  reason: collision with root package name */
    e f32254j;

    /* renamed from: k  reason: collision with root package name */
    long f32255k;

    /* renamed from: l  reason: collision with root package name */
    long f32256l;

    /* renamed from: p  reason: collision with root package name */
    boolean f32260p;

    /* renamed from: q  reason: collision with root package name */
    int f32261q;

    /* renamed from: r  reason: collision with root package name */
    int f32262r;

    /* renamed from: s  reason: collision with root package name */
    boolean f32263s;

    /* renamed from: u  reason: collision with root package name */
    int f32265u;

    /* renamed from: v  reason: collision with root package name */
    boolean f32266v;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    final SpsInfo f32248d = new SpsInfo();

    /* renamed from: g  reason: collision with root package name */
    VideoDecodeController.DecodeStrategy f32251g = VideoDecodeController.DecodeStrategy.f32164a;

    /* renamed from: i  reason: collision with root package name */
    boolean f32253i = false;

    /* renamed from: m  reason: collision with root package name */
    int f32257m = 8;

    /* renamed from: n  reason: collision with root package name */
    int f32258n = 6;

    /* renamed from: o  reason: collision with root package name */
    boolean f32259o = false;

    /* renamed from: t  reason: collision with root package name */
    int f32264t = 0;

    /* renamed from: w  reason: collision with root package name */
    boolean f32267w = false;

    /* renamed from: x  reason: collision with root package name */
    boolean f32268x = true;

    /* renamed from: y  reason: collision with root package name */
    boolean f32269y = false;

    /* renamed from: z  reason: collision with root package name */
    VideoDecoderDef.ConsumerScene f32270z = VideoDecoderDef.ConsumerScene.UNKNOWN;
    final com.tencent.liteav.base.b.a B = new com.tencent.liteav.base.b.a(1000);
    long D = 0;
    long E = 0;
    int F = 0;
    boolean G = false;
    int H = 1;

    /* renamed from: com.tencent.liteav.videoconsumer.decoder.d$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32271a;

        static {
            int[] iArr = new int[c.values().length];
            f32271a = iArr;
            try {
                iArr[c.SWITCH_TO_SOFTWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32271a[c.SWITCH_TO_HARDWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32271a[c.RESTART_DECODER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32271a[c.CONTINUE_DECODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes4.dex */
    interface a {
        b a(EncodedVideoFrame encodedVideoFrame);
    }

    /* loaded from: classes4.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        public final c f32272a;

        /* renamed from: b  reason: collision with root package name */
        public final e f32273b;

        public b(c cVar, e eVar) {
            this.f32272a = cVar;
            this.f32273b = eVar;
            if (cVar != c.SWITCH_TO_HARDWARE && cVar != c.SWITCH_TO_SOFTWARE && eVar != e.NONE) {
                throw new RuntimeException("SwitchReason must be NONE.)");
            }
        }

        public final String toString() {
            return "CheckResult{instruction=" + this.f32272a + ", reason=" + this.f32273b + '}';
        }
    }

    /* loaded from: classes4.dex */
    public enum c {
        CONTINUE_DECODE(0),
        DROP_FRAME(1),
        RESTART_DECODER(2),
        SWITCH_TO_HARDWARE(3),
        SWITCH_TO_SOFTWARE(3),
        REQUEST_KEY_FRAME(4),
        REPORT_DECODE_ERROR(5);
        
        private final int mPriority;

        c(int i9) {
            this.mPriority = i9;
        }
    }

    /* renamed from: com.tencent.liteav.videoconsumer.decoder.d$d  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0330d {
        SpsInfo a(boolean z10, ByteBuffer byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum e {
        NONE(0),
        RPS_MODE_UPDATED(1),
        SVC_MODE_UPDATED(2),
        HARDWARE_DECODER_ABNORMAL(3),
        LOW_RESOLUTION(4),
        DECODE_ERROR(5),
        OTHERS_DO_NOT_SUPPORT_H265(6),
        AV1_SUPPORT(7);
        
        final int mPriority;

        e(int i9) {
            this.mPriority = i9;
        }
    }

    public d(@NonNull InterfaceC0330d interfaceC0330d, @NonNull IVideoReporter iVideoReporter, boolean z10, boolean z11) {
        this.f32245a = "DecoderSupervisor";
        this.f32246b = interfaceC0330d;
        this.f32247c = iVideoReporter;
        this.f32249e = z10;
        this.f32250f = z11;
        String str = this.f32245a + "_" + hashCode();
        this.f32245a = str;
        LiteavLog.i(str, "mIsSW265Supported:" + z10 + ",mIsHW265Supported:" + z11);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(EncodedVideoFrame encodedVideoFrame) {
        if (!encodedVideoFrame.isH265() || this.f32250f) {
            VideoDecodeController.DecodeStrategy decodeStrategy = this.f32251g;
            return decodeStrategy == VideoDecodeController.DecodeStrategy.f32166c || decodeStrategy == VideoDecodeController.DecodeStrategy.f32164a || decodeStrategy == VideoDecodeController.DecodeStrategy.f32165b;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(EncodedVideoFrame encodedVideoFrame) {
        return !encodedVideoFrame.isH265() || this.f32249e;
    }

    public final boolean c() {
        return !this.f32268x && this.f32259o;
    }

    public final void b() {
        this.f32265u = 0;
        this.f32266v = false;
        this.f32260p = false;
        this.f32262r = 0;
        this.D = 0L;
        this.f32263s = false;
        this.f32248d.set(new SpsInfo());
        this.f32256l = 0L;
        this.f32255k = 0L;
        this.f32261q = 0;
        this.f32252h = null;
        this.f32254j = e.NONE;
        this.f32264t = 0;
        this.C = 0.0f;
        this.A = 0L;
        this.G = false;
        this.B.f30882a = SystemClock.elapsedRealtime();
        this.H = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f32247c.notifyError(h.a.ERR_VIDEO_NO_AVAILABLE_HEVC_DECODERS, "no available hevc decoders", new Object[0]);
    }
}
