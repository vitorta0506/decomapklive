package l2;

import c2.a0;
import c2.b0;
import c2.e0;
import c2.m;
import c2.n;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: b  reason: collision with root package name */
    private e0 f54158b;

    /* renamed from: c  reason: collision with root package name */
    private n f54159c;

    /* renamed from: d  reason: collision with root package name */
    private g f54160d;

    /* renamed from: e  reason: collision with root package name */
    private long f54161e;

    /* renamed from: f  reason: collision with root package name */
    private long f54162f;

    /* renamed from: g  reason: collision with root package name */
    private long f54163g;

    /* renamed from: h  reason: collision with root package name */
    private int f54164h;

    /* renamed from: i  reason: collision with root package name */
    private int f54165i;

    /* renamed from: k  reason: collision with root package name */
    private long f54167k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54168l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f54169m;

    /* renamed from: a  reason: collision with root package name */
    private final e f54157a = new e();

    /* renamed from: j  reason: collision with root package name */
    private b f54166j = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        k1 f54170a;

        /* renamed from: b  reason: collision with root package name */
        g f54171b;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements g {
        private c() {
        }

        @Override // l2.g
        public long a(m mVar) {
            return -1L;
        }

        @Override // l2.g
        public b0 b() {
            return new b0.b(-9223372036854775807L);
        }

        @Override // l2.g
        public void c(long j10) {
        }
    }

    private void a() {
        com.google.android.exoplayer2.util.a.h(this.f54158b);
        l0.j(this.f54159c);
    }

    private boolean h(m mVar) throws IOException {
        while (this.f54157a.d(mVar)) {
            this.f54167k = mVar.getPosition() - this.f54162f;
            if (!i(this.f54157a.c(), this.f54162f, this.f54166j)) {
                return true;
            }
            this.f54162f = mVar.getPosition();
        }
        this.f54164h = 3;
        return false;
    }

    private int j(m mVar) throws IOException {
        if (h(mVar)) {
            k1 k1Var = this.f54166j.f54170a;
            this.f54165i = k1Var.f6125z;
            if (!this.f54169m) {
                this.f54158b.d(k1Var);
                this.f54169m = true;
            }
            g gVar = this.f54166j.f54171b;
            if (gVar != null) {
                this.f54160d = gVar;
            } else if (mVar.a() == -1) {
                this.f54160d = new c();
            } else {
                f b10 = this.f54157a.b();
                this.f54160d = new l2.a(this, this.f54162f, mVar.a(), b10.f54150h + b10.f54151i, b10.f54145c, (b10.f54144b & 4) != 0);
            }
            this.f54164h = 2;
            this.f54157a.f();
            return 0;
        }
        return -1;
    }

    private int k(m mVar, a0 a0Var) throws IOException {
        long a10 = this.f54160d.a(mVar);
        if (a10 >= 0) {
            a0Var.f1463a = a10;
            return 1;
        }
        if (a10 < -1) {
            e(-(a10 + 2));
        }
        if (!this.f54168l) {
            this.f54159c.l((b0) com.google.android.exoplayer2.util.a.h(this.f54160d.b()));
            this.f54168l = true;
        }
        if (this.f54167k <= 0 && !this.f54157a.d(mVar)) {
            this.f54164h = 3;
            return -1;
        }
        this.f54167k = 0L;
        com.google.android.exoplayer2.util.b0 c10 = this.f54157a.c();
        long f10 = f(c10);
        if (f10 >= 0) {
            long j10 = this.f54163g;
            if (j10 + f10 >= this.f54161e) {
                long b10 = b(j10);
                this.f54158b.a(c10, c10.f());
                this.f54158b.c(b10, 1, c10.f(), 0, null);
                this.f54161e = -1L;
            }
        }
        this.f54163g += f10;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(long j10) {
        return (j10 * 1000000) / this.f54165i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long c(long j10) {
        return (this.f54165i * j10) / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(n nVar, e0 e0Var) {
        this.f54159c = nVar;
        this.f54158b = e0Var;
        l(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(long j10) {
        this.f54163g = j10;
    }

    protected abstract long f(com.google.android.exoplayer2.util.b0 b0Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int g(m mVar, a0 a0Var) throws IOException {
        a();
        int i9 = this.f54164h;
        if (i9 != 0) {
            if (i9 == 1) {
                mVar.k((int) this.f54162f);
                this.f54164h = 2;
                return 0;
            } else if (i9 == 2) {
                l0.j(this.f54160d);
                return k(mVar, a0Var);
            } else if (i9 == 3) {
                return -1;
            } else {
                throw new IllegalStateException();
            }
        }
        return j(mVar);
    }

    protected abstract boolean i(com.google.android.exoplayer2.util.b0 b0Var, long j10, b bVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(boolean z10) {
        if (z10) {
            this.f54166j = new b();
            this.f54162f = 0L;
            this.f54164h = 0;
        } else {
            this.f54164h = 1;
        }
        this.f54161e = -1L;
        this.f54163g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(long j10, long j11) {
        this.f54157a.e();
        if (j10 == 0) {
            l(!this.f54168l);
        } else if (this.f54164h != 0) {
            this.f54161e = c(j11);
            ((g) l0.j(this.f54160d)).c(this.f54161e);
            this.f54164h = 2;
        }
    }
}
