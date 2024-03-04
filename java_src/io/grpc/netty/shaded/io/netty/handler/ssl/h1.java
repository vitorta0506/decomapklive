package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class h1 extends io.grpc.netty.shaded.io.netty.util.b implements f1 {

    /* renamed from: a  reason: collision with root package name */
    private final kg.j f44579a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f44580b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h1(kg.j jVar, boolean z10) {
        this.f44579a = (kg.j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "content");
        this.f44580b = z10;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: a */
    public h1 retain() {
        return (h1) super.retain();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    /* renamed from: b */
    public h1 retain(int i9) {
        return (h1) super.retain(i9);
    }

    @Override // kg.l
    public kg.j content() {
        int refCnt = refCnt();
        if (refCnt > 0) {
            return this.f44579a;
        }
        throw new IllegalReferenceCountException(refCnt);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    protected void deallocate() {
        if (this.f44580b) {
            v1.y(this.f44579a);
        }
        this.f44579a.release();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    /* renamed from: e */
    public h1 touch() {
        return (h1) super.touch();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: h */
    public h1 touch(Object obj) {
        this.f44579a.touch(obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.f1
    public boolean isSensitive() {
        return this.f44580b;
    }
}
