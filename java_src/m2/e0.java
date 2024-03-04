package m2;

import c2.a;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
/* loaded from: classes.dex */
final class e0 extends c2.a {

    /* loaded from: classes.dex */
    private static final class a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.i0 f54460a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.b0 f54461b = new com.google.android.exoplayer2.util.b0();

        /* renamed from: c  reason: collision with root package name */
        private final int f54462c;

        /* renamed from: d  reason: collision with root package name */
        private final int f54463d;

        public a(int i9, com.google.android.exoplayer2.util.i0 i0Var, int i10) {
            this.f54462c = i9;
            this.f54460a = i0Var;
            this.f54463d = i10;
        }

        private a.e c(com.google.android.exoplayer2.util.b0 b0Var, long j10, long j11) {
            int a10;
            int a11;
            int f10 = b0Var.f();
            long j12 = -1;
            long j13 = -1;
            long j14 = -9223372036854775807L;
            while (b0Var.a() >= 188 && (a11 = (a10 = j0.a(b0Var.d(), b0Var.e(), f10)) + 188) <= f10) {
                long c10 = j0.c(b0Var, a10, this.f54462c);
                if (c10 != -9223372036854775807L) {
                    long b10 = this.f54460a.b(c10);
                    if (b10 > j10) {
                        if (j14 == -9223372036854775807L) {
                            return a.e.d(b10, j11);
                        }
                        return a.e.e(j11 + j13);
                    } else if (100000 + b10 > j10) {
                        return a.e.e(j11 + a10);
                    } else {
                        j13 = a10;
                        j14 = b10;
                    }
                }
                b0Var.P(a11);
                j12 = a11;
            }
            if (j14 != -9223372036854775807L) {
                return a.e.f(j14, j11 + j12);
            }
            return a.e.f1459d;
        }

        @Override // c2.a.f
        public a.e a(c2.m mVar, long j10) throws IOException {
            long position = mVar.getPosition();
            int min = (int) Math.min(this.f54463d, mVar.a() - position);
            this.f54461b.L(min);
            mVar.m(this.f54461b.d(), 0, min);
            return c(this.f54461b, j10, position);
        }

        @Override // c2.a.f
        public void b() {
            this.f54461b.M(l0.f6990f);
        }
    }

    public e0(com.google.android.exoplayer2.util.i0 i0Var, long j10, long j11, int i9, int i10) {
        super(new a.b(), new a(i9, i0Var, i10), j10, 0L, j10 + 1, 0L, j11, 188L, 940);
    }
}
