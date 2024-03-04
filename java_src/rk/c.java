package rk;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes7.dex */
public class c extends j {

    /* renamed from: b  reason: collision with root package name */
    private final int f57543b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f57544c;

    /* renamed from: d  reason: collision with root package name */
    private List<k> f57545d;

    /* renamed from: e  reason: collision with root package name */
    private List<m> f57546e;

    /* renamed from: f  reason: collision with root package name */
    private final long f57547f;

    /* renamed from: g  reason: collision with root package name */
    private long f57548g;

    /* renamed from: h  reason: collision with root package name */
    private d f57549h;

    private c(int i9, List<k> list, List<m> list2, long j10, long j11, boolean z10) {
        super(true);
        this.f57548g = 0L;
        this.f57543b = i9;
        this.f57545d = Collections.unmodifiableList(list);
        this.f57546e = Collections.unmodifiableList(list2);
        this.f57548g = j10;
        this.f57547f = j11;
        this.f57544c = z10;
    }

    public static c d(Object obj) throws IOException {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            if (dataInputStream.readInt() == 0) {
                int readInt = dataInputStream.readInt();
                long readLong = dataInputStream.readLong();
                long readLong2 = dataInputStream.readLong();
                boolean readBoolean = dataInputStream.readBoolean();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i9 = 0; i9 < readInt; i9++) {
                    arrayList.add(k.i(obj));
                }
                for (int i10 = 0; i10 < readInt - 1; i10++) {
                    arrayList2.add(m.a(obj));
                }
                return new c(readInt, arrayList, arrayList2, readLong, readLong2, readBoolean);
            }
            throw new IllegalStateException("unknown version for hss private key");
        } else if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return d(dl.a.b((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        } else {
            DataInputStream dataInputStream2 = null;
            try {
                DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
                try {
                    c d10 = d(dataInputStream3);
                    dataInputStream3.close();
                    return d10;
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

    public static c e(byte[] bArr, byte[] bArr2) throws IOException {
        c d10 = d(bArr);
        d10.f57549h = d.b(bArr2);
        return d10;
    }

    private static c l(c cVar) {
        try {
            return d(cVar.getEncoded());
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public c b(int i9) {
        c l10;
        synchronized (this) {
            long j10 = i9;
            if (k() < j10) {
                throw new IllegalArgumentException("usageCount exceeds usages remaining in current leaf");
            }
            long j11 = this.f57548g;
            this.f57548g = j10 + j11;
            l10 = l(new c(this.f57543b, new ArrayList(f()), new ArrayList(j()), j11, j11 + j10, true));
            m();
        }
        return l10;
    }

    public synchronized long c() {
        return this.f57548g;
    }

    protected Object clone() throws CloneNotSupportedException {
        return l(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f57543b == cVar.f57543b && this.f57544c == cVar.f57544c && this.f57547f == cVar.f57547f && this.f57548g == cVar.f57548g && this.f57545d.equals(cVar.f57545d)) {
            return this.f57546e.equals(cVar.f57546e);
        }
        return false;
    }

    synchronized List<k> f() {
        return this.f57545d;
    }

    public int g() {
        return this.f57543b;
    }

    @Override // rk.j, org.bouncycastle.util.c
    public synchronized byte[] getEncoded() throws IOException {
        a a10;
        a10 = a.f().i(0).i(this.f57543b).j(this.f57548g).j(this.f57547f).a(this.f57544c);
        for (k kVar : this.f57545d) {
            a10.c(kVar);
        }
        for (m mVar : this.f57546e) {
            a10.c(mVar);
        }
        return a10.b();
    }

    public synchronized d h() {
        return new d(this.f57543b, i().n());
    }

    public int hashCode() {
        long j10 = this.f57547f;
        long j11 = this.f57548g;
        return (((((((((this.f57543b * 31) + (this.f57544c ? 1 : 0)) * 31) + this.f57545d.hashCode()) * 31) + this.f57546e.hashCode()) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)));
    }

    k i() {
        return this.f57545d.get(0);
    }

    synchronized List<m> j() {
        return this.f57546e;
    }

    public long k() {
        return this.f57547f - this.f57548g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00d1, code lost:
        if (r3[r9] == (r4[r9].h() - 1)) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m() {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rk.c.m():void");
    }

    protected void n(k[] kVarArr, m[] mVarArr) {
        synchronized (this) {
            this.f57545d = Collections.unmodifiableList(Arrays.asList(kVarArr));
            this.f57546e = Collections.unmodifiableList(Arrays.asList(mVarArr));
        }
    }
}
