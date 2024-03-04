package kg;

import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class d extends e {

    /* renamed from: n  reason: collision with root package name */
    private final r.a<d> f53771n;

    /* renamed from: o  reason: collision with root package name */
    private kg.a f53772o;

    /* renamed from: p  reason: collision with root package name */
    private j f53773p;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class a extends v0 {

        /* renamed from: k  reason: collision with root package name */
        private final j f53774k;

        a(j jVar, kg.a aVar) {
            super(aVar);
            this.f53774k = jVar;
        }

        @Override // kg.c
        boolean A3() {
            return this.f53774k.f1();
        }

        @Override // kg.c
        int B3() {
            return this.f53774k.refCnt();
        }

        @Override // kg.c
        boolean C3() {
            return this.f53774k.release();
        }

        @Override // kg.c
        boolean D3(int i9) {
            return this.f53774k.release(i9);
        }

        @Override // kg.c
        j E3() {
            this.f53774k.retain();
            return this;
        }

        @Override // kg.c
        j F3(int i9) {
            this.f53774k.U1(i9);
            return this;
        }

        @Override // kg.c
        j G3() {
            this.f53774k.q2();
            return this;
        }

        @Override // kg.c
        j H3(Object obj) {
            this.f53774k.touch(obj);
            return this;
        }

        @Override // kg.a, kg.j
        public j V1() {
            return g0.J3(s2(), this, Q1(), K2());
        }

        @Override // kg.a, kg.j
        public j W1() {
            return v3(Q1(), F());
        }

        @Override // kg.a, kg.j
        public j f0() {
            p3();
            return new a(this.f53774k, this);
        }

        @Override // kg.q, kg.a, kg.j
        public j n2(int i9, int i10) {
            f3(i9, i10);
            return new b(this.f53774k, s2(), i9, i10);
        }

        @Override // kg.a
        public j v3(int i9, int i10) {
            return i0.K3(s2(), this, i9, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b extends x0 {

        /* renamed from: l  reason: collision with root package name */
        private final j f53775l;

        b(j jVar, kg.a aVar, int i9, int i10) {
            super(aVar, i9, i10);
            this.f53775l = jVar;
        }

        @Override // kg.c
        boolean A3() {
            return this.f53775l.f1();
        }

        @Override // kg.c
        int B3() {
            return this.f53775l.refCnt();
        }

        @Override // kg.c
        boolean C3() {
            return this.f53775l.release();
        }

        @Override // kg.c
        boolean D3(int i9) {
            return this.f53775l.release(i9);
        }

        @Override // kg.c
        j E3() {
            this.f53775l.retain();
            return this;
        }

        @Override // kg.c
        j F3(int i9) {
            this.f53775l.U1(i9);
            return this;
        }

        @Override // kg.c
        j G3() {
            this.f53775l.q2();
            return this;
        }

        @Override // kg.c
        j H3(Object obj) {
            this.f53775l.touch(obj);
            return this;
        }

        @Override // kg.a, kg.j
        public j V1() {
            return g0.J3(s2(), this, J3(Q1()), J3(K2()));
        }

        @Override // kg.a, kg.j
        public j W1() {
            return v3(0, F());
        }

        @Override // kg.f, kg.a, kg.j
        public j f0() {
            p3();
            return new a(this.f53775l, s2()).d2(J3(Q1()), J3(K2()));
        }

        @Override // kg.f, kg.a, kg.j
        public j n2(int i9, int i10) {
            f3(i9, i10);
            return new b(this.f53775l, s2(), J3(i9), i10);
        }

        @Override // kg.a
        public j v3(int i9, int i10) {
            return i0.K3(s2(), this, J3(i9), i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public d(r.a<? extends d> aVar) {
        super(0);
        this.f53771n = aVar;
    }

    @Override // kg.e
    protected final void C3() {
        j jVar = this.f53773p;
        this.f53771n.a(this);
        jVar.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final j F3() {
        p3();
        return new a(this, s2());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final <U extends d> U G3(kg.a aVar, j jVar, int i9, int i10, int i11) {
        jVar.retain();
        this.f53773p = jVar;
        this.f53772o = aVar;
        try {
            t3(i11);
            y3(i9, i10);
            E3();
            return this;
        } catch (Throwable th2) {
            this.f53772o = null;
            this.f53773p = null;
            jVar.release();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void H3(j jVar) {
        this.f53773p = jVar;
    }

    @Override // kg.j
    /* renamed from: I3 */
    public final kg.a s2() {
        return this.f53772o;
    }

    @Override // kg.j
    public final k P() {
        return s2().P();
    }

    @Override // kg.a, kg.j
    public final j W1() {
        int Q1 = Q1();
        return v3(Q1, K2() - Q1);
    }

    @Override // kg.j
    public boolean a1() {
        return s2().a1();
    }

    @Override // kg.j
    public boolean b1() {
        return s2().b1();
    }

    @Override // kg.j
    public final ByteBuffer e1(int i9, int i10) {
        return r1(i9, i10);
    }

    @Override // kg.j
    public boolean g1() {
        return s2().g1();
    }

    @Override // kg.j
    public final boolean h1() {
        return s2().h1();
    }

    @Override // kg.a, kg.j
    public boolean i1() {
        return s2().i1();
    }

    @Override // kg.a, kg.j
    public j n2(int i9, int i10) {
        p3();
        return new b(this, s2(), i9, i10);
    }

    @Override // kg.j
    public final int s1() {
        return s2().s1();
    }

    @Override // kg.j
    @Deprecated
    public final ByteOrder v1() {
        return s2().v1();
    }

    @Override // kg.j
    public byte[] y() {
        return s2().y();
    }
}
