package v2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.z2;
import java.io.IOException;
import v2.n;
import v2.q;
/* loaded from: classes.dex */
public final class k implements n, n.a {

    /* renamed from: a  reason: collision with root package name */
    public final q.b f58855a;

    /* renamed from: b  reason: collision with root package name */
    private final long f58856b;

    /* renamed from: c  reason: collision with root package name */
    private final j3.b f58857c;

    /* renamed from: d  reason: collision with root package name */
    private q f58858d;

    /* renamed from: e  reason: collision with root package name */
    private n f58859e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private n.a f58860f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private a f58861g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f58862h;

    /* renamed from: i  reason: collision with root package name */
    private long f58863i = -9223372036854775807L;

    /* loaded from: classes.dex */
    public interface a {
        void a(q.b bVar, IOException iOException);

        void b(q.b bVar);
    }

    public k(q.b bVar, j3.b bVar2, long j10) {
        this.f58855a = bVar;
        this.f58857c = bVar2;
        this.f58856b = j10;
    }

    private long l(long j10) {
        long j11 = this.f58863i;
        return j11 != -9223372036854775807L ? j11 : j10;
    }

    @Override // v2.n
    public long b() {
        return ((n) com.google.android.exoplayer2.util.l0.j(this.f58859e)).b();
    }

    public void c(q.b bVar) {
        long l10 = l(this.f58856b);
        n h10 = ((q) com.google.android.exoplayer2.util.a.e(this.f58858d)).h(bVar, this.f58857c, l10);
        this.f58859e = h10;
        if (this.f58860f != null) {
            h10.k(this, l10);
        }
    }

    @Override // v2.n.a
    public void d(n nVar) {
        ((n.a) com.google.android.exoplayer2.util.l0.j(this.f58860f)).d(this);
        a aVar = this.f58861g;
        if (aVar != null) {
            aVar.b(this.f58855a);
        }
    }

    @Override // v2.n
    public long e(long j10) {
        return ((n) com.google.android.exoplayer2.util.l0.j(this.f58859e)).e(j10);
    }

    @Override // v2.n
    public long f(long j10, z2 z2Var) {
        return ((n) com.google.android.exoplayer2.util.l0.j(this.f58859e)).f(j10, z2Var);
    }

    @Override // v2.n
    public long g(h3.s[] sVarArr, boolean[] zArr, i0[] i0VarArr, boolean[] zArr2, long j10) {
        long j11;
        long j12 = this.f58863i;
        if (j12 == -9223372036854775807L || j10 != this.f58856b) {
            j11 = j10;
        } else {
            this.f58863i = -9223372036854775807L;
            j11 = j12;
        }
        return ((n) com.google.android.exoplayer2.util.l0.j(this.f58859e)).g(sVarArr, zArr, i0VarArr, zArr2, j11);
    }

    @Override // v2.n
    public long h() {
        return ((n) com.google.android.exoplayer2.util.l0.j(this.f58859e)).h();
    }

    public long i() {
        return this.f58863i;
    }

    @Override // v2.n
    public boolean isLoading() {
        n nVar = this.f58859e;
        return nVar != null && nVar.isLoading();
    }

    public long j() {
        return this.f58856b;
    }

    @Override // v2.n
    public void k(n.a aVar, long j10) {
        this.f58860f = aVar;
        n nVar = this.f58859e;
        if (nVar != null) {
            nVar.k(this, l(this.f58856b));
        }
    }

    @Override // v2.n
    public void m() throws IOException {
        try {
            n nVar = this.f58859e;
            if (nVar != null) {
                nVar.m();
            } else {
                q qVar = this.f58858d;
                if (qVar != null) {
                    qVar.j();
                }
            }
        } catch (IOException e10) {
            a aVar = this.f58861g;
            if (aVar != null) {
                if (this.f58862h) {
                    return;
                }
                this.f58862h = true;
                aVar.a(this.f58855a, e10);
                return;
            }
            throw e10;
        }
    }

    @Override // v2.n
    public boolean n(long j10) {
        n nVar = this.f58859e;
        return nVar != null && nVar.n(j10);
    }

    @Override // v2.j0.a
    /* renamed from: o */
    public void a(n nVar) {
        ((n.a) com.google.android.exoplayer2.util.l0.j(this.f58860f)).a(this);
    }

    @Override // v2.n
    public q0 p() {
        return ((n) com.google.android.exoplayer2.util.l0.j(this.f58859e)).p();
    }

    public void q(long j10) {
        this.f58863i = j10;
    }

    @Override // v2.n
    public long r() {
        return ((n) com.google.android.exoplayer2.util.l0.j(this.f58859e)).r();
    }

    @Override // v2.n
    public void s(long j10, boolean z10) {
        ((n) com.google.android.exoplayer2.util.l0.j(this.f58859e)).s(j10, z10);
    }

    @Override // v2.n
    public void t(long j10) {
        ((n) com.google.android.exoplayer2.util.l0.j(this.f58859e)).t(j10);
    }

    public void u() {
        if (this.f58859e != null) {
            ((q) com.google.android.exoplayer2.util.a.e(this.f58858d)).d(this.f58859e);
        }
    }

    public void v(q qVar) {
        com.google.android.exoplayer2.util.a.f(this.f58858d == null);
        this.f58858d = qVar;
    }
}
