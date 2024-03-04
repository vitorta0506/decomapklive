package i2;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import c2.a0;
import c2.b0;
import c2.e0;
import c2.f0;
import c2.l;
import c2.m;
import c2.n;
import c2.q;
import c2.r;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.v;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.ImmutableList;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes.dex */
public class e implements l {

    /* renamed from: c0  reason: collision with root package name */
    public static final r f40868c0 = new r() { // from class: i2.d
        @Override // c2.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // c2.r
        public final l[] b() {
            l[] A;
            A = e.A();
            return A;
        }
    };

    /* renamed from: d0  reason: collision with root package name */
    private static final byte[] f40869d0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: e0  reason: collision with root package name */
    private static final byte[] f40870e0 = l0.h0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: f0  reason: collision with root package name */
    private static final byte[] f40871f0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: g0  reason: collision with root package name */
    private static final byte[] f40872g0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    /* renamed from: h0  reason: collision with root package name */
    private static final UUID f40873h0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: i0  reason: collision with root package name */
    private static final Map<String, Integer> f40874i0;
    private long A;
    private long B;
    @Nullable
    private s C;
    @Nullable
    private s D;
    private boolean E;
    private boolean F;
    private int G;
    private long H;
    private long I;
    private int J;
    private int K;
    private int[] L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private boolean X;
    private int Y;
    private byte Z;

    /* renamed from: a  reason: collision with root package name */
    private final i2.c f40875a;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f40876a0;

    /* renamed from: b  reason: collision with root package name */
    private final g f40877b;

    /* renamed from: b0  reason: collision with root package name */
    private n f40878b0;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<c> f40879c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f40880d;

    /* renamed from: e  reason: collision with root package name */
    private final b0 f40881e;

    /* renamed from: f  reason: collision with root package name */
    private final b0 f40882f;

    /* renamed from: g  reason: collision with root package name */
    private final b0 f40883g;

    /* renamed from: h  reason: collision with root package name */
    private final b0 f40884h;

    /* renamed from: i  reason: collision with root package name */
    private final b0 f40885i;

    /* renamed from: j  reason: collision with root package name */
    private final b0 f40886j;

    /* renamed from: k  reason: collision with root package name */
    private final b0 f40887k;

    /* renamed from: l  reason: collision with root package name */
    private final b0 f40888l;

    /* renamed from: m  reason: collision with root package name */
    private final b0 f40889m;

    /* renamed from: n  reason: collision with root package name */
    private final b0 f40890n;

    /* renamed from: o  reason: collision with root package name */
    private ByteBuffer f40891o;

    /* renamed from: p  reason: collision with root package name */
    private long f40892p;

    /* renamed from: q  reason: collision with root package name */
    private long f40893q;

    /* renamed from: r  reason: collision with root package name */
    private long f40894r;

    /* renamed from: s  reason: collision with root package name */
    private long f40895s;

    /* renamed from: t  reason: collision with root package name */
    private long f40896t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private c f40897u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f40898v;

    /* renamed from: w  reason: collision with root package name */
    private int f40899w;

    /* renamed from: x  reason: collision with root package name */
    private long f40900x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f40901y;

    /* renamed from: z  reason: collision with root package name */
    private long f40902z;

    /* loaded from: classes.dex */
    private final class b implements i2.b {
        private b() {
        }

        @Override // i2.b
        public void a(int i9) throws ParserException {
            e.this.o(i9);
        }

        @Override // i2.b
        public void b(int i9, double d10) throws ParserException {
            e.this.r(i9, d10);
        }

        @Override // i2.b
        public void c(int i9, long j10) throws ParserException {
            e.this.x(i9, j10);
        }

        @Override // i2.b
        public int d(int i9) {
            return e.this.u(i9);
        }

        @Override // i2.b
        public boolean e(int i9) {
            return e.this.z(i9);
        }

        @Override // i2.b
        public void f(int i9, String str) throws ParserException {
            e.this.H(i9, str);
        }

        @Override // i2.b
        public void g(int i9, int i10, m mVar) throws IOException {
            e.this.l(i9, i10, mVar);
        }

        @Override // i2.b
        public void h(int i9, long j10, long j11) throws ParserException {
            e.this.G(i9, j10, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class c {
        public byte[] N;
        public f0 T;
        public boolean U;
        public e0 X;
        public int Y;

        /* renamed from: a  reason: collision with root package name */
        public String f40904a;

        /* renamed from: b  reason: collision with root package name */
        public String f40905b;

        /* renamed from: c  reason: collision with root package name */
        public int f40906c;

        /* renamed from: d  reason: collision with root package name */
        public int f40907d;

        /* renamed from: e  reason: collision with root package name */
        public int f40908e;

        /* renamed from: f  reason: collision with root package name */
        public int f40909f;

        /* renamed from: g  reason: collision with root package name */
        private int f40910g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f40911h;

        /* renamed from: i  reason: collision with root package name */
        public byte[] f40912i;

        /* renamed from: j  reason: collision with root package name */
        public e0.a f40913j;

        /* renamed from: k  reason: collision with root package name */
        public byte[] f40914k;

        /* renamed from: l  reason: collision with root package name */
        public DrmInitData f40915l;

        /* renamed from: m  reason: collision with root package name */
        public int f40916m = -1;

        /* renamed from: n  reason: collision with root package name */
        public int f40917n = -1;

        /* renamed from: o  reason: collision with root package name */
        public int f40918o = -1;

        /* renamed from: p  reason: collision with root package name */
        public int f40919p = -1;

        /* renamed from: q  reason: collision with root package name */
        public int f40920q = 0;

        /* renamed from: r  reason: collision with root package name */
        public int f40921r = -1;

        /* renamed from: s  reason: collision with root package name */
        public float f40922s = 0.0f;

        /* renamed from: t  reason: collision with root package name */
        public float f40923t = 0.0f;

        /* renamed from: u  reason: collision with root package name */
        public float f40924u = 0.0f;

        /* renamed from: v  reason: collision with root package name */
        public byte[] f40925v = null;

        /* renamed from: w  reason: collision with root package name */
        public int f40926w = -1;

        /* renamed from: x  reason: collision with root package name */
        public boolean f40927x = false;

        /* renamed from: y  reason: collision with root package name */
        public int f40928y = -1;

        /* renamed from: z  reason: collision with root package name */
        public int f40929z = -1;
        public int A = -1;
        public int B = 1000;
        public int C = 200;
        public float D = -1.0f;
        public float E = -1.0f;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public float L = -1.0f;
        public float M = -1.0f;
        public int O = 1;
        public int P = -1;
        public int Q = 8000;
        public long R = 0;
        public long S = 0;
        public boolean V = true;
        private String W = "eng";

        protected c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            com.google.android.exoplayer2.util.a.e(this.X);
        }

        private byte[] g(String str) throws ParserException {
            byte[] bArr = this.f40914k;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + str, null);
        }

        @Nullable
        private byte[] h() {
            if (this.D == -1.0f || this.E == -1.0f || this.F == -1.0f || this.G == -1.0f || this.H == -1.0f || this.I == -1.0f || this.J == -1.0f || this.K == -1.0f || this.L == -1.0f || this.M == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            order.put((byte) 0);
            order.putShort((short) ((this.D * 50000.0f) + 0.5f));
            order.putShort((short) ((this.E * 50000.0f) + 0.5f));
            order.putShort((short) ((this.F * 50000.0f) + 0.5f));
            order.putShort((short) ((this.G * 50000.0f) + 0.5f));
            order.putShort((short) ((this.H * 50000.0f) + 0.5f));
            order.putShort((short) ((this.I * 50000.0f) + 0.5f));
            order.putShort((short) ((this.J * 50000.0f) + 0.5f));
            order.putShort((short) ((this.K * 50000.0f) + 0.5f));
            order.putShort((short) (this.L + 0.5f));
            order.putShort((short) (this.M + 0.5f));
            order.putShort((short) this.B);
            order.putShort((short) this.C);
            return bArr;
        }

        private static Pair<String, List<byte[]>> k(b0 b0Var) throws ParserException {
            try {
                b0Var.Q(16);
                long t10 = b0Var.t();
                if (t10 == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (t10 == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (t10 == 826496599) {
                    byte[] d10 = b0Var.d();
                    for (int e10 = b0Var.e() + 20; e10 < d10.length - 4; e10++) {
                        if (d10[e10] == 0 && d10[e10 + 1] == 0 && d10[e10 + 2] == 1 && d10[e10 + 3] == 15) {
                            return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(d10, e10, d10.length)));
                        }
                    }
                    throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
                }
                com.google.android.exoplayer2.util.r.i("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>("video/x-unknown", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        private static boolean l(b0 b0Var) throws ParserException {
            try {
                int v10 = b0Var.v();
                if (v10 == 1) {
                    return true;
                }
                if (v10 == 65534) {
                    b0Var.P(24);
                    if (b0Var.w() == e.f40873h0.getMostSignificantBits()) {
                        if (b0Var.w() == e.f40873h0.getLeastSignificantBits()) {
                            return true;
                        }
                    }
                    return false;
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        private static List<byte[]> m(byte[] bArr) throws ParserException {
            try {
                if (bArr[0] == 2) {
                    int i9 = 1;
                    int i10 = 0;
                    while ((bArr[i9] & UByte.MAX_VALUE) == 255) {
                        i10 += 255;
                        i9++;
                    }
                    int i11 = i9 + 1;
                    int i12 = i10 + (bArr[i9] & 255);
                    int i13 = 0;
                    while ((bArr[i11] & UByte.MAX_VALUE) == 255) {
                        i13 += 255;
                        i11++;
                    }
                    int i14 = i11 + 1;
                    int i15 = i13 + (bArr[i11] & 255);
                    if (bArr[i14] == 1) {
                        byte[] bArr2 = new byte[i12];
                        System.arraycopy(bArr, i14, bArr2, 0, i12);
                        int i16 = i14 + i12;
                        if (bArr[i16] == 3) {
                            int i17 = i16 + i15;
                            if (bArr[i17] == 5) {
                                byte[] bArr3 = new byte[bArr.length - i17];
                                System.arraycopy(bArr, i17, bArr3, 0, bArr.length - i17);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                        }
                        throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                    }
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean o(boolean z10) {
            return "A_OPUS".equals(this.f40905b) ? z10 : this.f40909f > 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public void i(n nVar, int i9) throws ParserException {
            char c10;
            List<byte[]> singletonList;
            int W;
            String str;
            int i10;
            int i11;
            List<byte[]> list;
            String str2;
            int i12;
            int i13;
            int i14;
            int i15;
            k3.d a10;
            String str3 = this.f40905b;
            str3.hashCode();
            switch (str3.hashCode()) {
                case -2095576542:
                    if (str3.equals("V_MPEG4/ISO/AP")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -2095575984:
                    if (str3.equals("V_MPEG4/ISO/SP")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1985379776:
                    if (str3.equals("A_MS/ACM")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1784763192:
                    if (str3.equals("A_TRUEHD")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1730367663:
                    if (str3.equals("A_VORBIS")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1482641358:
                    if (str3.equals("A_MPEG/L2")) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1482641357:
                    if (str3.equals("A_MPEG/L3")) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1373388978:
                    if (str3.equals("V_MS/VFW/FOURCC")) {
                        c10 = 7;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -933872740:
                    if (str3.equals("S_DVBSUB")) {
                        c10 = '\b';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -538363189:
                    if (str3.equals("V_MPEG4/ISO/ASP")) {
                        c10 = '\t';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -538363109:
                    if (str3.equals("V_MPEG4/ISO/AVC")) {
                        c10 = '\n';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -425012669:
                    if (str3.equals("S_VOBSUB")) {
                        c10 = 11;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -356037306:
                    if (str3.equals("A_DTS/LOSSLESS")) {
                        c10 = '\f';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 62923557:
                    if (str3.equals("A_AAC")) {
                        c10 = '\r';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 62923603:
                    if (str3.equals("A_AC3")) {
                        c10 = 14;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 62927045:
                    if (str3.equals("A_DTS")) {
                        c10 = 15;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 82318131:
                    if (str3.equals("V_AV1")) {
                        c10 = 16;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 82338133:
                    if (str3.equals("V_VP8")) {
                        c10 = 17;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 82338134:
                    if (str3.equals("V_VP9")) {
                        c10 = 18;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 99146302:
                    if (str3.equals("S_HDMV/PGS")) {
                        c10 = 19;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 444813526:
                    if (str3.equals("V_THEORA")) {
                        c10 = 20;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 542569478:
                    if (str3.equals("A_DTS/EXPRESS")) {
                        c10 = 21;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 635596514:
                    if (str3.equals("A_PCM/FLOAT/IEEE")) {
                        c10 = 22;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 725948237:
                    if (str3.equals("A_PCM/INT/BIG")) {
                        c10 = 23;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 725957860:
                    if (str3.equals("A_PCM/INT/LIT")) {
                        c10 = 24;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 738597099:
                    if (str3.equals("S_TEXT/ASS")) {
                        c10 = 25;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 855502857:
                    if (str3.equals("V_MPEGH/ISO/HEVC")) {
                        c10 = 26;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1045209816:
                    if (str3.equals("S_TEXT/WEBVTT")) {
                        c10 = 27;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1422270023:
                    if (str3.equals("S_TEXT/UTF8")) {
                        c10 = 28;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1809237540:
                    if (str3.equals("V_MPEG2")) {
                        c10 = 29;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1950749482:
                    if (str3.equals("A_EAC3")) {
                        c10 = 30;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1950789798:
                    if (str3.equals("A_FLAC")) {
                        c10 = 31;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1951062397:
                    if (str3.equals("A_OPUS")) {
                        c10 = ' ';
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            String str4 = "audio/raw";
            switch (c10) {
                case 0:
                case 1:
                case '\t':
                    byte[] bArr = this.f40914k;
                    singletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str4 = "video/mp4v-es";
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 2:
                    if (l(new b0(g(this.f40905b)))) {
                        W = l0.W(this.P);
                        if (W == 0) {
                            com.google.android.exoplayer2.util.r.i("MatroskaExtractor", "Unsupported PCM bit depth: " + this.P + ". Setting mimeType to audio/x-unknown");
                        }
                        i10 = W;
                        singletonList = null;
                        str = null;
                        i11 = -1;
                        break;
                    } else {
                        com.google.android.exoplayer2.util.r.i("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                    }
                    singletonList = null;
                    str = null;
                    str4 = "audio/x-unknown";
                    i10 = -1;
                    i11 = -1;
                case 3:
                    this.T = new f0();
                    str4 = "audio/true-hd";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 4:
                    singletonList = m(g(this.f40905b));
                    str4 = "audio/vorbis";
                    str = null;
                    i10 = -1;
                    i11 = 8192;
                    break;
                case 5:
                    str4 = "audio/mpeg-L2";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = 4096;
                    break;
                case 6:
                    str4 = "audio/mpeg";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = 4096;
                    break;
                case 7:
                    Pair<String, List<byte[]>> k10 = k(new b0(g(this.f40905b)));
                    str4 = (String) k10.first;
                    singletonList = (List) k10.second;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case '\b':
                    byte[] bArr2 = new byte[4];
                    System.arraycopy(g(this.f40905b), 0, bArr2, 0, 4);
                    singletonList = ImmutableList.of(bArr2);
                    str4 = "application/dvbsubs";
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case '\n':
                    k3.a b10 = k3.a.b(new b0(g(this.f40905b)));
                    list = b10.f53516a;
                    this.Y = b10.f53517b;
                    str2 = b10.f53521f;
                    str4 = TPDecoderType.TP_CODEC_MIMETYPE_AVC;
                    i10 = -1;
                    i11 = -1;
                    List<byte[]> list2 = list;
                    str = str2;
                    singletonList = list2;
                    break;
                case 11:
                    singletonList = ImmutableList.of(g(this.f40905b));
                    str = null;
                    str4 = "application/vobsub";
                    i10 = -1;
                    i11 = -1;
                    break;
                case '\f':
                    str4 = "audio/vnd.dts.hd";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case '\r':
                    singletonList = Collections.singletonList(g(this.f40905b));
                    a.b e10 = com.google.android.exoplayer2.audio.a.e(this.f40914k);
                    this.Q = e10.f5439a;
                    this.O = e10.f5440b;
                    str = e10.f5441c;
                    str4 = "audio/mp4a-latm";
                    i10 = -1;
                    i11 = -1;
                    break;
                case 14:
                    str4 = "audio/ac3";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 15:
                case 21:
                    str4 = "audio/vnd.dts";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 16:
                    str4 = TPDecoderType.TP_CODEC_MIMETYPE_AV1;
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 17:
                    str4 = TPDecoderType.TP_CODEC_MIMETYPE_VP8;
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 18:
                    str4 = TPDecoderType.TP_CODEC_MIMETYPE_VP9;
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 19:
                    singletonList = null;
                    str = null;
                    str4 = "application/pgs";
                    i10 = -1;
                    i11 = -1;
                    break;
                case 20:
                    str4 = "video/x-unknown";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 22:
                    if (this.P == 32) {
                        singletonList = null;
                        str = null;
                        i10 = 4;
                        i11 = -1;
                        break;
                    } else {
                        com.google.android.exoplayer2.util.r.i("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.P + ". Setting mimeType to audio/x-unknown");
                        singletonList = null;
                        str = null;
                        str4 = "audio/x-unknown";
                        i10 = -1;
                        i11 = -1;
                    }
                case 23:
                    int i16 = this.P;
                    if (i16 == 8) {
                        singletonList = null;
                        str = null;
                        i10 = 3;
                    } else if (i16 == 16) {
                        singletonList = null;
                        str = null;
                        i10 = 268435456;
                    } else {
                        com.google.android.exoplayer2.util.r.i("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.P + ". Setting mimeType to audio/x-unknown");
                        singletonList = null;
                        str = null;
                        str4 = "audio/x-unknown";
                        i10 = -1;
                    }
                    i11 = -1;
                    break;
                case 24:
                    W = l0.W(this.P);
                    if (W == 0) {
                        com.google.android.exoplayer2.util.r.i("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.P + ". Setting mimeType to audio/x-unknown");
                        singletonList = null;
                        str = null;
                        str4 = "audio/x-unknown";
                        i10 = -1;
                        i11 = -1;
                        break;
                    }
                    i10 = W;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                case 25:
                    singletonList = ImmutableList.of(e.f40870e0, g(this.f40905b));
                    str = null;
                    str4 = "text/x-ssa";
                    i10 = -1;
                    i11 = -1;
                    break;
                case 26:
                    k3.f a11 = k3.f.a(new b0(g(this.f40905b)));
                    list = a11.f53546a;
                    this.Y = a11.f53547b;
                    str2 = a11.f53551f;
                    str4 = "video/hevc";
                    i10 = -1;
                    i11 = -1;
                    List<byte[]> list22 = list;
                    str = str2;
                    singletonList = list22;
                    break;
                case 27:
                    singletonList = null;
                    str = null;
                    str4 = "text/vtt";
                    i10 = -1;
                    i11 = -1;
                    break;
                case 28:
                    str4 = "application/x-subrip";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 29:
                    str4 = "video/mpeg2";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 30:
                    str4 = "audio/eac3";
                    singletonList = null;
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case 31:
                    singletonList = Collections.singletonList(g(this.f40905b));
                    str4 = "audio/flac";
                    str = null;
                    i10 = -1;
                    i11 = -1;
                    break;
                case ' ':
                    singletonList = new ArrayList<>(3);
                    singletonList.add(g(this.f40905b));
                    ByteBuffer allocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    singletonList.add(allocate.order(byteOrder).putLong(this.R).array());
                    singletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.S).array());
                    str4 = "audio/opus";
                    str = null;
                    i10 = -1;
                    i11 = 5760;
                    break;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
            byte[] bArr3 = this.N;
            if (bArr3 != null && (a10 = k3.d.a(new b0(bArr3))) != null) {
                str = a10.f53531c;
                str4 = TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION;
            }
            String str5 = str4;
            int i17 = (this.U ? 2 : 0) | (this.V ? 1 : 0) | 0;
            k1.b bVar = new k1.b();
            if (v.l(str5)) {
                bVar.H(this.O).f0(this.Q).Y(i10);
                i12 = 1;
            } else if (v.o(str5)) {
                if (this.f40920q == 0) {
                    int i18 = this.f40918o;
                    i13 = -1;
                    if (i18 == -1) {
                        i18 = this.f40916m;
                    }
                    this.f40918o = i18;
                    int i19 = this.f40919p;
                    if (i19 == -1) {
                        i19 = this.f40917n;
                    }
                    this.f40919p = i19;
                } else {
                    i13 = -1;
                }
                float f10 = -1.0f;
                if (this.f40918o != i13 && (i15 = this.f40919p) != i13) {
                    f10 = (this.f40917n * i14) / (this.f40916m * i15);
                }
                k3.c cVar = this.f40927x ? new k3.c(this.f40928y, this.A, this.f40929z, h()) : null;
                if (this.f40904a != null && e.f40874i0.containsKey(this.f40904a)) {
                    i13 = ((Integer) e.f40874i0.get(this.f40904a)).intValue();
                }
                if (this.f40921r == 0 && Float.compare(this.f40922s, 0.0f) == 0 && Float.compare(this.f40923t, 0.0f) == 0) {
                    if (Float.compare(this.f40924u, 0.0f) == 0) {
                        i13 = 0;
                    } else if (Float.compare(this.f40923t, 90.0f) == 0) {
                        i13 = 90;
                    } else if (Float.compare(this.f40923t, -180.0f) == 0 || Float.compare(this.f40923t, 180.0f) == 0) {
                        i13 = 180;
                    } else if (Float.compare(this.f40923t, -90.0f) == 0) {
                        i13 = 270;
                    }
                }
                bVar.j0(this.f40916m).Q(this.f40917n).a0(f10).d0(i13).b0(this.f40925v).h0(this.f40926w).J(cVar);
                i12 = 2;
            } else if (!"application/x-subrip".equals(str5) && !"text/x-ssa".equals(str5) && !"text/vtt".equals(str5) && !"application/vobsub".equals(str5) && !"application/pgs".equals(str5) && !"application/dvbsubs".equals(str5)) {
                throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
            } else {
                i12 = 3;
            }
            if (this.f40904a != null && !e.f40874i0.containsKey(this.f40904a)) {
                bVar.U(this.f40904a);
            }
            k1 E = bVar.R(i9).e0(str5).W(i11).V(this.W).g0(i17).T(singletonList).I(str).M(this.f40915l).E();
            e0 q10 = nVar.q(this.f40906c, i12);
            this.X = q10;
            q10.d(E);
        }

        public void j() {
            f0 f0Var = this.T;
            if (f0Var != null) {
                f0Var.a(this.X, this.f40913j);
            }
        }

        public void n() {
            f0 f0Var = this.T;
            if (f0Var != null) {
                f0Var.b();
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f40874i0 = Collections.unmodifiableMap(hashMap);
    }

    public e() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] A() {
        return new l[]{new e()};
    }

    private boolean B(a0 a0Var, long j10) {
        if (this.f40901y) {
            this.A = j10;
            a0Var.f1463a = this.f40902z;
            this.f40901y = false;
            return true;
        }
        if (this.f40898v) {
            long j11 = this.A;
            if (j11 != -1) {
                a0Var.f1463a = j11;
                this.A = -1L;
                return true;
            }
        }
        return false;
    }

    private void C(m mVar, int i9) throws IOException {
        if (this.f40883g.f() >= i9) {
            return;
        }
        if (this.f40883g.b() < i9) {
            b0 b0Var = this.f40883g;
            b0Var.c(Math.max(b0Var.b() * 2, i9));
        }
        mVar.readFully(this.f40883g.d(), this.f40883g.f(), i9 - this.f40883g.f());
        this.f40883g.O(i9);
    }

    private void D() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.f40876a0 = false;
        this.f40886j.L(0);
    }

    private long E(long j10) throws ParserException {
        long j11 = this.f40894r;
        if (j11 != -9223372036854775807L) {
            return l0.E0(j10, j11, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static void F(String str, long j10, byte[] bArr) {
        byte[] s10;
        int i9;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 738597099:
                if (str.equals("S_TEXT/ASS")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1045209816:
                if (str.equals("S_TEXT/WEBVTT")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                s10 = s(j10, "%01d:%02d:%02d:%02d", 10000L);
                i9 = 21;
                break;
            case 1:
                s10 = s(j10, "%02d:%02d:%02d.%03d", 1000L);
                i9 = 25;
                break;
            case 2:
                s10 = s(j10, "%02d:%02d:%02d,%03d", 1000L);
                i9 = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(s10, 0, bArr, i9, s10.length);
    }

    private int I(m mVar, c cVar, int i9, boolean z10) throws IOException {
        int i10;
        if ("S_TEXT/UTF8".equals(cVar.f40905b)) {
            J(mVar, f40869d0, i9);
            return q();
        } else if ("S_TEXT/ASS".equals(cVar.f40905b)) {
            J(mVar, f40871f0, i9);
            return q();
        } else if ("S_TEXT/WEBVTT".equals(cVar.f40905b)) {
            J(mVar, f40872g0, i9);
            return q();
        } else {
            e0 e0Var = cVar.X;
            if (!this.V) {
                if (cVar.f40911h) {
                    this.O &= -1073741825;
                    if (!this.W) {
                        mVar.readFully(this.f40883g.d(), 0, 1);
                        this.S++;
                        if ((this.f40883g.d()[0] & ByteCompanionObject.MIN_VALUE) != 128) {
                            this.Z = this.f40883g.d()[0];
                            this.W = true;
                        } else {
                            throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                        }
                    }
                    byte b10 = this.Z;
                    if ((b10 & 1) == 1) {
                        boolean z11 = (b10 & 2) == 2;
                        this.O |= BasicMeasure.EXACTLY;
                        if (!this.f40876a0) {
                            mVar.readFully(this.f40888l.d(), 0, 8);
                            this.S += 8;
                            this.f40876a0 = true;
                            this.f40883g.d()[0] = (byte) ((z11 ? 128 : 0) | 8);
                            this.f40883g.P(0);
                            e0Var.f(this.f40883g, 1, 1);
                            this.T++;
                            this.f40888l.P(0);
                            e0Var.f(this.f40888l, 8, 1);
                            this.T += 8;
                        }
                        if (z11) {
                            if (!this.X) {
                                mVar.readFully(this.f40883g.d(), 0, 1);
                                this.S++;
                                this.f40883g.P(0);
                                this.Y = this.f40883g.D();
                                this.X = true;
                            }
                            int i11 = this.Y * 4;
                            this.f40883g.L(i11);
                            mVar.readFully(this.f40883g.d(), 0, i11);
                            this.S += i11;
                            short s10 = (short) ((this.Y / 2) + 1);
                            int i12 = (s10 * 6) + 2;
                            ByteBuffer byteBuffer = this.f40891o;
                            if (byteBuffer == null || byteBuffer.capacity() < i12) {
                                this.f40891o = ByteBuffer.allocate(i12);
                            }
                            this.f40891o.position(0);
                            this.f40891o.putShort(s10);
                            int i13 = 0;
                            int i14 = 0;
                            while (true) {
                                i10 = this.Y;
                                if (i13 >= i10) {
                                    break;
                                }
                                int H = this.f40883g.H();
                                if (i13 % 2 == 0) {
                                    this.f40891o.putShort((short) (H - i14));
                                } else {
                                    this.f40891o.putInt(H - i14);
                                }
                                i13++;
                                i14 = H;
                            }
                            int i15 = (i9 - this.S) - i14;
                            if (i10 % 2 == 1) {
                                this.f40891o.putInt(i15);
                            } else {
                                this.f40891o.putShort((short) i15);
                                this.f40891o.putInt(0);
                            }
                            this.f40889m.N(this.f40891o.array(), i12);
                            e0Var.f(this.f40889m, i12, 1);
                            this.T += i12;
                        }
                    }
                } else {
                    byte[] bArr = cVar.f40912i;
                    if (bArr != null) {
                        this.f40886j.N(bArr, bArr.length);
                    }
                }
                if (cVar.o(z10)) {
                    this.O |= 268435456;
                    this.f40890n.L(0);
                    int f10 = (this.f40886j.f() + i9) - this.S;
                    this.f40883g.L(4);
                    this.f40883g.d()[0] = (byte) ((f10 >> 24) & 255);
                    this.f40883g.d()[1] = (byte) ((f10 >> 16) & 255);
                    this.f40883g.d()[2] = (byte) ((f10 >> 8) & 255);
                    this.f40883g.d()[3] = (byte) (f10 & 255);
                    e0Var.f(this.f40883g, 4, 2);
                    this.T += 4;
                }
                this.V = true;
            }
            int f11 = i9 + this.f40886j.f();
            if (!"V_MPEG4/ISO/AVC".equals(cVar.f40905b) && !"V_MPEGH/ISO/HEVC".equals(cVar.f40905b)) {
                if (cVar.T != null) {
                    com.google.android.exoplayer2.util.a.f(this.f40886j.f() == 0);
                    cVar.T.d(mVar);
                }
                while (true) {
                    int i16 = this.S;
                    if (i16 >= f11) {
                        break;
                    }
                    int K = K(mVar, e0Var, f11 - i16);
                    this.S += K;
                    this.T += K;
                }
            } else {
                byte[] d10 = this.f40882f.d();
                d10[0] = 0;
                d10[1] = 0;
                d10[2] = 0;
                int i17 = cVar.Y;
                int i18 = 4 - i17;
                while (this.S < f11) {
                    int i19 = this.U;
                    if (i19 == 0) {
                        L(mVar, d10, i18, i17);
                        this.S += i17;
                        this.f40882f.P(0);
                        this.U = this.f40882f.H();
                        this.f40881e.P(0);
                        e0Var.a(this.f40881e, 4);
                        this.T += 4;
                    } else {
                        int K2 = K(mVar, e0Var, i19);
                        this.S += K2;
                        this.T += K2;
                        this.U -= K2;
                    }
                }
            }
            if ("A_VORBIS".equals(cVar.f40905b)) {
                this.f40884h.P(0);
                e0Var.a(this.f40884h, 4);
                this.T += 4;
            }
            return q();
        }
    }

    private void J(m mVar, byte[] bArr, int i9) throws IOException {
        int length = bArr.length + i9;
        if (this.f40887k.b() < length) {
            this.f40887k.M(Arrays.copyOf(bArr, length + i9));
        } else {
            System.arraycopy(bArr, 0, this.f40887k.d(), 0, bArr.length);
        }
        mVar.readFully(this.f40887k.d(), bArr.length, i9);
        this.f40887k.P(0);
        this.f40887k.O(length);
    }

    private int K(m mVar, e0 e0Var, int i9) throws IOException {
        int a10 = this.f40886j.a();
        if (a10 > 0) {
            int min = Math.min(i9, a10);
            e0Var.a(this.f40886j, min);
            return min;
        }
        return e0Var.b(mVar, i9, false);
    }

    private void L(m mVar, byte[] bArr, int i9, int i10) throws IOException {
        int min = Math.min(i10, this.f40886j.a());
        mVar.readFully(bArr, i9 + min, i10 - min);
        if (min > 0) {
            this.f40886j.j(bArr, i9, min);
        }
    }

    private void i(int i9) throws ParserException {
        if (this.C == null || this.D == null) {
            throw ParserException.createForMalformedContainer("Element " + i9 + " must be in a Cues", null);
        }
    }

    private void j(int i9) throws ParserException {
        if (this.f40897u != null) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i9 + " must be in a TrackEntry", null);
    }

    private void k() {
        com.google.android.exoplayer2.util.a.h(this.f40878b0);
    }

    private c2.b0 m(@Nullable s sVar, @Nullable s sVar2) {
        int i9;
        if (this.f40893q != -1 && this.f40896t != -9223372036854775807L && sVar != null && sVar.c() != 0 && sVar2 != null && sVar2.c() == sVar.c()) {
            int c10 = sVar.c();
            int[] iArr = new int[c10];
            long[] jArr = new long[c10];
            long[] jArr2 = new long[c10];
            long[] jArr3 = new long[c10];
            int i10 = 0;
            for (int i11 = 0; i11 < c10; i11++) {
                jArr3[i11] = sVar.b(i11);
                jArr[i11] = this.f40893q + sVar2.b(i11);
            }
            while (true) {
                i9 = c10 - 1;
                if (i10 >= i9) {
                    break;
                }
                int i12 = i10 + 1;
                iArr[i10] = (int) (jArr[i12] - jArr[i10]);
                jArr2[i10] = jArr3[i12] - jArr3[i10];
                i10 = i12;
            }
            iArr[i9] = (int) ((this.f40893q + this.f40892p) - jArr[i9]);
            jArr2[i9] = this.f40896t - jArr3[i9];
            long j10 = jArr2[i9];
            if (j10 <= 0) {
                com.google.android.exoplayer2.util.r.i("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j10);
                iArr = Arrays.copyOf(iArr, i9);
                jArr = Arrays.copyOf(jArr, i9);
                jArr2 = Arrays.copyOf(jArr2, i9);
                jArr3 = Arrays.copyOf(jArr3, i9);
            }
            return new c2.d(iArr, jArr, jArr2, jArr3);
        }
        return new b0.b(this.f40896t);
    }

    private void n(c cVar, long j10, int i9, int i10, int i11) {
        f0 f0Var = cVar.T;
        if (f0Var != null) {
            f0Var.c(cVar.X, j10, i9, i10, i11, cVar.f40913j);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f40905b) || "S_TEXT/ASS".equals(cVar.f40905b) || "S_TEXT/WEBVTT".equals(cVar.f40905b)) {
                if (this.K > 1) {
                    com.google.android.exoplayer2.util.r.i("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j11 = this.I;
                    if (j11 == -9223372036854775807L) {
                        com.google.android.exoplayer2.util.r.i("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        F(cVar.f40905b, j11, this.f40887k.d());
                        int e10 = this.f40887k.e();
                        while (true) {
                            if (e10 >= this.f40887k.f()) {
                                break;
                            } else if (this.f40887k.d()[e10] == 0) {
                                this.f40887k.O(e10);
                                break;
                            } else {
                                e10++;
                            }
                        }
                        e0 e0Var = cVar.X;
                        com.google.android.exoplayer2.util.b0 b0Var = this.f40887k;
                        e0Var.a(b0Var, b0Var.f());
                        i10 += this.f40887k.f();
                    }
                }
            }
            if ((268435456 & i9) != 0) {
                if (this.K > 1) {
                    this.f40890n.L(0);
                } else {
                    int f10 = this.f40890n.f();
                    cVar.X.f(this.f40890n, f10, 2);
                    i10 += f10;
                }
            }
            cVar.X.c(j10, i9, i10, i11, cVar.f40913j);
        }
        this.F = true;
    }

    private static int[] p(@Nullable int[] iArr, int i9) {
        if (iArr == null) {
            return new int[i9];
        }
        return iArr.length >= i9 ? iArr : new int[Math.max(iArr.length * 2, i9)];
    }

    private int q() {
        int i9 = this.T;
        D();
        return i9;
    }

    private static byte[] s(long j10, String str, long j11) {
        com.google.android.exoplayer2.util.a.a(j10 != -9223372036854775807L);
        int i9 = (int) (j10 / 3600000000L);
        long j12 = j10 - ((i9 * 3600) * 1000000);
        int i10 = (int) (j12 / 60000000);
        long j13 = j12 - ((i10 * 60) * 1000000);
        int i11 = (int) (j13 / 1000000);
        return l0.h0(String.format(Locale.US, str, Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf((int) ((j13 - (i11 * 1000000)) / j11))));
    }

    private static boolean y(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals("V_MPEG4/ISO/AP")) {
                    c10 = 0;
                    break;
                }
                break;
            case -2095575984:
                if (str.equals("V_MPEG4/ISO/SP")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1985379776:
                if (str.equals("A_MS/ACM")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1784763192:
                if (str.equals("A_TRUEHD")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1730367663:
                if (str.equals("A_VORBIS")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1482641358:
                if (str.equals("A_MPEG/L2")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1482641357:
                if (str.equals("A_MPEG/L3")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1373388978:
                if (str.equals("V_MS/VFW/FOURCC")) {
                    c10 = 7;
                    break;
                }
                break;
            case -933872740:
                if (str.equals("S_DVBSUB")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -538363189:
                if (str.equals("V_MPEG4/ISO/ASP")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -538363109:
                if (str.equals("V_MPEG4/ISO/AVC")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -425012669:
                if (str.equals("S_VOBSUB")) {
                    c10 = 11;
                    break;
                }
                break;
            case -356037306:
                if (str.equals("A_DTS/LOSSLESS")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 62923557:
                if (str.equals("A_AAC")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 62923603:
                if (str.equals("A_AC3")) {
                    c10 = 14;
                    break;
                }
                break;
            case 62927045:
                if (str.equals("A_DTS")) {
                    c10 = 15;
                    break;
                }
                break;
            case 82318131:
                if (str.equals("V_AV1")) {
                    c10 = 16;
                    break;
                }
                break;
            case 82338133:
                if (str.equals("V_VP8")) {
                    c10 = 17;
                    break;
                }
                break;
            case 82338134:
                if (str.equals("V_VP9")) {
                    c10 = 18;
                    break;
                }
                break;
            case 99146302:
                if (str.equals("S_HDMV/PGS")) {
                    c10 = 19;
                    break;
                }
                break;
            case 444813526:
                if (str.equals("V_THEORA")) {
                    c10 = 20;
                    break;
                }
                break;
            case 542569478:
                if (str.equals("A_DTS/EXPRESS")) {
                    c10 = 21;
                    break;
                }
                break;
            case 635596514:
                if (str.equals("A_PCM/FLOAT/IEEE")) {
                    c10 = 22;
                    break;
                }
                break;
            case 725948237:
                if (str.equals("A_PCM/INT/BIG")) {
                    c10 = 23;
                    break;
                }
                break;
            case 725957860:
                if (str.equals("A_PCM/INT/LIT")) {
                    c10 = 24;
                    break;
                }
                break;
            case 738597099:
                if (str.equals("S_TEXT/ASS")) {
                    c10 = 25;
                    break;
                }
                break;
            case 855502857:
                if (str.equals("V_MPEGH/ISO/HEVC")) {
                    c10 = 26;
                    break;
                }
                break;
            case 1045209816:
                if (str.equals("S_TEXT/WEBVTT")) {
                    c10 = 27;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    c10 = 28;
                    break;
                }
                break;
            case 1809237540:
                if (str.equals("V_MPEG2")) {
                    c10 = 29;
                    break;
                }
                break;
            case 1950749482:
                if (str.equals("A_EAC3")) {
                    c10 = 30;
                    break;
                }
                break;
            case 1950789798:
                if (str.equals("A_FLAC")) {
                    c10 = 31;
                    break;
                }
                break;
            case 1951062397:
                if (str.equals("A_OPUS")) {
                    c10 = ' ';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case ' ':
                return true;
            default:
                return false;
        }
    }

    @CallSuper
    protected void G(int i9, long j10, long j11) throws ParserException {
        k();
        if (i9 == 160) {
            this.Q = false;
            this.R = 0L;
        } else if (i9 == 174) {
            this.f40897u = new c();
        } else if (i9 == 187) {
            this.E = false;
        } else if (i9 == 19899) {
            this.f40899w = -1;
            this.f40900x = -1L;
        } else if (i9 == 20533) {
            t(i9).f40911h = true;
        } else if (i9 == 21968) {
            t(i9).f40927x = true;
        } else if (i9 == 408125543) {
            long j12 = this.f40893q;
            if (j12 != -1 && j12 != j10) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.f40893q = j10;
            this.f40892p = j11;
        } else if (i9 != 475249515) {
            if (i9 == 524531317 && !this.f40898v) {
                if (this.f40880d && this.f40902z != -1) {
                    this.f40901y = true;
                    return;
                }
                this.f40878b0.l(new b0.b(this.f40896t));
                this.f40898v = true;
            }
        } else {
            this.C = new s();
            this.D = new s();
        }
    }

    @CallSuper
    protected void H(int i9, String str) throws ParserException {
        if (i9 == 134) {
            t(i9).f40905b = str;
        } else if (i9 != 17026) {
            if (i9 == 21358) {
                t(i9).f40904a = str;
            } else if (i9 != 2274716) {
            } else {
                t(i9).W = str;
            }
        } else if ("webm".equals(str) || "matroska".equals(str)) {
        } else {
            throw ParserException.createForMalformedContainer("DocType " + str + " not supported", null);
        }
    }

    @Override // c2.l
    @CallSuper
    public void a(long j10, long j11) {
        this.B = -9223372036854775807L;
        this.G = 0;
        this.f40875a.reset();
        this.f40877b.e();
        D();
        for (int i9 = 0; i9 < this.f40879c.size(); i9++) {
            this.f40879c.valueAt(i9).n();
        }
    }

    @Override // c2.l
    public final int b(m mVar, a0 a0Var) throws IOException {
        this.F = false;
        boolean z10 = true;
        while (z10 && !this.F) {
            z10 = this.f40875a.a(mVar);
            if (z10 && B(a0Var, mVar.getPosition())) {
                return 1;
            }
        }
        if (z10) {
            return 0;
        }
        for (int i9 = 0; i9 < this.f40879c.size(); i9++) {
            c valueAt = this.f40879c.valueAt(i9);
            valueAt.f();
            valueAt.j();
        }
        return -1;
    }

    @Override // c2.l
    public final void f(n nVar) {
        this.f40878b0 = nVar;
    }

    @Override // c2.l
    public final boolean h(m mVar) throws IOException {
        return new f().b(mVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0241, code lost:
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
     */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void l(int r22, int r23, c2.m r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.e.l(int, int, c2.m):void");
    }

    @CallSuper
    protected void o(int i9) throws ParserException {
        k();
        if (i9 == 160) {
            if (this.G != 2) {
                return;
            }
            c cVar = this.f40879c.get(this.M);
            cVar.f();
            if (this.R > 0 && "A_OPUS".equals(cVar.f40905b)) {
                this.f40890n.M(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.R).array());
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.K; i11++) {
                i10 += this.L[i11];
            }
            int i12 = 0;
            while (i12 < this.K) {
                long j10 = this.H + ((cVar.f40908e * i12) / 1000);
                int i13 = this.O;
                if (i12 == 0 && !this.Q) {
                    i13 |= 1;
                }
                int i14 = this.L[i12];
                int i15 = i10 - i14;
                n(cVar, j10, i13, i14, i15);
                i12++;
                i10 = i15;
            }
            this.G = 0;
        } else if (i9 == 174) {
            c cVar2 = (c) com.google.android.exoplayer2.util.a.h(this.f40897u);
            String str = cVar2.f40905b;
            if (str != null) {
                if (y(str)) {
                    cVar2.i(this.f40878b0, cVar2.f40906c);
                    this.f40879c.put(cVar2.f40906c, cVar2);
                }
                this.f40897u = null;
                return;
            }
            throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
        } else if (i9 == 19899) {
            int i16 = this.f40899w;
            if (i16 != -1) {
                long j11 = this.f40900x;
                if (j11 != -1) {
                    if (i16 == 475249515) {
                        this.f40902z = j11;
                        return;
                    }
                    return;
                }
            }
            throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        } else if (i9 == 25152) {
            j(i9);
            c cVar3 = this.f40897u;
            if (cVar3.f40911h) {
                if (cVar3.f40913j != null) {
                    cVar3.f40915l = new DrmInitData(new DrmInitData.SchemeData(i.f5996a, "video/webm", this.f40897u.f40913j.f1485b));
                    return;
                }
                throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
            }
        } else if (i9 == 28032) {
            j(i9);
            c cVar4 = this.f40897u;
            if (cVar4.f40911h && cVar4.f40912i != null) {
                throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
        } else if (i9 == 357149030) {
            if (this.f40894r == -9223372036854775807L) {
                this.f40894r = 1000000L;
            }
            long j12 = this.f40895s;
            if (j12 != -9223372036854775807L) {
                this.f40896t = E(j12);
            }
        } else if (i9 == 374648427) {
            if (this.f40879c.size() != 0) {
                this.f40878b0.o();
                return;
            }
            throw ParserException.createForMalformedContainer("No valid tracks were found", null);
        } else if (i9 == 475249515) {
            if (!this.f40898v) {
                this.f40878b0.l(m(this.C, this.D));
                this.f40898v = true;
            }
            this.C = null;
            this.D = null;
        }
    }

    @CallSuper
    protected void r(int i9, double d10) throws ParserException {
        if (i9 == 181) {
            t(i9).Q = (int) d10;
        } else if (i9 != 17545) {
            switch (i9) {
                case 21969:
                    t(i9).D = (float) d10;
                    return;
                case 21970:
                    t(i9).E = (float) d10;
                    return;
                case 21971:
                    t(i9).F = (float) d10;
                    return;
                case 21972:
                    t(i9).G = (float) d10;
                    return;
                case 21973:
                    t(i9).H = (float) d10;
                    return;
                case 21974:
                    t(i9).I = (float) d10;
                    return;
                case 21975:
                    t(i9).J = (float) d10;
                    return;
                case 21976:
                    t(i9).K = (float) d10;
                    return;
                case 21977:
                    t(i9).L = (float) d10;
                    return;
                case 21978:
                    t(i9).M = (float) d10;
                    return;
                default:
                    switch (i9) {
                        case 30323:
                            t(i9).f40922s = (float) d10;
                            return;
                        case 30324:
                            t(i9).f40923t = (float) d10;
                            return;
                        case 30325:
                            t(i9).f40924u = (float) d10;
                            return;
                        default:
                            return;
                    }
            }
        } else {
            this.f40895s = (long) d10;
        }
    }

    @Override // c2.l
    public final void release() {
    }

    protected c t(int i9) throws ParserException {
        j(i9);
        return this.f40897u;
    }

    @CallSuper
    protected int u(int i9) {
        switch (i9) {
            case 131:
            case TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE /* 136 */:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case TPNativePlayerInitConfig.BOOL_VIDEO_KEEP_MEDIA_CODEC_PTS /* 215 */:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    protected void v(c cVar, m mVar, int i9) throws IOException {
        if (cVar.f40910g != 1685485123 && cVar.f40910g != 1685480259) {
            mVar.k(i9);
            return;
        }
        byte[] bArr = new byte[i9];
        cVar.N = bArr;
        mVar.readFully(bArr, 0, i9);
    }

    protected void w(c cVar, int i9, m mVar, int i10) throws IOException {
        if (i9 == 4 && "V_VP9".equals(cVar.f40905b)) {
            this.f40890n.L(i10);
            mVar.readFully(this.f40890n.d(), 0, i10);
            return;
        }
        mVar.k(i10);
    }

    @CallSuper
    protected void x(int i9, long j10) throws ParserException {
        if (i9 == 20529) {
            if (j10 == 0) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingOrder " + j10 + " not supported", null);
        } else if (i9 == 20530) {
            if (j10 == 1) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingScope " + j10 + " not supported", null);
        } else {
            switch (i9) {
                case 131:
                    t(i9).f40907d = (int) j10;
                    return;
                case TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE /* 136 */:
                    t(i9).V = j10 == 1;
                    return;
                case 155:
                    this.I = E(j10);
                    return;
                case 159:
                    t(i9).O = (int) j10;
                    return;
                case 176:
                    t(i9).f40916m = (int) j10;
                    return;
                case 179:
                    i(i9);
                    this.C.a(E(j10));
                    return;
                case 186:
                    t(i9).f40917n = (int) j10;
                    return;
                case TPNativePlayerInitConfig.BOOL_VIDEO_KEEP_MEDIA_CODEC_PTS /* 215 */:
                    t(i9).f40906c = (int) j10;
                    return;
                case 231:
                    this.B = E(j10);
                    return;
                case 238:
                    this.P = (int) j10;
                    return;
                case 241:
                    if (this.E) {
                        return;
                    }
                    i(i9);
                    this.D.a(j10);
                    this.E = true;
                    return;
                case 251:
                    this.Q = true;
                    return;
                case 16871:
                    t(i9).f40910g = (int) j10;
                    return;
                case 16980:
                    if (j10 == 3) {
                        return;
                    }
                    throw ParserException.createForMalformedContainer("ContentCompAlgo " + j10 + " not supported", null);
                case 17029:
                    if (j10 < 1 || j10 > 2) {
                        throw ParserException.createForMalformedContainer("DocTypeReadVersion " + j10 + " not supported", null);
                    }
                    return;
                case 17143:
                    if (j10 == 1) {
                        return;
                    }
                    throw ParserException.createForMalformedContainer("EBMLReadVersion " + j10 + " not supported", null);
                case 18401:
                    if (j10 == 5) {
                        return;
                    }
                    throw ParserException.createForMalformedContainer("ContentEncAlgo " + j10 + " not supported", null);
                case 18408:
                    if (j10 == 1) {
                        return;
                    }
                    throw ParserException.createForMalformedContainer("AESSettingsCipherMode " + j10 + " not supported", null);
                case 21420:
                    this.f40900x = j10 + this.f40893q;
                    return;
                case 21432:
                    int i10 = (int) j10;
                    j(i9);
                    if (i10 == 0) {
                        this.f40897u.f40926w = 0;
                        return;
                    } else if (i10 == 1) {
                        this.f40897u.f40926w = 2;
                        return;
                    } else if (i10 == 3) {
                        this.f40897u.f40926w = 1;
                        return;
                    } else if (i10 != 15) {
                        return;
                    } else {
                        this.f40897u.f40926w = 3;
                        return;
                    }
                case 21680:
                    t(i9).f40918o = (int) j10;
                    return;
                case 21682:
                    t(i9).f40920q = (int) j10;
                    return;
                case 21690:
                    t(i9).f40919p = (int) j10;
                    return;
                case 21930:
                    t(i9).U = j10 == 1;
                    return;
                case 21998:
                    t(i9).f40909f = (int) j10;
                    return;
                case 22186:
                    t(i9).R = j10;
                    return;
                case 22203:
                    t(i9).S = j10;
                    return;
                case 25188:
                    t(i9).P = (int) j10;
                    return;
                case 30114:
                    this.R = j10;
                    return;
                case 30321:
                    j(i9);
                    int i11 = (int) j10;
                    if (i11 == 0) {
                        this.f40897u.f40921r = 0;
                        return;
                    } else if (i11 == 1) {
                        this.f40897u.f40921r = 1;
                        return;
                    } else if (i11 == 2) {
                        this.f40897u.f40921r = 2;
                        return;
                    } else if (i11 != 3) {
                        return;
                    } else {
                        this.f40897u.f40921r = 3;
                        return;
                    }
                case 2352003:
                    t(i9).f40908e = (int) j10;
                    return;
                case 2807729:
                    this.f40894r = j10;
                    return;
                default:
                    switch (i9) {
                        case 21945:
                            j(i9);
                            int i12 = (int) j10;
                            if (i12 == 1) {
                                this.f40897u.A = 2;
                                return;
                            } else if (i12 != 2) {
                                return;
                            } else {
                                this.f40897u.A = 1;
                                return;
                            }
                        case 21946:
                            j(i9);
                            int c10 = k3.c.c((int) j10);
                            if (c10 != -1) {
                                this.f40897u.f40929z = c10;
                                return;
                            }
                            return;
                        case 21947:
                            j(i9);
                            this.f40897u.f40927x = true;
                            int b10 = k3.c.b((int) j10);
                            if (b10 != -1) {
                                this.f40897u.f40928y = b10;
                                return;
                            }
                            return;
                        case 21948:
                            t(i9).B = (int) j10;
                            return;
                        case 21949:
                            t(i9).C = (int) j10;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    @CallSuper
    protected boolean z(int i9) {
        return i9 == 357149030 || i9 == 524531317 || i9 == 475249515 || i9 == 374648427;
    }

    public e(int i9) {
        this(new i2.a(), i9);
    }

    e(i2.c cVar, int i9) {
        this.f40893q = -1L;
        this.f40894r = -9223372036854775807L;
        this.f40895s = -9223372036854775807L;
        this.f40896t = -9223372036854775807L;
        this.f40902z = -1L;
        this.A = -1L;
        this.B = -9223372036854775807L;
        this.f40875a = cVar;
        cVar.b(new b());
        this.f40880d = (i9 & 1) == 0;
        this.f40877b = new g();
        this.f40879c = new SparseArray<>();
        this.f40883g = new com.google.android.exoplayer2.util.b0(4);
        this.f40884h = new com.google.android.exoplayer2.util.b0(ByteBuffer.allocate(4).putInt(-1).array());
        this.f40885i = new com.google.android.exoplayer2.util.b0(4);
        this.f40881e = new com.google.android.exoplayer2.util.b0(w.f7041a);
        this.f40882f = new com.google.android.exoplayer2.util.b0(4);
        this.f40886j = new com.google.android.exoplayer2.util.b0();
        this.f40887k = new com.google.android.exoplayer2.util.b0();
        this.f40888l = new com.google.android.exoplayer2.util.b0(8);
        this.f40889m = new com.google.android.exoplayer2.util.b0();
        this.f40890n = new com.google.android.exoplayer2.util.b0();
        this.L = new int[1];
    }
}
