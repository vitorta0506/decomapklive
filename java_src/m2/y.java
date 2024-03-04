package m2;

import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
import kotlin.UByte;
/* loaded from: classes.dex */
final class y {

    /* renamed from: c  reason: collision with root package name */
    private boolean f54770c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54771d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54772e;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.i0 f54768a = new com.google.android.exoplayer2.util.i0(0);

    /* renamed from: f  reason: collision with root package name */
    private long f54773f = -9223372036854775807L;

    /* renamed from: g  reason: collision with root package name */
    private long f54774g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    private long f54775h = -9223372036854775807L;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54769b = new com.google.android.exoplayer2.util.b0();

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private int b(c2.m mVar) {
        this.f54769b.M(l0.f6990f);
        this.f54770c = true;
        mVar.f();
        return 0;
    }

    private int f(byte[] bArr, int i9) {
        return (bArr[i9 + 3] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 24) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 8);
    }

    private int h(c2.m mVar, c2.a0 a0Var) throws IOException {
        int min = (int) Math.min(20000L, mVar.a());
        long j10 = 0;
        if (mVar.getPosition() != j10) {
            a0Var.f1463a = j10;
            return 1;
        }
        this.f54769b.L(min);
        mVar.f();
        mVar.m(this.f54769b.d(), 0, min);
        this.f54773f = i(this.f54769b);
        this.f54771d = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.b0 b0Var) {
        int f10 = b0Var.f();
        for (int e10 = b0Var.e(); e10 < f10 - 3; e10++) {
            if (f(b0Var.d(), e10) == 442) {
                b0Var.P(e10 + 4);
                long l10 = l(b0Var);
                if (l10 != -9223372036854775807L) {
                    return l10;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int j(c2.m mVar, c2.a0 a0Var) throws IOException {
        long a10 = mVar.a();
        int min = (int) Math.min(20000L, a10);
        long j10 = a10 - min;
        if (mVar.getPosition() != j10) {
            a0Var.f1463a = j10;
            return 1;
        }
        this.f54769b.L(min);
        mVar.f();
        mVar.m(this.f54769b.d(), 0, min);
        this.f54774g = k(this.f54769b);
        this.f54772e = true;
        return 0;
    }

    private long k(com.google.android.exoplayer2.util.b0 b0Var) {
        int e10 = b0Var.e();
        for (int f10 = b0Var.f() - 4; f10 >= e10; f10--) {
            if (f(b0Var.d(), f10) == 442) {
                b0Var.P(f10 + 4);
                long l10 = l(b0Var);
                if (l10 != -9223372036854775807L) {
                    return l10;
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long l(com.google.android.exoplayer2.util.b0 b0Var) {
        int e10 = b0Var.e();
        if (b0Var.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        b0Var.j(bArr, 0, 9);
        b0Var.P(e10);
        if (a(bArr)) {
            return m(bArr);
        }
        return -9223372036854775807L;
    }

    private static long m(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    public long c() {
        return this.f54775h;
    }

    public com.google.android.exoplayer2.util.i0 d() {
        return this.f54768a;
    }

    public boolean e() {
        return this.f54770c;
    }

    public int g(c2.m mVar, c2.a0 a0Var) throws IOException {
        if (!this.f54772e) {
            return j(mVar, a0Var);
        }
        if (this.f54774g == -9223372036854775807L) {
            return b(mVar);
        }
        if (!this.f54771d) {
            return h(mVar, a0Var);
        }
        long j10 = this.f54773f;
        if (j10 == -9223372036854775807L) {
            return b(mVar);
        }
        long b10 = this.f54768a.b(this.f54774g) - this.f54768a.b(j10);
        this.f54775h = b10;
        if (b10 < 0) {
            com.google.android.exoplayer2.util.r.i("PsDurationReader", "Invalid duration: " + this.f54775h + ". Using TIME_UNSET instead.");
            this.f54775h = -9223372036854775807L;
        }
        return b(mVar);
    }
}
