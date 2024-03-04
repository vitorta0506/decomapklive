package pg;

import io.grpc.netty.shaded.io.netty.channel.w;
import io.grpc.netty.shaded.io.netty.handler.codec.MessageAggregationException;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import io.grpc.netty.shaded.io.netty.util.r;
import java.util.List;
import kg.l;
import kg.s0;
import ug.q;
/* loaded from: classes5.dex */
public abstract class k<I, S, C extends kg.l, O extends kg.l> extends l<I> {

    /* renamed from: c  reason: collision with root package name */
    private final int f56877c;

    /* renamed from: d  reason: collision with root package name */
    private O f56878d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f56879e;

    /* renamed from: f  reason: collision with root package name */
    private int f56880f = 1024;

    /* renamed from: g  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.channel.m f56881g;

    /* renamed from: h  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.channel.j f56882h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f56883i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f56884a;

        a(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            this.f56884a = mVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            if (iVar.p0()) {
                return;
            }
            this.f56884a.v(iVar.L());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k(int i9) {
        P(i9);
        this.f56877c = i9;
    }

    private void B(O o10) throws Exception {
        this.f56883i = false;
        z(o10);
    }

    private void H(io.grpc.netty.shaded.io.netty.channel.m mVar, S s10) throws Exception {
        this.f56879e = true;
        this.f56878d = null;
        try {
            F(mVar, s10);
        } finally {
            r.a(s10);
        }
    }

    private void O() {
        O o10 = this.f56878d;
        if (o10 != null) {
            o10.release();
            this.f56878d = null;
            this.f56879e = false;
            this.f56883i = false;
        }
    }

    private static void P(int i9) {
        s.n(i9, "maxContentLength");
    }

    private static void w(kg.o oVar, kg.j jVar) {
        if (jVar.j1()) {
            oVar.I3(true, jVar.retain());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void A(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        this.f56881g = mVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void E(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        try {
            super.E(mVar);
        } finally {
            O();
        }
    }

    protected abstract void F(io.grpc.netty.shaded.io.netty.channel.m mVar, S s10) throws Exception;

    protected abstract boolean G(Object obj) throws Exception;

    protected abstract boolean I(I i9) throws Exception;

    protected abstract boolean J(S s10, int i9) throws Exception;

    protected abstract boolean K(I i9) throws Exception;

    protected abstract boolean L(C c10) throws Exception;

    protected abstract boolean M(I i9) throws Exception;

    protected abstract Object N(S s10, int i9, w wVar) throws Exception;

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void Z(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        if (this.f56878d != null && !mVar.d().b0().l()) {
            mVar.read();
        }
        mVar.k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // pg.l
    public boolean s(Object obj) throws Exception {
        if (super.s(obj) && !I(obj)) {
            if (!M(obj)) {
                return this.f56883i && K(obj);
            }
            this.f56883i = true;
            return true;
        }
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void t(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        try {
            super.t(mVar);
        } finally {
            O();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // pg.l
    public void u(io.grpc.netty.shaded.io.netty.channel.m mVar, I i9, List<Object> list) throws Exception {
        boolean L;
        kg.l x10;
        if (M(i9)) {
            this.f56879e = false;
            O o10 = this.f56878d;
            if (o10 == null) {
                Object N = N(i9, this.f56877c, mVar.J());
                if (N != null) {
                    io.grpc.netty.shaded.io.netty.channel.j jVar = this.f56882h;
                    if (jVar == null) {
                        jVar = new a(mVar);
                        this.f56882h = jVar;
                    }
                    boolean y10 = y(N);
                    this.f56879e = G(N);
                    q<Void> c10 = mVar.g(N).c((ug.r<? extends q<? super Void>>) jVar);
                    if (y10) {
                        c10.c((ug.r<? extends q<? super Void>>) io.grpc.netty.shaded.io.netty.channel.j.f43707h3);
                        return;
                    } else if (this.f56879e) {
                        return;
                    }
                } else if (J(i9, this.f56877c)) {
                    H(mVar, i9);
                    return;
                }
                if ((i9 instanceof f) && !((f) i9).a().e()) {
                    if (i9 instanceof kg.l) {
                        x10 = x(i9, ((kg.l) i9).content().retain());
                    } else {
                        x10 = x(i9, s0.f53902d);
                    }
                    B(x10);
                    list.add(x10);
                    return;
                }
                kg.o m10 = mVar.P().m(this.f56880f);
                if (i9 instanceof kg.l) {
                    w(m10, ((kg.l) i9).content());
                }
                this.f56878d = (O) x(i9, m10);
                return;
            }
            o10.release();
            this.f56878d = null;
            throw new MessageAggregationException();
        } else if (K(i9)) {
            O o11 = this.f56878d;
            if (o11 == null) {
                return;
            }
            kg.o oVar = (kg.o) o11.content();
            kg.l lVar = (kg.l) i9;
            if (oVar.P1() > this.f56877c - lVar.content().P1()) {
                H(mVar, this.f56878d);
                return;
            }
            w(oVar, lVar.content());
            v(this.f56878d, lVar);
            if (lVar instanceof f) {
                e a10 = ((f) lVar).a();
                if (!a10.e()) {
                    O o12 = this.f56878d;
                    if (o12 instanceof f) {
                        ((f) o12).e(e.b(a10.a()));
                    }
                    L = true;
                } else {
                    L = L(lVar);
                }
            } else {
                L = L(lVar);
            }
            if (L) {
                B(this.f56878d);
                list.add(this.f56878d);
                this.f56878d = null;
            }
        } else {
            throw new MessageAggregationException();
        }
    }

    protected abstract void v(O o10, C c10) throws Exception;

    protected abstract O x(S s10, kg.j jVar) throws Exception;

    protected abstract boolean y(Object obj) throws Exception;

    protected abstract void z(O o10) throws Exception;
}
