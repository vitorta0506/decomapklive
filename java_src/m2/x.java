package m2;

import c2.a;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x extends c2.a {

    /* loaded from: classes.dex */
    private static final class b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.i0 f54766a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.b0 f54767b;

        private a.e c(com.google.android.exoplayer2.util.b0 b0Var, long j10, long j11) {
            int i9 = -1;
            long j12 = -9223372036854775807L;
            int i10 = -1;
            while (b0Var.a() >= 4) {
                if (x.k(b0Var.d(), b0Var.e()) != 442) {
                    b0Var.Q(1);
                } else {
                    b0Var.Q(4);
                    long l10 = y.l(b0Var);
                    if (l10 != -9223372036854775807L) {
                        long b10 = this.f54766a.b(l10);
                        if (b10 > j10) {
                            if (j12 == -9223372036854775807L) {
                                return a.e.d(b10, j11);
                            }
                            return a.e.e(j11 + i10);
                        } else if (100000 + b10 > j10) {
                            return a.e.e(j11 + b0Var.e());
                        } else {
                            i10 = b0Var.e();
                            j12 = b10;
                        }
                    }
                    d(b0Var);
                    i9 = b0Var.e();
                }
            }
            if (j12 != -9223372036854775807L) {
                return a.e.f(j12, j11 + i9);
            }
            return a.e.f1459d;
        }

        private static void d(com.google.android.exoplayer2.util.b0 b0Var) {
            int k10;
            int f10 = b0Var.f();
            if (b0Var.a() < 10) {
                b0Var.P(f10);
                return;
            }
            b0Var.Q(9);
            int D = b0Var.D() & 7;
            if (b0Var.a() < D) {
                b0Var.P(f10);
                return;
            }
            b0Var.Q(D);
            if (b0Var.a() < 4) {
                b0Var.P(f10);
                return;
            }
            if (x.k(b0Var.d(), b0Var.e()) == 443) {
                b0Var.Q(4);
                int J = b0Var.J();
                if (b0Var.a() < J) {
                    b0Var.P(f10);
                    return;
                }
                b0Var.Q(J);
            }
            while (b0Var.a() >= 4 && (k10 = x.k(b0Var.d(), b0Var.e())) != 442 && k10 != 441 && (k10 >>> 8) == 1) {
                b0Var.Q(4);
                if (b0Var.a() < 2) {
                    b0Var.P(f10);
                    return;
                }
                b0Var.P(Math.min(b0Var.f(), b0Var.e() + b0Var.J()));
            }
        }

        @Override // c2.a.f
        public a.e a(c2.m mVar, long j10) throws IOException {
            long position = mVar.getPosition();
            int min = (int) Math.min(20000L, mVar.a() - position);
            this.f54767b.L(min);
            mVar.m(this.f54767b.d(), 0, min);
            return c(this.f54767b, j10, position);
        }

        @Override // c2.a.f
        public void b() {
            this.f54767b.M(l0.f6990f);
        }

        private b(com.google.android.exoplayer2.util.i0 i0Var) {
            this.f54766a = i0Var;
            this.f54767b = new com.google.android.exoplayer2.util.b0();
        }
    }

    public x(com.google.android.exoplayer2.util.i0 i0Var, long j10, long j11) {
        super(new a.b(), new b(i0Var), j10, 0L, j10 + 1, 0L, j11, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(byte[] bArr, int i9) {
        return (bArr[i9 + 3] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 24) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 8);
    }
}
