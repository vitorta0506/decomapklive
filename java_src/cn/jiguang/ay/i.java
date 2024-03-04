package cn.jiguang.ay;

import java.io.IOException;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Arrays;
import kotlin.UByte;
/* loaded from: classes.dex */
public abstract class i implements Serializable, Cloneable, Comparable {

    /* renamed from: e  reason: collision with root package name */
    private static final DecimalFormat f2269e;

    /* renamed from: a  reason: collision with root package name */
    protected g f2270a;

    /* renamed from: b  reason: collision with root package name */
    protected int f2271b;

    /* renamed from: c  reason: collision with root package name */
    protected int f2272c;

    /* renamed from: d  reason: collision with root package name */
    protected long f2273d;

    static {
        DecimalFormat decimalFormat = new DecimalFormat();
        f2269e = decimalFormat;
        decimalFormat.setMinimumIntegerDigits(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a(b bVar, int i9) {
        g gVar = new g(bVar);
        int g10 = bVar.g();
        int g11 = bVar.g();
        return i9 == 0 ? a(gVar, g10, g11) : a(gVar, g10, g11, bVar.h(), bVar.g(), bVar);
    }

    public static i a(g gVar, int i9, int i10) {
        return a(gVar, i9, i10, 0L);
    }

    public static i a(g gVar, int i9, int i10, long j10) {
        if (gVar.a()) {
            return a(gVar, i9, i10, j10, false);
        }
        throw new j(gVar);
    }

    private static i a(g gVar, int i9, int i10, long j10, int i11, b bVar) {
        i a10 = a(gVar, i9, i10, j10, bVar != null);
        if (bVar != null) {
            if (bVar.b() < i11) {
                throw new IOException("truncated record");
            }
            bVar.a(i11);
            a10.a(bVar);
            if (bVar.b() > 0) {
                throw new IOException("invalid record length");
            }
            bVar.c();
        }
        return a10;
    }

    private static final i a(g gVar, int i9, int i10, long j10, boolean z10) {
        m mVar = new m();
        mVar.f2270a = gVar;
        mVar.f2271b = i9;
        mVar.f2272c = i10;
        mVar.f2273d = j10;
        return mVar;
    }

    private void a(c cVar, boolean z10) {
        this.f2270a.a(cVar);
        cVar.c(this.f2271b);
        cVar.c(this.f2272c);
        cVar.a(z10 ? 0L : this.f2273d);
        int a10 = cVar.a();
        cVar.c(0);
        a(cVar, (a) null, true);
        cVar.a((cVar.a() - a10) - 2, a10);
    }

    private byte[] a(boolean z10) {
        c cVar = new c();
        a(cVar, z10);
        return cVar.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j10) {
        this.f2273d = j10;
    }

    abstract void a(b bVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar, int i9, a aVar) {
        this.f2270a.a(cVar, aVar);
        cVar.c(this.f2271b);
        cVar.c(this.f2272c);
    }

    abstract void a(c cVar, a aVar, boolean z10);

    public boolean a(i iVar) {
        return f() == iVar.f() && this.f2272c == iVar.f2272c && this.f2270a.equals(iVar.f2270a);
    }

    public byte[] a() {
        c cVar = new c();
        a(cVar, (a) null, true);
        return cVar.b();
    }

    abstract String b();

    public String c() {
        return b();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        i iVar = (i) obj;
        if (this == iVar) {
            return 0;
        }
        int compareTo = this.f2270a.compareTo(iVar.f2270a);
        if (compareTo != 0) {
            return compareTo;
        }
        int i9 = this.f2272c - iVar.f2272c;
        if (i9 != 0) {
            return i9;
        }
        int i10 = this.f2271b - iVar.f2271b;
        if (i10 != 0) {
            return i10;
        }
        byte[] a10 = a();
        byte[] a11 = iVar.a();
        for (int i11 = 0; i11 < a10.length && i11 < a11.length; i11++) {
            int i12 = (a10[i11] & UByte.MAX_VALUE) - (a11[i11] & UByte.MAX_VALUE);
            if (i12 != 0) {
                return i12;
            }
        }
        return a10.length - a11.length;
    }

    public g d() {
        return this.f2270a;
    }

    public int e() {
        return this.f2271b;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof i)) {
            i iVar = (i) obj;
            if (this.f2271b == iVar.f2271b && this.f2272c == iVar.f2272c && this.f2270a.equals(iVar.f2270a)) {
                return Arrays.equals(a(), iVar.a());
            }
        }
        return false;
    }

    public int f() {
        return this.f2271b;
    }

    public int g() {
        return this.f2272c;
    }

    public long h() {
        return this.f2273d;
    }

    public int hashCode() {
        int i9 = 0;
        for (byte b10 : a(true)) {
            i9 += (i9 << 3) + (b10 & UByte.MAX_VALUE);
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i i() {
        try {
            return (i) clone();
        } catch (CloneNotSupportedException unused) {
            throw new IllegalStateException();
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f2270a);
        if (stringBuffer.length() < 8) {
            stringBuffer.append("\t");
        }
        if (stringBuffer.length() < 16) {
            stringBuffer.append("\t");
        }
        stringBuffer.append("\t");
        String b10 = b();
        if (!b10.equals("")) {
            stringBuffer.append("\t");
            stringBuffer.append(b10);
        }
        return stringBuffer.toString();
    }
}
