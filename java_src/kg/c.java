package kg;

import java.nio.ByteBuffer;
@Deprecated
/* loaded from: classes5.dex */
public abstract class c extends a {
    /* JADX INFO: Access modifiers changed from: protected */
    public c(int i9) {
        super(i9);
    }

    boolean A3() {
        return s2().f1();
    }

    int B3() {
        return s2().refCnt();
    }

    boolean C3() {
        return s2().release();
    }

    boolean D3(int i9) {
        return s2().release(i9);
    }

    j E3() {
        s2().retain();
        return this;
    }

    j F3(int i9) {
        s2().U1(i9);
        return this;
    }

    j G3() {
        s2().q2();
        return this;
    }

    j H3(Object obj) {
        s2().touch(obj);
        return this;
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: T1 */
    public final j retain() {
        return E3();
    }

    @Override // kg.j
    public final j U1(int i9) {
        return F3(i9);
    }

    @Override // kg.j
    public ByteBuffer e1(int i9, int i10) {
        return r1(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.j
    public final boolean f1() {
        return A3();
    }

    @Override // kg.j
    public boolean g1() {
        return s2().g1();
    }

    @Override // kg.a, kg.j
    public boolean i1() {
        return s2().i1();
    }

    @Override // kg.j
    public final j q2() {
        return G3();
    }

    @Override // kg.j
    public ByteBuffer r1(int i9, int i10) {
        return s2().r1(i9, i10);
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: r2 */
    public final j touch(Object obj) {
        return H3(obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final int refCnt() {
        return B3();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final boolean release() {
        return C3();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final boolean release(int i9) {
        return D3(i9);
    }
}
