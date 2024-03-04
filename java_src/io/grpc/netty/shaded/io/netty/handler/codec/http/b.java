package io.grpc.netty.shaded.io.netty.handler.codec.http;

import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
/* loaded from: classes5.dex */
public class b extends h implements m {

    /* renamed from: f  reason: collision with root package name */
    private final kg.j f43867f;

    /* renamed from: g  reason: collision with root package name */
    private final t f43868g;

    /* renamed from: h  reason: collision with root package name */
    private int f43869h;

    public b(j0 j0Var, y yVar, String str, kg.j jVar, boolean z10) {
        super(j0Var, yVar, str, z10);
        this.f43867f = (kg.j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "content");
        this.f43868g = new e(z10);
    }

    @Override // kg.l
    public kg.j content() {
        return this.f43867f;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.h, io.grpc.netty.shaded.io.netty.handler.codec.http.f, io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            return super.equals(bVar) && content().equals(bVar.content()) && x().equals(bVar.x());
        }
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.h, io.grpc.netty.shaded.io.netty.handler.codec.http.f, io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public int hashCode() {
        int hashCode;
        int i9 = this.f43869h;
        if (i9 == 0) {
            if (kg.n.z(content())) {
                try {
                    hashCode = content().hashCode() + 31;
                } catch (IllegalReferenceCountException unused) {
                }
                int hashCode2 = (((hashCode * 31) + x().hashCode()) * 31) + super.hashCode();
                this.f43869h = hashCode2;
                return hashCode2;
            }
            hashCode = 31;
            int hashCode22 = (((hashCode * 31) + x().hashCode()) * 31) + super.hashCode();
            this.f43869h = hashCode22;
            return hashCode22;
        }
        return i9;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: j */
    public m retain() {
        this.f43867f.retain();
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: k */
    public m touch(Object obj) {
        this.f43867f.touch(obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public int refCnt() {
        return this.f43867f.refCnt();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return this.f43867f.release();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.h
    public String toString() {
        return x.c(new StringBuilder(256), this).toString();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.k0
    public t x() {
        return this.f43868g;
    }
}
