package rk;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes7.dex */
public class l extends j {

    /* renamed from: b  reason: collision with root package name */
    private final n f57590b;

    /* renamed from: c  reason: collision with root package name */
    private final e f57591c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f57592d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f57593e;

    public l(n nVar, e eVar, byte[] bArr, byte[] bArr2) {
        super(false);
        this.f57590b = nVar;
        this.f57591c = eVar;
        this.f57592d = org.bouncycastle.util.a.e(bArr2);
        this.f57593e = org.bouncycastle.util.a.e(bArr);
    }

    public static l b(Object obj) throws IOException {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            n e10 = n.e(dataInputStream.readInt());
            e f10 = e.f(dataInputStream.readInt());
            byte[] bArr = new byte[16];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[e10.d()];
            dataInputStream.readFully(bArr2);
            return new l(e10, f10, bArr2, bArr);
        } else if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return b(dl.a.b((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        } else {
            DataInputStream dataInputStream2 = null;
            try {
                DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
                try {
                    l b10 = b(dataInputStream3);
                    dataInputStream3.close();
                    return b10;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] c() {
        return a.f().i(this.f57590b.f()).i(this.f57591c.g()).d(this.f57592d).d(this.f57593e).b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f57590b.equals(lVar.f57590b) && this.f57591c.equals(lVar.f57591c) && org.bouncycastle.util.a.a(this.f57592d, lVar.f57592d)) {
            return org.bouncycastle.util.a.a(this.f57593e, lVar.f57593e);
        }
        return false;
    }

    @Override // rk.j, org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return c();
    }

    public int hashCode() {
        return (((((this.f57590b.hashCode() * 31) + this.f57591c.hashCode()) * 31) + org.bouncycastle.util.a.r(this.f57592d)) * 31) + org.bouncycastle.util.a.r(this.f57593e);
    }
}
