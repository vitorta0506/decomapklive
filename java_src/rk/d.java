package rk;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes7.dex */
public class d extends j {

    /* renamed from: b  reason: collision with root package name */
    private final int f57550b;

    /* renamed from: c  reason: collision with root package name */
    private final l f57551c;

    public d(int i9, l lVar) {
        super(false);
        this.f57550b = i9;
        this.f57551c = lVar;
    }

    public static d b(Object obj) throws IOException {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj instanceof DataInputStream) {
            return new d(((DataInputStream) obj).readInt(), l.b(obj));
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return b(dl.a.b((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                d b10 = b(dataInputStream2);
                dataInputStream2.close();
                return b10;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    dataInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public int c() {
        return this.f57550b;
    }

    public l d() {
        return this.f57551c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f57550b != dVar.f57550b) {
            return false;
        }
        return this.f57551c.equals(dVar.f57551c);
    }

    @Override // rk.j, org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return a.f().i(this.f57550b).d(this.f57551c.getEncoded()).b();
    }

    public int hashCode() {
        return (this.f57550b * 31) + this.f57551c.hashCode();
    }
}
