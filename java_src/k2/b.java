package k2;

import android.util.Pair;
import androidx.annotation.Nullable;
import c2.x;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.v;
import com.google.common.collect.ImmutableList;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import k2.a;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f53347a = l0.h0("OpusHead");

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f53348a;

        /* renamed from: b  reason: collision with root package name */
        public int f53349b;

        /* renamed from: c  reason: collision with root package name */
        public int f53350c;

        /* renamed from: d  reason: collision with root package name */
        public long f53351d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f53352e;

        /* renamed from: f  reason: collision with root package name */
        private final b0 f53353f;

        /* renamed from: g  reason: collision with root package name */
        private final b0 f53354g;

        /* renamed from: h  reason: collision with root package name */
        private int f53355h;

        /* renamed from: i  reason: collision with root package name */
        private int f53356i;

        public a(b0 b0Var, b0 b0Var2, boolean z10) throws ParserException {
            this.f53354g = b0Var;
            this.f53353f = b0Var2;
            this.f53352e = z10;
            b0Var2.P(12);
            this.f53348a = b0Var2.H();
            b0Var.P(12);
            this.f53356i = b0Var.H();
            c2.o.a(b0Var.n() == 1, "first_chunk must be 1");
            this.f53349b = -1;
        }

        public boolean a() {
            long F;
            int i9 = this.f53349b + 1;
            this.f53349b = i9;
            if (i9 == this.f53348a) {
                return false;
            }
            if (this.f53352e) {
                F = this.f53353f.I();
            } else {
                F = this.f53353f.F();
            }
            this.f53351d = F;
            if (this.f53349b == this.f53355h) {
                this.f53350c = this.f53354g.H();
                this.f53354g.Q(4);
                int i10 = this.f53356i - 1;
                this.f53356i = i10;
                this.f53355h = i10 > 0 ? this.f53354g.H() - 1 : -1;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0549b {

        /* renamed from: a  reason: collision with root package name */
        private final String f53357a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f53358b;

        /* renamed from: c  reason: collision with root package name */
        private final long f53359c;

        /* renamed from: d  reason: collision with root package name */
        private final long f53360d;

        public C0549b(String str, byte[] bArr, long j10, long j11) {
            this.f53357a = str;
            this.f53358b = bArr;
            this.f53359c = j10;
            this.f53360d = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface c {
        int a();

        int b();

        int c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final p[] f53361a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public k1 f53362b;

        /* renamed from: c  reason: collision with root package name */
        public int f53363c;

        /* renamed from: d  reason: collision with root package name */
        public int f53364d = 0;

        public d(int i9) {
            this.f53361a = new p[i9];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final int f53365a;

        /* renamed from: b  reason: collision with root package name */
        private final int f53366b;

        /* renamed from: c  reason: collision with root package name */
        private final b0 f53367c;

        public e(a.b bVar, k1 k1Var) {
            b0 b0Var = bVar.f53346b;
            this.f53367c = b0Var;
            b0Var.P(12);
            int H = b0Var.H();
            if ("audio/raw".equals(k1Var.f6111l)) {
                int Y = l0.Y(k1Var.A, k1Var.f6124y);
                if (H == 0 || H % Y != 0) {
                    com.google.android.exoplayer2.util.r.i("AtomParsers", "Audio sample size mismatch. stsd sample size: " + Y + ", stsz sample size: " + H);
                    H = Y;
                }
            }
            this.f53365a = H == 0 ? -1 : H;
            this.f53366b = b0Var.H();
        }

        @Override // k2.b.c
        public int a() {
            int i9 = this.f53365a;
            return i9 == -1 ? this.f53367c.H() : i9;
        }

        @Override // k2.b.c
        public int b() {
            return this.f53365a;
        }

        @Override // k2.b.c
        public int c() {
            return this.f53366b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class f implements c {

        /* renamed from: a  reason: collision with root package name */
        private final b0 f53368a;

        /* renamed from: b  reason: collision with root package name */
        private final int f53369b;

        /* renamed from: c  reason: collision with root package name */
        private final int f53370c;

        /* renamed from: d  reason: collision with root package name */
        private int f53371d;

        /* renamed from: e  reason: collision with root package name */
        private int f53372e;

        public f(a.b bVar) {
            b0 b0Var = bVar.f53346b;
            this.f53368a = b0Var;
            b0Var.P(12);
            this.f53370c = b0Var.H() & 255;
            this.f53369b = b0Var.H();
        }

        @Override // k2.b.c
        public int a() {
            int i9 = this.f53370c;
            if (i9 == 8) {
                return this.f53368a.D();
            }
            if (i9 == 16) {
                return this.f53368a.J();
            }
            int i10 = this.f53371d;
            this.f53371d = i10 + 1;
            if (i10 % 2 == 0) {
                int D = this.f53368a.D();
                this.f53372e = D;
                return (D & 240) >> 4;
            }
            return this.f53372e & 15;
        }

        @Override // k2.b.c
        public int b() {
            return -1;
        }

        @Override // k2.b.c
        public int c() {
            return this.f53369b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private final int f53373a;

        /* renamed from: b  reason: collision with root package name */
        private final long f53374b;

        /* renamed from: c  reason: collision with root package name */
        private final int f53375c;

        public g(int i9, long j10, int i10) {
            this.f53373a = i9;
            this.f53374b = j10;
            this.f53375c = i10;
        }
    }

    public static List<r> A(a.C0548a c0548a, x xVar, long j10, @Nullable DrmInitData drmInitData, boolean z10, boolean z11, com.google.common.base.h<o, o> hVar) throws ParserException {
        o apply;
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < c0548a.f53345d.size(); i9++) {
            a.C0548a c0548a2 = c0548a.f53345d.get(i9);
            if (c0548a2.f53342a == 1953653099 && (apply = hVar.apply(z(c0548a2, (a.b) com.google.android.exoplayer2.util.a.e(c0548a.g(1836476516)), j10, drmInitData, z10, z11))) != null) {
                arrayList.add(v(apply, (a.C0548a) com.google.android.exoplayer2.util.a.e(((a.C0548a) com.google.android.exoplayer2.util.a.e(((a.C0548a) com.google.android.exoplayer2.util.a.e(c0548a2.f(1835297121))).f(1835626086))).f(1937007212)), xVar));
            }
        }
        return arrayList;
    }

    public static Pair<Metadata, Metadata> B(a.b bVar) {
        b0 b0Var = bVar.f53346b;
        b0Var.P(8);
        Metadata metadata = null;
        Metadata metadata2 = null;
        while (b0Var.a() >= 8) {
            int e10 = b0Var.e();
            int n9 = b0Var.n();
            int n10 = b0Var.n();
            if (n10 == 1835365473) {
                b0Var.P(e10);
                metadata = C(b0Var, e10 + n9);
            } else if (n10 == 1936553057) {
                b0Var.P(e10);
                metadata2 = u(b0Var, e10 + n9);
            }
            b0Var.P(e10 + n9);
        }
        return Pair.create(metadata, metadata2);
    }

    @Nullable
    private static Metadata C(b0 b0Var, int i9) {
        b0Var.Q(8);
        e(b0Var);
        while (b0Var.e() < i9) {
            int e10 = b0Var.e();
            int n9 = b0Var.n();
            if (b0Var.n() == 1768715124) {
                b0Var.P(e10);
                return l(b0Var, e10 + n9);
            }
            b0Var.P(e10 + n9);
        }
        return null;
    }

    private static void D(b0 b0Var, int i9, int i10, int i11, int i12, int i13, @Nullable DrmInitData drmInitData, d dVar, int i14) throws ParserException {
        DrmInitData drmInitData2;
        int i15;
        int i16;
        byte[] bArr;
        float f10;
        List<byte[]> list;
        String str;
        int i17 = i10;
        int i18 = i11;
        DrmInitData drmInitData3 = drmInitData;
        d dVar2 = dVar;
        b0Var.P(i17 + 8 + 8);
        b0Var.Q(16);
        int J = b0Var.J();
        int J2 = b0Var.J();
        b0Var.Q(50);
        int e10 = b0Var.e();
        int i19 = i9;
        if (i19 == 1701733238) {
            Pair<Integer, p> s10 = s(b0Var, i17, i18);
            if (s10 != null) {
                i19 = ((Integer) s10.first).intValue();
                drmInitData3 = drmInitData3 == null ? null : drmInitData3.b(((p) s10.second).f53486b);
                dVar2.f53361a[i14] = (p) s10.second;
            }
            b0Var.P(e10);
        }
        String str2 = "video/3gpp";
        String str3 = i19 == 1831958048 ? "video/mpeg" : i19 == 1211250227 ? "video/3gpp" : null;
        float f11 = 1.0f;
        byte[] bArr2 = null;
        String str4 = null;
        List<byte[]> list2 = null;
        int i20 = -1;
        int i21 = -1;
        int i22 = -1;
        int i23 = -1;
        ByteBuffer byteBuffer = null;
        C0549b c0549b = null;
        boolean z10 = false;
        while (true) {
            if (e10 - i17 >= i18) {
                drmInitData2 = drmInitData3;
                break;
            }
            b0Var.P(e10);
            int e11 = b0Var.e();
            String str5 = str2;
            int n9 = b0Var.n();
            if (n9 == 0) {
                drmInitData2 = drmInitData3;
                if (b0Var.e() - i17 == i18) {
                    break;
                }
            } else {
                drmInitData2 = drmInitData3;
            }
            c2.o.a(n9 > 0, "childAtomSize must be positive");
            int n10 = b0Var.n();
            if (n10 == 1635148611) {
                c2.o.a(str3 == null, null);
                b0Var.P(e11 + 8);
                k3.a b10 = k3.a.b(b0Var);
                list2 = b10.f53516a;
                dVar2.f53363c = b10.f53517b;
                if (!z10) {
                    f11 = b10.f53520e;
                }
                str4 = b10.f53521f;
                str = TPDecoderType.TP_CODEC_MIMETYPE_AVC;
            } else if (n10 == 1752589123) {
                c2.o.a(str3 == null, null);
                b0Var.P(e11 + 8);
                k3.f a10 = k3.f.a(b0Var);
                list2 = a10.f53546a;
                dVar2.f53363c = a10.f53547b;
                if (!z10) {
                    f11 = a10.f53550e;
                }
                str4 = a10.f53551f;
                str = "video/hevc";
            } else {
                if (n10 == 1685480259 || n10 == 1685485123) {
                    i15 = J2;
                    i16 = i19;
                    bArr = bArr2;
                    f10 = f11;
                    list = list2;
                    k3.d a11 = k3.d.a(b0Var);
                    if (a11 != null) {
                        str4 = a11.f53531c;
                        str3 = TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION;
                    }
                } else if (n10 == 1987076931) {
                    c2.o.a(str3 == null, null);
                    str = i19 == 1987063864 ? TPDecoderType.TP_CODEC_MIMETYPE_VP8 : TPDecoderType.TP_CODEC_MIMETYPE_VP9;
                } else if (n10 == 1635135811) {
                    c2.o.a(str3 == null, null);
                    str = TPDecoderType.TP_CODEC_MIMETYPE_AV1;
                } else if (n10 == 1668050025) {
                    ByteBuffer a12 = byteBuffer == null ? a() : byteBuffer;
                    a12.position(21);
                    a12.putShort(b0Var.z());
                    a12.putShort(b0Var.z());
                    byteBuffer = a12;
                    i15 = J2;
                    i16 = i19;
                    e10 += n9;
                    i17 = i10;
                    i18 = i11;
                    dVar2 = dVar;
                    str2 = str5;
                    drmInitData3 = drmInitData2;
                    i19 = i16;
                    J2 = i15;
                } else if (n10 == 1835295606) {
                    ByteBuffer a13 = byteBuffer == null ? a() : byteBuffer;
                    short z11 = b0Var.z();
                    short z12 = b0Var.z();
                    short z13 = b0Var.z();
                    i16 = i19;
                    short z14 = b0Var.z();
                    short z15 = b0Var.z();
                    List<byte[]> list3 = list2;
                    short z16 = b0Var.z();
                    byte[] bArr3 = bArr2;
                    short z17 = b0Var.z();
                    float f12 = f11;
                    short z18 = b0Var.z();
                    long F = b0Var.F();
                    long F2 = b0Var.F();
                    i15 = J2;
                    a13.position(1);
                    a13.putShort(z15);
                    a13.putShort(z16);
                    a13.putShort(z11);
                    a13.putShort(z12);
                    a13.putShort(z13);
                    a13.putShort(z14);
                    a13.putShort(z17);
                    a13.putShort(z18);
                    a13.putShort((short) (F / 10000));
                    a13.putShort((short) (F2 / 10000));
                    byteBuffer = a13;
                    list2 = list3;
                    bArr2 = bArr3;
                    f11 = f12;
                    e10 += n9;
                    i17 = i10;
                    i18 = i11;
                    dVar2 = dVar;
                    str2 = str5;
                    drmInitData3 = drmInitData2;
                    i19 = i16;
                    J2 = i15;
                } else {
                    i15 = J2;
                    i16 = i19;
                    bArr = bArr2;
                    f10 = f11;
                    list = list2;
                    if (n10 == 1681012275) {
                        c2.o.a(str3 == null, null);
                        str3 = str5;
                    } else if (n10 == 1702061171) {
                        c2.o.a(str3 == null, null);
                        c0549b = i(b0Var, e11);
                        String str6 = c0549b.f53357a;
                        byte[] bArr4 = c0549b.f53358b;
                        list2 = bArr4 != null ? ImmutableList.of(bArr4) : list;
                        str3 = str6;
                        bArr2 = bArr;
                        f11 = f10;
                        e10 += n9;
                        i17 = i10;
                        i18 = i11;
                        dVar2 = dVar;
                        str2 = str5;
                        drmInitData3 = drmInitData2;
                        i19 = i16;
                        J2 = i15;
                    } else if (n10 == 1885434736) {
                        f11 = q(b0Var, e11);
                        list2 = list;
                        bArr2 = bArr;
                        z10 = true;
                        e10 += n9;
                        i17 = i10;
                        i18 = i11;
                        dVar2 = dVar;
                        str2 = str5;
                        drmInitData3 = drmInitData2;
                        i19 = i16;
                        J2 = i15;
                    } else if (n10 == 1937126244) {
                        bArr2 = r(b0Var, e11, n9);
                        list2 = list;
                        f11 = f10;
                        e10 += n9;
                        i17 = i10;
                        i18 = i11;
                        dVar2 = dVar;
                        str2 = str5;
                        drmInitData3 = drmInitData2;
                        i19 = i16;
                        J2 = i15;
                    } else if (n10 == 1936995172) {
                        int D = b0Var.D();
                        b0Var.Q(3);
                        if (D == 0) {
                            int D2 = b0Var.D();
                            if (D2 == 0) {
                                i20 = 0;
                            } else if (D2 == 1) {
                                i20 = 1;
                            } else if (D2 == 2) {
                                i20 = 2;
                            } else if (D2 == 3) {
                                i20 = 3;
                            }
                        }
                    } else if (n10 == 1668246642) {
                        int n11 = b0Var.n();
                        if (n11 != 1852009592 && n11 != 1852009571) {
                            com.google.android.exoplayer2.util.r.i("AtomParsers", "Unsupported color type: " + k2.a.a(n11));
                        } else {
                            int J3 = b0Var.J();
                            int J4 = b0Var.J();
                            b0Var.Q(2);
                            boolean z19 = n9 == 19 && (b0Var.D() & 128) != 0;
                            i21 = k3.c.b(J3);
                            i22 = z19 ? 1 : 2;
                            i23 = k3.c.c(J4);
                        }
                    }
                }
                list2 = list;
                bArr2 = bArr;
                f11 = f10;
                e10 += n9;
                i17 = i10;
                i18 = i11;
                dVar2 = dVar;
                str2 = str5;
                drmInitData3 = drmInitData2;
                i19 = i16;
                J2 = i15;
            }
            str3 = str;
            i15 = J2;
            i16 = i19;
            e10 += n9;
            i17 = i10;
            i18 = i11;
            dVar2 = dVar;
            str2 = str5;
            drmInitData3 = drmInitData2;
            i19 = i16;
            J2 = i15;
        }
        int i24 = J2;
        byte[] bArr5 = bArr2;
        float f13 = f11;
        List<byte[]> list4 = list2;
        if (str3 == null) {
            return;
        }
        k1.b M = new k1.b().R(i12).e0(str3).I(str4).j0(J).Q(i24).a0(f13).d0(i13).b0(bArr5).h0(i20).T(list4).M(drmInitData2);
        int i25 = i21;
        int i26 = i22;
        int i27 = i23;
        if (i25 != -1 || i26 != -1 || i27 != -1 || byteBuffer != null) {
            M.J(new k3.c(i25, i26, i27, byteBuffer != null ? byteBuffer.array() : null));
        }
        if (c0549b != null) {
            M.G(com.google.common.primitives.f.i(c0549b.f53359c)).Z(com.google.common.primitives.f.i(c0549b.f53360d));
        }
        dVar.f53362b = M.E();
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean b(long[] jArr, long j10, long j11, long j12) {
        int length = jArr.length - 1;
        return jArr[0] <= j11 && j11 < jArr[l0.p(4, 0, length)] && jArr[l0.p(jArr.length - 4, 0, length)] < j12 && j12 <= j10;
    }

    private static int c(b0 b0Var, int i9, int i10, int i11) throws ParserException {
        int e10 = b0Var.e();
        c2.o.a(e10 >= i10, null);
        while (e10 - i10 < i11) {
            b0Var.P(e10);
            int n9 = b0Var.n();
            c2.o.a(n9 > 0, "childAtomSize must be positive");
            if (b0Var.n() == i9) {
                return e10;
            }
            e10 += n9;
        }
        return -1;
    }

    private static int d(int i9) {
        if (i9 == 1936684398) {
            return 1;
        }
        if (i9 == 1986618469) {
            return 2;
        }
        if (i9 == 1952807028 || i9 == 1935832172 || i9 == 1937072756 || i9 == 1668047728) {
            return 3;
        }
        return i9 == 1835365473 ? 5 : -1;
    }

    public static void e(b0 b0Var) {
        int e10 = b0Var.e();
        b0Var.Q(4);
        if (b0Var.n() != 1751411826) {
            e10 += 4;
        }
        b0Var.P(e10);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void f(com.google.android.exoplayer2.util.b0 r22, int r23, int r24, int r25, int r26, java.lang.String r27, boolean r28, @androidx.annotation.Nullable com.google.android.exoplayer2.drm.DrmInitData r29, k2.b.d r30, int r31) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 858
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.b.f(com.google.android.exoplayer2.util.b0, int, int, int, int, java.lang.String, boolean, com.google.android.exoplayer2.drm.DrmInitData, k2.b$d, int):void");
    }

    @Nullable
    static Pair<Integer, p> g(b0 b0Var, int i9, int i10) throws ParserException {
        int i11 = i9 + 8;
        String str = null;
        Integer num = null;
        int i12 = -1;
        int i13 = 0;
        while (i11 - i9 < i10) {
            b0Var.P(i11);
            int n9 = b0Var.n();
            int n10 = b0Var.n();
            if (n10 == 1718775137) {
                num = Integer.valueOf(b0Var.n());
            } else if (n10 == 1935894637) {
                b0Var.Q(4);
                str = b0Var.A(4);
            } else if (n10 == 1935894633) {
                i12 = i11;
                i13 = n9;
            }
            i11 += n9;
        }
        if ("cenc".equals(str) || "cbc1".equals(str) || "cens".equals(str) || "cbcs".equals(str)) {
            c2.o.a(num != null, "frma atom is mandatory");
            c2.o.a(i12 != -1, "schi atom is mandatory");
            p t10 = t(b0Var, i12, i13, str);
            c2.o.a(t10 != null, "tenc atom is mandatory");
            return Pair.create(num, (p) l0.j(t10));
        }
        return null;
    }

    @Nullable
    private static Pair<long[], long[]> h(a.C0548a c0548a) {
        a.b g10 = c0548a.g(1701606260);
        if (g10 == null) {
            return null;
        }
        b0 b0Var = g10.f53346b;
        b0Var.P(8);
        int c10 = k2.a.c(b0Var.n());
        int H = b0Var.H();
        long[] jArr = new long[H];
        long[] jArr2 = new long[H];
        for (int i9 = 0; i9 < H; i9++) {
            jArr[i9] = c10 == 1 ? b0Var.I() : b0Var.F();
            jArr2[i9] = c10 == 1 ? b0Var.w() : b0Var.n();
            if (b0Var.z() == 1) {
                b0Var.Q(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static C0549b i(b0 b0Var, int i9) {
        b0Var.P(i9 + 8 + 4);
        b0Var.Q(1);
        j(b0Var);
        b0Var.Q(2);
        int D = b0Var.D();
        if ((D & 128) != 0) {
            b0Var.Q(2);
        }
        if ((D & 64) != 0) {
            b0Var.Q(b0Var.D());
        }
        if ((D & 32) != 0) {
            b0Var.Q(2);
        }
        b0Var.Q(1);
        j(b0Var);
        String f10 = v.f(b0Var.D());
        if (!"audio/mpeg".equals(f10) && !"audio/vnd.dts".equals(f10) && !"audio/vnd.dts.hd".equals(f10)) {
            b0Var.Q(4);
            long F = b0Var.F();
            long F2 = b0Var.F();
            b0Var.Q(1);
            int j10 = j(b0Var);
            byte[] bArr = new byte[j10];
            b0Var.j(bArr, 0, j10);
            return new C0549b(f10, bArr, F2 > 0 ? F2 : -1L, F > 0 ? F : -1L);
        }
        return new C0549b(f10, null, -1L, -1L);
    }

    private static int j(b0 b0Var) {
        int D = b0Var.D();
        int i9 = D & 127;
        while ((D & 128) == 128) {
            D = b0Var.D();
            i9 = (i9 << 7) | (D & 127);
        }
        return i9;
    }

    private static int k(b0 b0Var) {
        b0Var.P(16);
        return b0Var.n();
    }

    @Nullable
    private static Metadata l(b0 b0Var, int i9) {
        b0Var.Q(8);
        ArrayList arrayList = new ArrayList();
        while (b0Var.e() < i9) {
            Metadata.Entry c10 = h.c(b0Var);
            if (c10 != null) {
                arrayList.add(c10);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair<Long, String> m(b0 b0Var) {
        b0Var.P(8);
        int c10 = k2.a.c(b0Var.n());
        b0Var.Q(c10 == 0 ? 8 : 16);
        long F = b0Var.F();
        b0Var.Q(c10 == 0 ? 4 : 8);
        int J = b0Var.J();
        return Pair.create(Long.valueOf(F), "" + ((char) (((J >> 10) & 31) + 96)) + ((char) (((J >> 5) & 31) + 96)) + ((char) ((J & 31) + 96)));
    }

    @Nullable
    public static Metadata n(a.C0548a c0548a) {
        a.b g10 = c0548a.g(1751411826);
        a.b g11 = c0548a.g(1801812339);
        a.b g12 = c0548a.g(1768715124);
        if (g10 == null || g11 == null || g12 == null || k(g10.f53346b) != 1835299937) {
            return null;
        }
        b0 b0Var = g11.f53346b;
        b0Var.P(12);
        int n9 = b0Var.n();
        String[] strArr = new String[n9];
        for (int i9 = 0; i9 < n9; i9++) {
            int n10 = b0Var.n();
            b0Var.Q(4);
            strArr[i9] = b0Var.A(n10 - 8);
        }
        b0 b0Var2 = g12.f53346b;
        b0Var2.P(8);
        ArrayList arrayList = new ArrayList();
        while (b0Var2.a() > 8) {
            int e10 = b0Var2.e();
            int n11 = b0Var2.n();
            int n12 = b0Var2.n() - 1;
            if (n12 >= 0 && n12 < n9) {
                MdtaMetadataEntry f10 = h.f(b0Var2, e10 + n11, strArr[n12]);
                if (f10 != null) {
                    arrayList.add(f10);
                }
            } else {
                com.google.android.exoplayer2.util.r.i("AtomParsers", "Skipped metadata with unknown key index: " + n12);
            }
            b0Var2.P(e10 + n11);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void o(b0 b0Var, int i9, int i10, int i11, d dVar) {
        b0Var.P(i10 + 8 + 8);
        if (i9 == 1835365492) {
            b0Var.x();
            String x10 = b0Var.x();
            if (x10 != null) {
                dVar.f53362b = new k1.b().R(i11).e0(x10).E();
            }
        }
    }

    private static long p(b0 b0Var) {
        b0Var.P(8);
        b0Var.Q(k2.a.c(b0Var.n()) != 0 ? 16 : 8);
        return b0Var.F();
    }

    private static float q(b0 b0Var, int i9) {
        b0Var.P(i9 + 8);
        return b0Var.H() / b0Var.H();
    }

    @Nullable
    private static byte[] r(b0 b0Var, int i9, int i10) {
        int i11 = i9 + 8;
        while (i11 - i9 < i10) {
            b0Var.P(i11);
            int n9 = b0Var.n();
            if (b0Var.n() == 1886547818) {
                return Arrays.copyOfRange(b0Var.d(), i11, n9 + i11);
            }
            i11 += n9;
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, p> s(b0 b0Var, int i9, int i10) throws ParserException {
        Pair<Integer, p> g10;
        int e10 = b0Var.e();
        while (e10 - i9 < i10) {
            b0Var.P(e10);
            int n9 = b0Var.n();
            c2.o.a(n9 > 0, "childAtomSize must be positive");
            if (b0Var.n() == 1936289382 && (g10 = g(b0Var, e10, n9)) != null) {
                return g10;
            }
            e10 += n9;
        }
        return null;
    }

    @Nullable
    private static p t(b0 b0Var, int i9, int i10, String str) {
        int i11;
        int i12;
        int i13 = i9 + 8;
        while (true) {
            byte[] bArr = null;
            if (i13 - i9 >= i10) {
                return null;
            }
            b0Var.P(i13);
            int n9 = b0Var.n();
            if (b0Var.n() == 1952804451) {
                int c10 = k2.a.c(b0Var.n());
                b0Var.Q(1);
                if (c10 == 0) {
                    b0Var.Q(1);
                    i12 = 0;
                    i11 = 0;
                } else {
                    int D = b0Var.D();
                    i11 = D & 15;
                    i12 = (D & 240) >> 4;
                }
                boolean z10 = b0Var.D() == 1;
                int D2 = b0Var.D();
                byte[] bArr2 = new byte[16];
                b0Var.j(bArr2, 0, 16);
                if (z10 && D2 == 0) {
                    int D3 = b0Var.D();
                    bArr = new byte[D3];
                    b0Var.j(bArr, 0, D3);
                }
                return new p(z10, str, D2, bArr2, i12, i11, bArr);
            }
            i13 += n9;
        }
    }

    @Nullable
    private static Metadata u(b0 b0Var, int i9) {
        b0Var.Q(12);
        while (b0Var.e() < i9) {
            int e10 = b0Var.e();
            int n9 = b0Var.n();
            if (b0Var.n() == 1935766900) {
                if (n9 < 14) {
                    return null;
                }
                b0Var.Q(5);
                int D = b0Var.D();
                if (D == 12 || D == 13) {
                    float f10 = D == 12 ? 240.0f : 120.0f;
                    b0Var.Q(1);
                    return new Metadata(new SmtaMetadataEntry(f10, b0Var.D()));
                }
                return null;
            }
            b0Var.P(e10 + n9);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0431 A[EDGE_INSN: B:211:0x0431->B:170:0x0431 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static k2.r v(k2.o r38, k2.a.C0548a r39, c2.x r40) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 1319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.b.v(k2.o, k2.a$a, c2.x):k2.r");
    }

    private static d w(b0 b0Var, int i9, int i10, String str, @Nullable DrmInitData drmInitData, boolean z10) throws ParserException {
        int i11;
        b0Var.P(12);
        int n9 = b0Var.n();
        d dVar = new d(n9);
        for (int i12 = 0; i12 < n9; i12++) {
            int e10 = b0Var.e();
            int n10 = b0Var.n();
            c2.o.a(n10 > 0, "childAtomSize must be positive");
            int n11 = b0Var.n();
            if (n11 == 1635148593 || n11 == 1635148595 || n11 == 1701733238 || n11 == 1831958048 || n11 == 1836070006 || n11 == 1752589105 || n11 == 1751479857 || n11 == 1932670515 || n11 == 1211250227 || n11 == 1987063864 || n11 == 1987063865 || n11 == 1635135537 || n11 == 1685479798 || n11 == 1685479729 || n11 == 1685481573 || n11 == 1685481521) {
                i11 = e10;
                D(b0Var, n11, i11, n10, i9, i10, drmInitData, dVar, i12);
            } else if (n11 == 1836069985 || n11 == 1701733217 || n11 == 1633889587 || n11 == 1700998451 || n11 == 1633889588 || n11 == 1835823201 || n11 == 1685353315 || n11 == 1685353317 || n11 == 1685353320 || n11 == 1685353324 || n11 == 1685353336 || n11 == 1935764850 || n11 == 1935767394 || n11 == 1819304813 || n11 == 1936684916 || n11 == 1953984371 || n11 == 778924082 || n11 == 778924083 || n11 == 1835557169 || n11 == 1835560241 || n11 == 1634492771 || n11 == 1634492791 || n11 == 1970037111 || n11 == 1332770163 || n11 == 1716281667) {
                i11 = e10;
                f(b0Var, n11, e10, n10, i9, str, z10, drmInitData, dVar, i12);
            } else {
                if (n11 == 1414810956 || n11 == 1954034535 || n11 == 2004251764 || n11 == 1937010800 || n11 == 1664495672) {
                    x(b0Var, n11, e10, n10, i9, str, dVar);
                } else if (n11 == 1835365492) {
                    o(b0Var, n11, e10, i9, dVar);
                } else if (n11 == 1667329389) {
                    dVar.f53362b = new k1.b().R(i9).e0("application/x-camera-motion").E();
                }
                i11 = e10;
            }
            b0Var.P(i11 + n10);
        }
        return dVar;
    }

    private static void x(b0 b0Var, int i9, int i10, int i11, int i12, String str, d dVar) {
        b0Var.P(i10 + 8 + 8);
        String str2 = "application/ttml+xml";
        ImmutableList immutableList = null;
        long j10 = Long.MAX_VALUE;
        if (i9 != 1414810956) {
            if (i9 == 1954034535) {
                int i13 = (i11 - 8) - 8;
                byte[] bArr = new byte[i13];
                b0Var.j(bArr, 0, i13);
                immutableList = ImmutableList.of(bArr);
                str2 = "application/x-quicktime-tx3g";
            } else if (i9 == 2004251764) {
                str2 = "application/x-mp4-vtt";
            } else if (i9 == 1937010800) {
                j10 = 0;
            } else if (i9 == 1664495672) {
                dVar.f53364d = 1;
                str2 = "application/x-mp4-cea-608";
            } else {
                throw new IllegalStateException();
            }
        }
        dVar.f53362b = new k1.b().R(i12).e0(str2).V(str).i0(j10).T(immutableList).E();
    }

    private static g y(b0 b0Var) {
        boolean z10;
        b0Var.P(8);
        int c10 = k2.a.c(b0Var.n());
        b0Var.Q(c10 == 0 ? 8 : 16);
        int n9 = b0Var.n();
        b0Var.Q(4);
        int e10 = b0Var.e();
        int i9 = c10 == 0 ? 4 : 8;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 >= i9) {
                z10 = true;
                break;
            } else if (b0Var.d()[e10 + i11] != -1) {
                z10 = false;
                break;
            } else {
                i11++;
            }
        }
        long j10 = -9223372036854775807L;
        if (z10) {
            b0Var.Q(i9);
        } else {
            long F = c10 == 0 ? b0Var.F() : b0Var.I();
            if (F != 0) {
                j10 = F;
            }
        }
        b0Var.Q(16);
        int n10 = b0Var.n();
        int n11 = b0Var.n();
        b0Var.Q(4);
        int n12 = b0Var.n();
        int n13 = b0Var.n();
        if (n10 == 0 && n11 == 65536 && n12 == -65536 && n13 == 0) {
            i10 = 90;
        } else if (n10 == 0 && n11 == -65536 && n12 == 65536 && n13 == 0) {
            i10 = 270;
        } else if (n10 == -65536 && n11 == 0 && n12 == 0 && n13 == -65536) {
            i10 = 180;
        }
        return new g(n9, j10, i10);
    }

    @Nullable
    private static o z(a.C0548a c0548a, a.b bVar, long j10, @Nullable DrmInitData drmInitData, boolean z10, boolean z11) throws ParserException {
        a.b bVar2;
        long j11;
        long[] jArr;
        long[] jArr2;
        a.C0548a f10;
        Pair<long[], long[]> h10;
        a.C0548a c0548a2 = (a.C0548a) com.google.android.exoplayer2.util.a.e(c0548a.f(1835297121));
        int d10 = d(k(((a.b) com.google.android.exoplayer2.util.a.e(c0548a2.g(1751411826))).f53346b));
        if (d10 == -1) {
            return null;
        }
        g y10 = y(((a.b) com.google.android.exoplayer2.util.a.e(c0548a.g(1953196132))).f53346b);
        if (j10 == -9223372036854775807L) {
            bVar2 = bVar;
            j11 = y10.f53374b;
        } else {
            bVar2 = bVar;
            j11 = j10;
        }
        long p10 = p(bVar2.f53346b);
        long E0 = j11 != -9223372036854775807L ? l0.E0(j11, 1000000L, p10) : -9223372036854775807L;
        Pair<Long, String> m10 = m(((a.b) com.google.android.exoplayer2.util.a.e(c0548a2.g(1835296868))).f53346b);
        d w6 = w(((a.b) com.google.android.exoplayer2.util.a.e(((a.C0548a) com.google.android.exoplayer2.util.a.e(((a.C0548a) com.google.android.exoplayer2.util.a.e(c0548a2.f(1835626086))).f(1937007212))).g(1937011556))).f53346b, y10.f53373a, y10.f53375c, (String) m10.second, drmInitData, z11);
        if (z10 || (f10 = c0548a.f(1701082227)) == null || (h10 = h(f10)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            jArr2 = (long[]) h10.second;
            jArr = (long[]) h10.first;
        }
        if (w6.f53362b == null) {
            return null;
        }
        return new o(y10.f53373a, d10, ((Long) m10.first).longValue(), p10, E0, w6.f53362b, w6.f53364d, w6.f53361a, w6.f53363c, jArr, jArr2);
    }
}
