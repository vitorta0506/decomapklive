package f2;

import android.net.Uri;
import androidx.annotation.Nullable;
import c2.a0;
import c2.b0;
import c2.e0;
import c2.l;
import c2.m;
import c2.n;
import c2.q;
import c2.r;
import c2.s;
import c2.t;
import c2.u;
import c2.v;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes.dex */
public final class d implements l {

    /* renamed from: o  reason: collision with root package name */
    public static final r f39590o = new r() { // from class: f2.c
        @Override // c2.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // c2.r
        public final l[] b() {
            l[] j10;
            j10 = d.j();
            return j10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f39591a;

    /* renamed from: b  reason: collision with root package name */
    private final b0 f39592b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f39593c;

    /* renamed from: d  reason: collision with root package name */
    private final s.a f39594d;

    /* renamed from: e  reason: collision with root package name */
    private n f39595e;

    /* renamed from: f  reason: collision with root package name */
    private e0 f39596f;

    /* renamed from: g  reason: collision with root package name */
    private int f39597g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Metadata f39598h;

    /* renamed from: i  reason: collision with root package name */
    private v f39599i;

    /* renamed from: j  reason: collision with root package name */
    private int f39600j;

    /* renamed from: k  reason: collision with root package name */
    private int f39601k;

    /* renamed from: l  reason: collision with root package name */
    private b f39602l;

    /* renamed from: m  reason: collision with root package name */
    private int f39603m;

    /* renamed from: n  reason: collision with root package name */
    private long f39604n;

    public d() {
        this(0);
    }

    private long d(b0 b0Var, boolean z10) {
        boolean z11;
        com.google.android.exoplayer2.util.a.e(this.f39599i);
        int e10 = b0Var.e();
        while (e10 <= b0Var.f() - 16) {
            b0Var.P(e10);
            if (s.d(b0Var, this.f39599i, this.f39601k, this.f39594d)) {
                b0Var.P(e10);
                return this.f39594d.f1551a;
            }
            e10++;
        }
        if (z10) {
            while (e10 <= b0Var.f() - this.f39600j) {
                b0Var.P(e10);
                try {
                    z11 = s.d(b0Var, this.f39599i, this.f39601k, this.f39594d);
                } catch (IndexOutOfBoundsException unused) {
                    z11 = false;
                }
                if (b0Var.e() <= b0Var.f() ? z11 : false) {
                    b0Var.P(e10);
                    return this.f39594d.f1551a;
                }
                e10++;
            }
            b0Var.P(b0Var.f());
            return -1L;
        }
        b0Var.P(e10);
        return -1L;
    }

    private void e(m mVar) throws IOException {
        this.f39601k = t.b(mVar);
        ((n) l0.j(this.f39595e)).l(g(mVar.getPosition(), mVar.a()));
        this.f39597g = 5;
    }

    private c2.b0 g(long j10, long j11) {
        com.google.android.exoplayer2.util.a.e(this.f39599i);
        v vVar = this.f39599i;
        if (vVar.f1565k != null) {
            return new u(vVar, j10);
        }
        if (j11 != -1 && vVar.f1564j > 0) {
            b bVar = new b(vVar, this.f39601k, j10, j11);
            this.f39602l = bVar;
            return bVar.b();
        }
        return new b0.b(vVar.f());
    }

    private void i(m mVar) throws IOException {
        byte[] bArr = this.f39591a;
        mVar.m(bArr, 0, bArr.length);
        mVar.f();
        this.f39597g = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] j() {
        return new l[]{new d()};
    }

    private void k() {
        ((e0) l0.j(this.f39596f)).c((this.f39604n * 1000000) / ((v) l0.j(this.f39599i)).f1559e, 1, this.f39603m, 0, null);
    }

    private int l(m mVar, a0 a0Var) throws IOException {
        boolean z10;
        com.google.android.exoplayer2.util.a.e(this.f39596f);
        com.google.android.exoplayer2.util.a.e(this.f39599i);
        b bVar = this.f39602l;
        if (bVar != null && bVar.d()) {
            return this.f39602l.c(mVar, a0Var);
        }
        if (this.f39604n == -1) {
            this.f39604n = s.i(mVar, this.f39599i);
            return 0;
        }
        int f10 = this.f39592b.f();
        if (f10 < 32768) {
            int read = mVar.read(this.f39592b.d(), f10, 32768 - f10);
            z10 = read == -1;
            if (!z10) {
                this.f39592b.O(f10 + read);
            } else if (this.f39592b.a() == 0) {
                k();
                return -1;
            }
        } else {
            z10 = false;
        }
        int e10 = this.f39592b.e();
        int i9 = this.f39603m;
        int i10 = this.f39600j;
        if (i9 < i10) {
            com.google.android.exoplayer2.util.b0 b0Var = this.f39592b;
            b0Var.Q(Math.min(i10 - i9, b0Var.a()));
        }
        long d10 = d(this.f39592b, z10);
        int e11 = this.f39592b.e() - e10;
        this.f39592b.P(e10);
        this.f39596f.a(this.f39592b, e11);
        this.f39603m += e11;
        if (d10 != -1) {
            k();
            this.f39603m = 0;
            this.f39604n = d10;
        }
        if (this.f39592b.a() < 16) {
            int a10 = this.f39592b.a();
            System.arraycopy(this.f39592b.d(), this.f39592b.e(), this.f39592b.d(), 0, a10);
            this.f39592b.P(0);
            this.f39592b.O(a10);
        }
        return 0;
    }

    private void m(m mVar) throws IOException {
        this.f39598h = t.d(mVar, !this.f39593c);
        this.f39597g = 1;
    }

    private void n(m mVar) throws IOException {
        t.a aVar = new t.a(this.f39599i);
        boolean z10 = false;
        while (!z10) {
            z10 = t.e(mVar, aVar);
            this.f39599i = (v) l0.j(aVar.f1552a);
        }
        com.google.android.exoplayer2.util.a.e(this.f39599i);
        this.f39600j = Math.max(this.f39599i.f1557c, 6);
        ((e0) l0.j(this.f39596f)).d(this.f39599i.g(this.f39591a, this.f39598h));
        this.f39597g = 4;
    }

    private void o(m mVar) throws IOException {
        t.i(mVar);
        this.f39597g = 3;
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        if (j10 == 0) {
            this.f39597g = 0;
        } else {
            b bVar = this.f39602l;
            if (bVar != null) {
                bVar.h(j11);
            }
        }
        this.f39604n = j11 != 0 ? -1L : 0L;
        this.f39603m = 0;
        this.f39592b.L(0);
    }

    @Override // c2.l
    public int b(m mVar, a0 a0Var) throws IOException {
        int i9 = this.f39597g;
        if (i9 == 0) {
            m(mVar);
            return 0;
        } else if (i9 == 1) {
            i(mVar);
            return 0;
        } else if (i9 == 2) {
            o(mVar);
            return 0;
        } else if (i9 == 3) {
            n(mVar);
            return 0;
        } else if (i9 == 4) {
            e(mVar);
            return 0;
        } else if (i9 == 5) {
            return l(mVar, a0Var);
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // c2.l
    public void f(n nVar) {
        this.f39595e = nVar;
        this.f39596f = nVar.q(0, 1);
        nVar.o();
    }

    @Override // c2.l
    public boolean h(m mVar) throws IOException {
        t.c(mVar, false);
        return t.a(mVar);
    }

    @Override // c2.l
    public void release() {
    }

    public d(int i9) {
        this.f39591a = new byte[42];
        this.f39592b = new com.google.android.exoplayer2.util.b0(new byte[32768], 0);
        this.f39593c = (i9 & 1) != 0;
        this.f39594d = new s.a();
        this.f39597g = 0;
    }
}
