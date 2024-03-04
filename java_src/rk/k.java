package rk;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.WeakHashMap;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;
/* loaded from: classes7.dex */
public class k extends j {

    /* renamed from: l  reason: collision with root package name */
    private static a f57577l;

    /* renamed from: m  reason: collision with root package name */
    private static a[] f57578m;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f57579b;

    /* renamed from: c  reason: collision with root package name */
    private final n f57580c;

    /* renamed from: d  reason: collision with root package name */
    private final e f57581d;

    /* renamed from: e  reason: collision with root package name */
    private final int f57582e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f57583f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<a, byte[]> f57584g;

    /* renamed from: h  reason: collision with root package name */
    private final int f57585h;

    /* renamed from: i  reason: collision with root package name */
    private final org.bouncycastle.crypto.e f57586i;

    /* renamed from: j  reason: collision with root package name */
    private int f57587j;

    /* renamed from: k  reason: collision with root package name */
    private l f57588k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f57589a;

        a(int i9) {
            this.f57589a = i9;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && ((a) obj).f57589a == this.f57589a;
        }

        public int hashCode() {
            return this.f57589a;
        }
    }

    static {
        a aVar = new a(1);
        f57577l = aVar;
        a[] aVarArr = new a[129];
        f57578m = aVarArr;
        aVarArr[1] = aVar;
        int i9 = 2;
        while (true) {
            a[] aVarArr2 = f57578m;
            if (i9 >= aVarArr2.length) {
                return;
            }
            aVarArr2[i9] = new a(i9);
            i9++;
        }
    }

    private k(k kVar, int i9, int i10) {
        super(true);
        n nVar = kVar.f57580c;
        this.f57580c = nVar;
        this.f57581d = kVar.f57581d;
        this.f57587j = i9;
        this.f57579b = kVar.f57579b;
        this.f57582e = i10;
        this.f57583f = kVar.f57583f;
        this.f57585h = 1 << nVar.c();
        this.f57584g = kVar.f57584g;
        this.f57586i = b.a(nVar.b());
        this.f57588k = kVar.f57588k;
    }

    public k(n nVar, e eVar, int i9, byte[] bArr, int i10, byte[] bArr2) {
        super(true);
        this.f57580c = nVar;
        this.f57581d = eVar;
        this.f57587j = i9;
        this.f57579b = org.bouncycastle.util.a.e(bArr);
        this.f57582e = i10;
        this.f57583f = org.bouncycastle.util.a.e(bArr2);
        this.f57585h = 1 << (nVar.c() + 1);
        this.f57584g = new WeakHashMap();
        this.f57586i = b.a(nVar.b());
    }

    private byte[] b(int i9) {
        int c10 = 1 << o().c();
        if (i9 >= c10) {
            p.a(g(), this.f57586i);
            p.c(i9, this.f57586i);
            p.b((short) -32126, this.f57586i);
            p.a(o.d(m(), g(), i9 - c10, k()), this.f57586i);
            byte[] bArr = new byte[this.f57586i.d()];
            this.f57586i.a(bArr, 0);
            return bArr;
        }
        int i10 = i9 * 2;
        byte[] d10 = d(i10);
        byte[] d11 = d(i10 + 1);
        p.a(g(), this.f57586i);
        p.c(i9, this.f57586i);
        p.b((short) -31869, this.f57586i);
        p.a(d10, this.f57586i);
        p.a(d11, this.f57586i);
        byte[] bArr2 = new byte[this.f57586i.d()];
        this.f57586i.a(bArr2, 0);
        return bArr2;
    }

    private byte[] e(a aVar) {
        synchronized (this.f57584g) {
            byte[] bArr = this.f57584g.get(aVar);
            if (bArr != null) {
                return bArr;
            }
            byte[] b10 = b(aVar.f57589a);
            this.f57584g.put(aVar, b10);
            return b10;
        }
    }

    public static k i(Object obj) throws IOException {
        DataInputStream dataInputStream;
        if (obj instanceof k) {
            return (k) obj;
        }
        if (!(obj instanceof DataInputStream)) {
            if (!(obj instanceof byte[])) {
                if (obj instanceof InputStream) {
                    return i(dl.a.b((InputStream) obj));
                }
                throw new IllegalArgumentException("cannot parse " + obj);
            }
            DataInputStream dataInputStream2 = null;
            try {
                dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                k i9 = i(dataInputStream);
                dataInputStream.close();
                return i9;
            } catch (Throwable th3) {
                th = th3;
                dataInputStream2 = dataInputStream;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        }
        DataInputStream dataInputStream3 = (DataInputStream) obj;
        if (dataInputStream3.readInt() == 0) {
            n e10 = n.e(dataInputStream3.readInt());
            e f10 = e.f(dataInputStream3.readInt());
            byte[] bArr = new byte[16];
            dataInputStream3.readFully(bArr);
            int readInt = dataInputStream3.readInt();
            int readInt2 = dataInputStream3.readInt();
            int readInt3 = dataInputStream3.readInt();
            if (readInt3 >= 0) {
                if (readInt3 <= dataInputStream3.available()) {
                    byte[] bArr2 = new byte[readInt3];
                    dataInputStream3.readFully(bArr2);
                    return new k(e10, f10, readInt, bArr, readInt2, bArr2);
                }
                throw new IOException("secret length exceeded " + dataInputStream3.available());
            }
            throw new IllegalStateException("secret length less than zero");
        }
        throw new IllegalStateException("expected version 0 lms private key");
    }

    public static k j(byte[] bArr, byte[] bArr2) throws IOException {
        k i9 = i(bArr);
        i9.f57588k = l.b(bArr2);
        return i9;
    }

    public k c(int i9) {
        k kVar;
        synchronized (this) {
            int i10 = this.f57587j;
            if (i10 + i9 >= this.f57582e) {
                throw new IllegalArgumentException("usageCount exceeds usages remaining");
            }
            kVar = new k(this, i10, i10 + i9);
            this.f57587j += i9;
        }
        return kVar;
    }

    byte[] d(int i9) {
        if (i9 < this.f57585h) {
            a[] aVarArr = f57578m;
            return e(i9 < aVarArr.length ? aVarArr[i9] : new a(i9));
        }
        return b(i9);
    }

    public boolean equals(Object obj) {
        l lVar;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f57587j == kVar.f57587j && this.f57582e == kVar.f57582e && org.bouncycastle.util.a.a(this.f57579b, kVar.f57579b)) {
            n nVar = this.f57580c;
            if (nVar == null ? kVar.f57580c == null : nVar.equals(kVar.f57580c)) {
                e eVar = this.f57581d;
                if (eVar == null ? kVar.f57581d == null : eVar.equals(kVar.f57581d)) {
                    if (org.bouncycastle.util.a.a(this.f57583f, kVar.f57583f)) {
                        l lVar2 = this.f57588k;
                        if (lVar2 == null || (lVar = kVar.f57588k) == null) {
                            return true;
                        }
                        return lVar2.equals(lVar);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public i f() {
        int c10 = o().c();
        int h10 = h();
        f l10 = l();
        int i9 = (1 << c10) + h10;
        byte[][] bArr = new byte[c10];
        for (int i10 = 0; i10 < c10; i10++) {
            bArr[i10] = d((i9 / (1 << i10)) ^ 1);
        }
        return l10.e(o(), bArr);
    }

    public byte[] g() {
        return org.bouncycastle.util.a.e(this.f57579b);
    }

    @Override // rk.j, org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return rk.a.f().i(0).i(this.f57580c.f()).i(this.f57581d.g()).d(this.f57579b).i(this.f57587j).i(this.f57582e).i(this.f57583f.length).d(this.f57583f).b();
    }

    public synchronized int h() {
        return this.f57587j;
    }

    public int hashCode() {
        int r10 = ((this.f57587j * 31) + org.bouncycastle.util.a.r(this.f57579b)) * 31;
        n nVar = this.f57580c;
        int hashCode = (r10 + (nVar != null ? nVar.hashCode() : 0)) * 31;
        e eVar = this.f57581d;
        int hashCode2 = (((((hashCode + (eVar != null ? eVar.hashCode() : 0)) * 31) + this.f57582e) * 31) + org.bouncycastle.util.a.r(this.f57583f)) * 31;
        l lVar = this.f57588k;
        return hashCode2 + (lVar != null ? lVar.hashCode() : 0);
    }

    public byte[] k() {
        return org.bouncycastle.util.a.e(this.f57583f);
    }

    f l() {
        f fVar;
        synchronized (this) {
            int i9 = this.f57587j;
            if (i9 >= this.f57582e) {
                throw new ExhaustedPrivateKeyException("ots private key exhausted");
            }
            fVar = new f(this.f57581d, this.f57579b, i9, this.f57583f);
            q();
        }
        return fVar;
    }

    public e m() {
        return this.f57581d;
    }

    public l n() {
        l lVar;
        synchronized (this) {
            if (this.f57588k == null) {
                this.f57588k = new l(this.f57580c, this.f57581d, e(f57577l), this.f57579b);
            }
            lVar = this.f57588k;
        }
        return lVar;
    }

    public n o() {
        return this.f57580c;
    }

    public long p() {
        return this.f57582e - this.f57587j;
    }

    synchronized void q() {
        this.f57587j++;
    }
}
