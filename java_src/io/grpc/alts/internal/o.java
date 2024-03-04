package io.grpc.alts.internal;

import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
final class o implements AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer[] f41944a = new ByteBuffer[1];

    /* renamed from: b  reason: collision with root package name */
    private final ByteBuffer[] f41945b = new ByteBuffer[1];

    private static ByteBuffer[] a(kg.j jVar, ByteBuffer[] byteBufferArr) {
        if (!(jVar instanceof kg.o) && jVar.s1() == 1) {
            byteBufferArr[0] = jVar.e1(jVar.Q1(), jVar.P1());
            return byteBufferArr;
        }
        return jVar.t1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer[] b(kg.j jVar) {
        return a(jVar, this.f41944a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer[] c(kg.j jVar) {
        int Q1 = jVar.Q1();
        int K2 = jVar.K2();
        jVar.R1(K2);
        jVar.L2(jVar.F());
        try {
            return a(jVar, this.f41945b);
        } finally {
            jVar.R1(Q1);
            jVar.L2(K2);
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.f41944a[0] = null;
        this.f41945b[0] = null;
    }
}
