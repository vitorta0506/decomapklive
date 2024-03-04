package ah;

import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.e2;
import com.google.protobuf.o1;
import io.grpc.m0;
import io.grpc.w;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes5.dex */
final class a extends InputStream implements w, m0 {

    /* renamed from: a  reason: collision with root package name */
    private o1 f781a;

    /* renamed from: b  reason: collision with root package name */
    private final e2<?> f782b;

    /* renamed from: c  reason: collision with root package name */
    private ByteArrayInputStream f783c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(o1 o1Var, e2<?> e2Var) {
        this.f781a = o1Var;
        this.f782b = e2Var;
    }

    @Override // io.grpc.w
    public int a(OutputStream outputStream) throws IOException {
        o1 o1Var = this.f781a;
        if (o1Var != null) {
            int serializedSize = o1Var.getSerializedSize();
            this.f781a.writeTo(outputStream);
            this.f781a = null;
            return serializedSize;
        }
        ByteArrayInputStream byteArrayInputStream = this.f783c;
        if (byteArrayInputStream != null) {
            int a10 = (int) b.a(byteArrayInputStream, outputStream);
            this.f783c = null;
            return a10;
        }
        return 0;
    }

    @Override // java.io.InputStream
    public int available() {
        o1 o1Var = this.f781a;
        if (o1Var != null) {
            return o1Var.getSerializedSize();
        }
        ByteArrayInputStream byteArrayInputStream = this.f783c;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.available();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o1 c() {
        o1 o1Var = this.f781a;
        if (o1Var != null) {
            return o1Var;
        }
        throw new IllegalStateException("message not available");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e2<?> e() {
        return this.f782b;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f781a != null) {
            this.f783c = new ByteArrayInputStream(this.f781a.toByteArray());
            this.f781a = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.f783c;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read();
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        o1 o1Var = this.f781a;
        if (o1Var != null) {
            int serializedSize = o1Var.getSerializedSize();
            if (serializedSize == 0) {
                this.f781a = null;
                this.f783c = null;
                return -1;
            } else if (i10 >= serializedSize) {
                CodedOutputStream k02 = CodedOutputStream.k0(bArr, i9, serializedSize);
                this.f781a.writeTo(k02);
                k02.e0();
                k02.d();
                this.f781a = null;
                this.f783c = null;
                return serializedSize;
            } else {
                this.f783c = new ByteArrayInputStream(this.f781a.toByteArray());
                this.f781a = null;
            }
        }
        ByteArrayInputStream byteArrayInputStream = this.f783c;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read(bArr, i9, i10);
        }
        return -1;
    }
}
