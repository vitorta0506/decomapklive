package c2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import c2.b0;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final C0022a f1440a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f1441b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    protected c f1442c;

    /* renamed from: d  reason: collision with root package name */
    private final int f1443d;

    /* renamed from: c2.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0022a implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final d f1444a;

        /* renamed from: b  reason: collision with root package name */
        private final long f1445b;

        /* renamed from: c  reason: collision with root package name */
        private final long f1446c;

        /* renamed from: d  reason: collision with root package name */
        private final long f1447d;

        /* renamed from: e  reason: collision with root package name */
        private final long f1448e;

        /* renamed from: f  reason: collision with root package name */
        private final long f1449f;

        /* renamed from: g  reason: collision with root package name */
        private final long f1450g;

        public C0022a(d dVar, long j10, long j11, long j12, long j13, long j14, long j15) {
            this.f1444a = dVar;
            this.f1445b = j10;
            this.f1446c = j11;
            this.f1447d = j12;
            this.f1448e = j13;
            this.f1449f = j14;
            this.f1450g = j15;
        }

        @Override // c2.b0
        public b0.a c(long j10) {
            return new b0.a(new c0(j10, c.h(this.f1444a.a(j10), this.f1446c, this.f1447d, this.f1448e, this.f1449f, this.f1450g)));
        }

        @Override // c2.b0
        public boolean e() {
            return true;
        }

        @Override // c2.b0
        public long i() {
            return this.f1445b;
        }

        public long k(long j10) {
            return this.f1444a.a(j10);
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements d {
        @Override // c2.a.d
        public long a(long j10) {
            return j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final long f1451a;

        /* renamed from: b  reason: collision with root package name */
        private final long f1452b;

        /* renamed from: c  reason: collision with root package name */
        private final long f1453c;

        /* renamed from: d  reason: collision with root package name */
        private long f1454d;

        /* renamed from: e  reason: collision with root package name */
        private long f1455e;

        /* renamed from: f  reason: collision with root package name */
        private long f1456f;

        /* renamed from: g  reason: collision with root package name */
        private long f1457g;

        /* renamed from: h  reason: collision with root package name */
        private long f1458h;

        protected c(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
            this.f1451a = j10;
            this.f1452b = j11;
            this.f1454d = j12;
            this.f1455e = j13;
            this.f1456f = j14;
            this.f1457g = j15;
            this.f1453c = j16;
            this.f1458h = h(j11, j12, j13, j14, j15, j16);
        }

        protected static long h(long j10, long j11, long j12, long j13, long j14, long j15) {
            if (j13 + 1 >= j14 || j11 + 1 >= j12) {
                return j13;
            }
            long j16 = ((float) (j10 - j11)) * (((float) (j14 - j13)) / ((float) (j12 - j11)));
            return l0.q(((j16 + j13) - j15) - (j16 / 20), j13, j14 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return this.f1457g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long j() {
            return this.f1456f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long k() {
            return this.f1458h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long l() {
            return this.f1451a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long m() {
            return this.f1452b;
        }

        private void n() {
            this.f1458h = h(this.f1452b, this.f1454d, this.f1455e, this.f1456f, this.f1457g, this.f1453c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(long j10, long j11) {
            this.f1455e = j10;
            this.f1457g = j11;
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(long j10, long j11) {
            this.f1454d = j10;
            this.f1456f = j11;
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface d {
        long a(long j10);
    }

    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: d  reason: collision with root package name */
        public static final e f1459d = new e(-3, -9223372036854775807L, -1);

        /* renamed from: a  reason: collision with root package name */
        private final int f1460a;

        /* renamed from: b  reason: collision with root package name */
        private final long f1461b;

        /* renamed from: c  reason: collision with root package name */
        private final long f1462c;

        private e(int i9, long j10, long j11) {
            this.f1460a = i9;
            this.f1461b = j10;
            this.f1462c = j11;
        }

        public static e d(long j10, long j11) {
            return new e(-1, j10, j11);
        }

        public static e e(long j10) {
            return new e(0, -9223372036854775807L, j10);
        }

        public static e f(long j10, long j11) {
            return new e(-2, j10, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface f {
        e a(m mVar, long j10) throws IOException;

        void b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(d dVar, f fVar, long j10, long j11, long j12, long j13, long j14, long j15, int i9) {
        this.f1441b = fVar;
        this.f1443d = i9;
        this.f1440a = new C0022a(dVar, j10, j11, j12, j13, j14, j15);
    }

    protected c a(long j10) {
        return new c(j10, this.f1440a.k(j10), this.f1440a.f1446c, this.f1440a.f1447d, this.f1440a.f1448e, this.f1440a.f1449f, this.f1440a.f1450g);
    }

    public final b0 b() {
        return this.f1440a;
    }

    public int c(m mVar, a0 a0Var) throws IOException {
        while (true) {
            c cVar = (c) com.google.android.exoplayer2.util.a.h(this.f1442c);
            long j10 = cVar.j();
            long i9 = cVar.i();
            long k10 = cVar.k();
            if (i9 - j10 <= this.f1443d) {
                e(false, j10);
                return g(mVar, j10, a0Var);
            } else if (!i(mVar, k10)) {
                return g(mVar, k10, a0Var);
            } else {
                mVar.f();
                e a10 = this.f1441b.a(mVar, cVar.m());
                int i10 = a10.f1460a;
                if (i10 == -3) {
                    e(false, k10);
                    return g(mVar, k10, a0Var);
                } else if (i10 == -2) {
                    cVar.p(a10.f1461b, a10.f1462c);
                } else if (i10 != -1) {
                    if (i10 == 0) {
                        i(mVar, a10.f1462c);
                        e(true, a10.f1462c);
                        return g(mVar, a10.f1462c, a0Var);
                    }
                    throw new IllegalStateException("Invalid case");
                } else {
                    cVar.o(a10.f1461b, a10.f1462c);
                }
            }
        }
    }

    public final boolean d() {
        return this.f1442c != null;
    }

    protected final void e(boolean z10, long j10) {
        this.f1442c = null;
        this.f1441b.b();
        f(z10, j10);
    }

    protected void f(boolean z10, long j10) {
    }

    protected final int g(m mVar, long j10, a0 a0Var) {
        if (j10 == mVar.getPosition()) {
            return 0;
        }
        a0Var.f1463a = j10;
        return 1;
    }

    public final void h(long j10) {
        c cVar = this.f1442c;
        if (cVar == null || cVar.l() != j10) {
            this.f1442c = a(j10);
        }
    }

    protected final boolean i(m mVar, long j10) throws IOException {
        long position = j10 - mVar.getPosition();
        if (position < 0 || position > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        mVar.k((int) position);
        return true;
    }
}
