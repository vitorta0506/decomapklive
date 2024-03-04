package io.grpc.netty.shaded.io.netty.handler.codec.http;

import io.grpc.netty.shaded.io.netty.handler.codec.TooLongFrameException;
import kg.s0;
/* loaded from: classes5.dex */
public class a0 extends pg.k<z, v, p, l> {

    /* renamed from: k  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43854k = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(a0.class);

    /* renamed from: l  reason: collision with root package name */
    private static final n f43855l;

    /* renamed from: m  reason: collision with root package name */
    private static final n f43856m;

    /* renamed from: n  reason: collision with root package name */
    private static final n f43857n;

    /* renamed from: o  reason: collision with root package name */
    private static final n f43858o;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f43859j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f43860a;

        a(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            this.f43860a = mVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            if (!iVar.p0()) {
                a0.f43854k.debug("Failed to send a 413 Request Entity Too Large.", iVar.L());
            }
            this.f43860a.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f43862a;

        b(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            this.f43862a = mVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            if (iVar.p0()) {
                return;
            }
            a0.f43854k.debug("Failed to send a 413 Request Entity Too Large.", iVar.L());
            this.f43862a.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class c implements l {

        /* renamed from: a  reason: collision with root package name */
        protected final v f43864a;

        /* renamed from: b  reason: collision with root package name */
        private final kg.j f43865b;

        /* renamed from: c  reason: collision with root package name */
        private t f43866c;

        c(v vVar, kg.j jVar, t tVar) {
            this.f43864a = vVar;
            this.f43865b = jVar;
            this.f43866c = tVar;
        }

        @Override // pg.f
        public pg.e a() {
            return this.f43864a.a();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.v
        public j0 b() {
            return this.f43864a.b();
        }

        @Override // kg.l
        public kg.j content() {
            return this.f43865b;
        }

        @Override // pg.f
        public void e(pg.e eVar) {
            this.f43864a.e(eVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.v
        public t h() {
            return this.f43864a.h();
        }

        public j0 j() {
            return this.f43864a.b();
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        /* renamed from: k */
        public l retain() {
            this.f43865b.retain();
            return this;
        }

        void l(t tVar) {
            this.f43866c = tVar;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        /* renamed from: n */
        public l touch(Object obj) {
            this.f43865b.touch(obj);
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        public int refCnt() {
            return this.f43865b.refCnt();
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        public boolean release() {
            return this.f43865b.release();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.k0
        public t x() {
            t tVar = this.f43866c;
            return tVar == null ? k.f43969c : tVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d extends c implements m {
        d(d0 d0Var, kg.j jVar, t tVar) {
            super(d0Var, jVar, tVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.d0
        public String i() {
            return p();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.d0
        public y method() {
            return o();
        }

        public y o() {
            return ((d0) this.f43864a).method();
        }

        public String p() {
            return ((d0) this.f43864a).i();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.a0.c, io.grpc.netty.shaded.io.netty.util.s
        /* renamed from: q */
        public m retain() {
            super.retain();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.a0.c, io.grpc.netty.shaded.io.netty.util.s
        /* renamed from: r */
        public m touch(Object obj) {
            super.touch(obj);
            return this;
        }

        public String toString() {
            return x.c(new StringBuilder(256), this).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class e extends c implements n {
        e(f0 f0Var, kg.j jVar, t tVar) {
            super(f0Var, jVar, tVar);
        }

        public h0 o() {
            return ((f0) this.f43864a).t();
        }

        public n p(kg.j jVar) {
            io.grpc.netty.shaded.io.netty.handler.codec.http.c cVar = new io.grpc.netty.shaded.io.netty.handler.codec.http.c(j(), o(), jVar, h().B(), x().B());
            cVar.e(a());
            return cVar;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.a0.c, io.grpc.netty.shaded.io.netty.util.s
        /* renamed from: q */
        public n touch(Object obj) {
            super.touch(obj);
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.f0
        public h0 t() {
            return o();
        }

        public String toString() {
            return x.d(new StringBuilder(256), this).toString();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.n
        public n u() {
            return p(content().V1());
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.a0.c, io.grpc.netty.shaded.io.netty.util.s
        public n retain() {
            super.retain();
            return this;
        }
    }

    static {
        j0 j0Var = j0.f43961i;
        h0 h0Var = h0.f43926f;
        kg.j jVar = s0.f53902d;
        f43855l = new io.grpc.netty.shaded.io.netty.handler.codec.http.c(j0Var, h0Var, jVar);
        io.grpc.netty.shaded.io.netty.handler.codec.http.c cVar = new io.grpc.netty.shaded.io.netty.handler.codec.http.c(j0Var, h0.P, jVar);
        f43856m = cVar;
        h0 h0Var2 = h0.L;
        io.grpc.netty.shaded.io.netty.handler.codec.http.c cVar2 = new io.grpc.netty.shaded.io.netty.handler.codec.http.c(j0Var, h0Var2, jVar);
        f43857n = cVar2;
        io.grpc.netty.shaded.io.netty.handler.codec.http.c cVar3 = new io.grpc.netty.shaded.io.netty.handler.codec.http.c(j0Var, h0Var2, jVar);
        f43858o = cVar3;
        t h10 = cVar.h();
        io.grpc.netty.shaded.io.netty.util.c cVar4 = r.f44024w;
        h10.O(cVar4, 0);
        cVar3.h().O(cVar4, 0);
        cVar2.h().O(cVar4, 0);
        cVar2.h().O(r.f44016s, s.f44047n);
    }

    public a0(int i9) {
        this(i9, false);
    }

    private static Object T(v vVar, int i9, io.grpc.netty.shaded.io.netty.channel.w wVar) {
        if (i0.i(vVar)) {
            wVar.s(q.f43979a);
            return f43856m.u();
        } else if (i0.d(vVar)) {
            if (i0.b(vVar, -1L) <= i9) {
                return f43855l.u();
            }
            wVar.s(q.f43979a);
            return f43858o.u();
        } else {
            return null;
        }
    }

    @Override // pg.k
    protected boolean G(Object obj) {
        if (obj instanceof f0) {
            return ((f0) obj).t().c().equals(HttpStatusClass.CLIENT_ERROR);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: R */
    public void v(l lVar, p pVar) throws Exception {
        if (pVar instanceof k0) {
            ((c) lVar).l(((k0) pVar).x());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: S */
    public l x(v vVar, kg.j jVar) throws Exception {
        i0.k(vVar, false);
        if (vVar instanceof d0) {
            return new d((d0) vVar, jVar, null);
        }
        if (vVar instanceof f0) {
            return new e((f0) vVar, jVar, null);
        }
        throw new Error();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: U */
    public void z(l lVar) throws Exception {
        if (i0.e(lVar)) {
            return;
        }
        lVar.h().O(r.f44024w, String.valueOf(lVar.content().P1()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: W */
    public void F(io.grpc.netty.shaded.io.netty.channel.m mVar, v vVar) throws Exception {
        if (vVar instanceof d0) {
            if (!(vVar instanceof l) && (i0.d(vVar) || i0.g(vVar))) {
                mVar.g(f43858o.u()).c((ug.r<? extends ug.q<? super Void>>) new b(mVar));
            } else {
                mVar.g(f43857n.u()).c((ug.r<? extends ug.q<? super Void>>) new a(mVar));
            }
        } else if (vVar instanceof f0) {
            mVar.close();
            throw new TooLongFrameException("Response entity too large: " + vVar);
        } else {
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: a0 */
    public boolean I(z zVar) throws Exception {
        return zVar instanceof l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: b0 */
    public boolean J(v vVar, int i9) {
        try {
            return i0.b(vVar, -1L) > ((long) i9);
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: c0 */
    public boolean K(z zVar) throws Exception {
        return zVar instanceof p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: d0 */
    public boolean L(p pVar) throws Exception {
        return pVar instanceof k0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: e0 */
    public boolean M(z zVar) throws Exception {
        return zVar instanceof v;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k
    /* renamed from: f0 */
    public Object N(v vVar, int i9, io.grpc.netty.shaded.io.netty.channel.w wVar) {
        Object T = T(vVar, i9, wVar);
        if (T != null) {
            vVar.h().K(r.I);
        }
        return T;
    }

    @Override // pg.k
    protected boolean y(Object obj) {
        return this.f43859j && G(obj);
    }

    public a0(int i9, boolean z10) {
        super(i9);
        this.f43859j = z10;
    }
}
