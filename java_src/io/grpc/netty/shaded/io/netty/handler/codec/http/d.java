package io.grpc.netty.shaded.io.netty.handler.codec.http;
/* loaded from: classes5.dex */
public class d extends g implements p {

    /* renamed from: b  reason: collision with root package name */
    private final kg.j f43911b;

    public d(kg.j jVar) {
        this.f43911b = (kg.j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "content");
    }

    @Override // kg.l
    public kg.j content() {
        return this.f43911b;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: j */
    public p retain() {
        this.f43911b.retain();
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: k */
    public p touch(Object obj) {
        this.f43911b.touch(obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public int refCnt() {
        return this.f43911b.refCnt();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return this.f43911b.release();
    }

    public String toString() {
        return io.grpc.netty.shaded.io.netty.util.internal.b0.m(this) + "(data: " + content() + ", decoderResult: " + a() + ')';
    }
}
