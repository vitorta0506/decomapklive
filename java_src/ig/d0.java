package ig;

import io.grpc.internal.q2;
/* loaded from: classes5.dex */
class d0 implements q2 {

    /* renamed from: a  reason: collision with root package name */
    private final kg.j f41150a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(kg.j jVar) {
        this.f41150a = jVar;
    }

    @Override // io.grpc.internal.q2
    public int a() {
        return this.f41150a.t2();
    }

    @Override // io.grpc.internal.q2
    public void b(byte b10) {
        this.f41150a.u2(b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public kg.j c() {
        return this.f41150a;
    }

    @Override // io.grpc.internal.q2
    public int n() {
        return this.f41150a.P1();
    }

    @Override // io.grpc.internal.q2
    public void release() {
        this.f41150a.release();
    }

    @Override // io.grpc.internal.q2
    public void write(byte[] bArr, int i9, int i10) {
        this.f41150a.B2(bArr, i9, i10);
    }
}
