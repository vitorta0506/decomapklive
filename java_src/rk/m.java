package rk;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* loaded from: classes7.dex */
class m implements org.bouncycastle.util.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f57594a;

    /* renamed from: b  reason: collision with root package name */
    private final g f57595b;

    /* renamed from: c  reason: collision with root package name */
    private final n f57596c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[][] f57597d;

    public m(int i9, g gVar, n nVar, byte[][] bArr) {
        this.f57594a = i9;
        this.f57595b = gVar;
        this.f57596c = nVar;
        this.f57597d = bArr;
    }

    public static m a(Object obj) throws IOException {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            int readInt = dataInputStream.readInt();
            g a10 = g.a(obj);
            n e10 = n.e(dataInputStream.readInt());
            int c10 = e10.c();
            byte[][] bArr = new byte[c10];
            for (int i9 = 0; i9 < c10; i9++) {
                bArr[i9] = new byte[e10.d()];
                dataInputStream.readFully(bArr[i9]);
            }
            return new m(readInt, a10, e10, bArr);
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
                    m a11 = a(dataInputStream3);
                    dataInputStream3.close();
                    return a11;
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
        m mVar = (m) obj;
        if (this.f57594a != mVar.f57594a) {
            return false;
        }
        g gVar = this.f57595b;
        if (gVar == null ? mVar.f57595b == null : gVar.equals(mVar.f57595b)) {
            n nVar = this.f57596c;
            if (nVar == null ? mVar.f57596c == null : nVar.equals(mVar.f57596c)) {
                return Arrays.deepEquals(this.f57597d, mVar.f57597d);
            }
            return false;
        }
        return false;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return a.f().i(this.f57594a).d(this.f57595b.getEncoded()).i(this.f57596c.f()).e(this.f57597d).b();
    }

    public int hashCode() {
        int i9 = this.f57594a * 31;
        g gVar = this.f57595b;
        int hashCode = (i9 + (gVar != null ? gVar.hashCode() : 0)) * 31;
        n nVar = this.f57596c;
        return ((hashCode + (nVar != null ? nVar.hashCode() : 0)) * 31) + Arrays.deepHashCode(this.f57597d);
    }
}
