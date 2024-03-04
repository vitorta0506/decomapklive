package kg;

import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class a1 extends y0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(k kVar, int i9, int i10) {
        super(kVar, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0
    public ByteBuffer F3(int i9) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.i(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0
    public void G3(ByteBuffer byteBuffer) {
        io.grpc.netty.shaded.io.netty.util.internal.t.A(byteBuffer);
    }

    @Override // kg.u0, kg.j
    public j I(int i9) {
        i3(i9);
        if (i9 == F()) {
            return this;
        }
        z3(i9);
        M3(O3(this.f53917o, i9), false);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer O3(ByteBuffer byteBuffer, int i9) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.N0(byteBuffer, i9);
    }
}
