package xg;

import io.grpc.internal.q2;
import okio.Buffer;
/* loaded from: classes5.dex */
class m implements q2 {

    /* renamed from: a  reason: collision with root package name */
    private final Buffer f59893a;

    /* renamed from: b  reason: collision with root package name */
    private int f59894b;

    /* renamed from: c  reason: collision with root package name */
    private int f59895c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Buffer buffer, int i9) {
        this.f59893a = buffer;
        this.f59894b = i9;
    }

    @Override // io.grpc.internal.q2
    public int a() {
        return this.f59894b;
    }

    @Override // io.grpc.internal.q2
    public void b(byte b10) {
        this.f59893a.writeByte((int) b10);
        this.f59894b--;
        this.f59895c++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Buffer c() {
        return this.f59893a;
    }

    @Override // io.grpc.internal.q2
    public int n() {
        return this.f59895c;
    }

    @Override // io.grpc.internal.q2
    public void release() {
    }

    @Override // io.grpc.internal.q2
    public void write(byte[] bArr, int i9, int i10) {
        this.f59893a.write(bArr, i9, i10);
        this.f59894b -= i10;
        this.f59895c += i10;
    }
}
