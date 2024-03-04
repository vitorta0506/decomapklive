package rk;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* loaded from: classes7.dex */
class g implements org.bouncycastle.util.c {

    /* renamed from: a  reason: collision with root package name */
    private final e f57568a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f57569b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f57570c;

    public g(e eVar, byte[] bArr, byte[] bArr2) {
        this.f57568a = eVar;
        this.f57569b = bArr;
        this.f57570c = bArr2;
    }

    public static g a(Object obj) throws IOException {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            e f10 = e.f(dataInputStream.readInt());
            byte[] bArr = new byte[f10.d()];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[f10.e() * f10.d()];
            dataInputStream.readFully(bArr2);
            return new g(f10, bArr, bArr2);
        } else if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return a(dl.a.b((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        } else {
            DataInputStream dataInputStream2 = null;
            try {
                DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
                try {
                    g a10 = a(dataInputStream3);
                    dataInputStream3.close();
                    return a10;
                } catch (Throwable th2) {
                    th = th2;
                    dataInputStream2 = dataInputStream3;
                    if (dataInputStream2 != null) {
                        dataInputStream2.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        e eVar = this.f57568a;
        if (eVar == null ? gVar.f57568a == null : eVar.equals(gVar.f57568a)) {
            if (Arrays.equals(this.f57569b, gVar.f57569b)) {
                return Arrays.equals(this.f57570c, gVar.f57570c);
            }
            return false;
        }
        return false;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return a.f().i(this.f57568a.g()).d(this.f57569b).d(this.f57570c).b();
    }

    public int hashCode() {
        e eVar = this.f57568a;
        return ((((eVar != null ? eVar.hashCode() : 0) * 31) + Arrays.hashCode(this.f57569b)) * 31) + Arrays.hashCode(this.f57570c);
    }
}
