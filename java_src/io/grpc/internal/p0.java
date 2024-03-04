package io.grpc.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public abstract class p0 implements v1 {

    /* renamed from: a  reason: collision with root package name */
    private final v1 f42974a;

    /* JADX INFO: Access modifiers changed from: protected */
    public p0(v1 v1Var) {
        this.f42974a = (v1) com.google.common.base.o.t(v1Var, "buf");
    }

    @Override // io.grpc.internal.v1
    public v1 G(int i9) {
        return this.f42974a.G(i9);
    }

    @Override // io.grpc.internal.v1
    public void a1(byte[] bArr, int i9, int i10) {
        this.f42974a.a1(bArr, i9, i10);
    }

    @Override // io.grpc.internal.v1
    public void k1() {
        this.f42974a.k1();
    }

    @Override // io.grpc.internal.v1
    public boolean markSupported() {
        return this.f42974a.markSupported();
    }

    @Override // io.grpc.internal.v1
    public int n() {
        return this.f42974a.n();
    }

    @Override // io.grpc.internal.v1
    public int readUnsignedByte() {
        return this.f42974a.readUnsignedByte();
    }

    @Override // io.grpc.internal.v1
    public void reset() {
        this.f42974a.reset();
    }

    @Override // io.grpc.internal.v1
    public void skipBytes(int i9) {
        this.f42974a.skipBytes(i9);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", this.f42974a).toString();
    }

    @Override // io.grpc.internal.v1
    public void v0(ByteBuffer byteBuffer) {
        this.f42974a.v0(byteBuffer);
    }

    @Override // io.grpc.internal.v1
    public void x1(OutputStream outputStream, int i9) throws IOException {
        this.f42974a.x1(outputStream, i9);
    }
}
