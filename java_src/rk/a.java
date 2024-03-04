package rk;

import java.io.ByteArrayOutputStream;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f57540a = new ByteArrayOutputStream();

    private a() {
    }

    public static a f() {
        return new a();
    }

    public a a(boolean z10) {
        this.f57540a.write(z10 ? 1 : 0);
        return this;
    }

    public byte[] b() {
        return this.f57540a.toByteArray();
    }

    public a c(org.bouncycastle.util.c cVar) {
        try {
            this.f57540a.write(cVar.getEncoded());
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public a d(byte[] bArr) {
        try {
            this.f57540a.write(bArr);
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public a e(byte[][] bArr) {
        try {
            for (byte[] bArr2 : bArr) {
                this.f57540a.write(bArr2);
            }
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public a g(int i9, int i10) {
        while (this.f57540a.size() < i10) {
            this.f57540a.write(i9);
        }
        return this;
    }

    public a h(int i9) {
        int i10 = i9 & 65535;
        this.f57540a.write((byte) (i10 >>> 8));
        this.f57540a.write((byte) i10);
        return this;
    }

    public a i(int i9) {
        this.f57540a.write((byte) (i9 >>> 24));
        this.f57540a.write((byte) (i9 >>> 16));
        this.f57540a.write((byte) (i9 >>> 8));
        this.f57540a.write((byte) i9);
        return this;
    }

    public a j(long j10) {
        i((int) (j10 >>> 32));
        i((int) j10);
        return this;
    }
}
