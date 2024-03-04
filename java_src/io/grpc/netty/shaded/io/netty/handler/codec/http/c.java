package io.grpc.netty.shaded.io.netty.handler.codec.http;

import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import kg.s0;
/* loaded from: classes5.dex */
public class c extends i implements n {

    /* renamed from: e  reason: collision with root package name */
    private final kg.j f43902e;

    /* renamed from: f  reason: collision with root package name */
    private final t f43903f;

    /* renamed from: g  reason: collision with root package name */
    private int f43904g;

    public c(j0 j0Var, h0 h0Var, kg.j jVar) {
        this(j0Var, h0Var, jVar, true);
    }

    @Override // kg.l
    public kg.j content() {
        return this.f43902e;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.i, io.grpc.netty.shaded.io.netty.handler.codec.http.f, io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            return super.equals(cVar) && content().equals(cVar.content()) && x().equals(cVar.x());
        }
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.i, io.grpc.netty.shaded.io.netty.handler.codec.http.f, io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public int hashCode() {
        int hashCode;
        int i9 = this.f43904g;
        if (i9 == 0) {
            if (kg.n.z(content())) {
                try {
                    hashCode = content().hashCode() + 31;
                } catch (IllegalReferenceCountException unused) {
                }
                int hashCode2 = (((hashCode * 31) + x().hashCode()) * 31) + super.hashCode();
                this.f43904g = hashCode2;
                return hashCode2;
            }
            hashCode = 31;
            int hashCode22 = (((hashCode * 31) + x().hashCode()) * 31) + super.hashCode();
            this.f43904g = hashCode22;
            return hashCode22;
        }
        return i9;
    }

    public n j(kg.j jVar) {
        c cVar = new c(b(), t(), jVar, h().B(), x().B());
        cVar.e(a());
        return cVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: k */
    public n touch(Object obj) {
        this.f43902e.touch(obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public int refCnt() {
        return this.f43902e.refCnt();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return this.f43902e.release();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.i
    public String toString() {
        return x.d(new StringBuilder(256), this).toString();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.n
    public n u() {
        return j(content().V1());
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.k0
    public t x() {
        return this.f43903f;
    }

    public c(j0 j0Var, h0 h0Var, boolean z10) {
        this(j0Var, h0Var, s0.b(0), z10, false);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public n retain() {
        this.f43902e.retain();
        return this;
    }

    public c(j0 j0Var, h0 h0Var, kg.j jVar, boolean z10) {
        this(j0Var, h0Var, jVar, z10, false);
    }

    public c(j0 j0Var, h0 h0Var, kg.j jVar, boolean z10, boolean z11) {
        super(j0Var, h0Var, z10, z11);
        this.f43902e = (kg.j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "content");
        this.f43903f = z11 ? new a(z10) : new e(z10);
    }

    public c(j0 j0Var, h0 h0Var, kg.j jVar, t tVar, t tVar2) {
        super(j0Var, h0Var, tVar);
        this.f43902e = (kg.j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "content");
        this.f43903f = (t) io.grpc.netty.shaded.io.netty.util.internal.s.h(tVar2, "trailingHeaders");
    }
}
