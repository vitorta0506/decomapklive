package kg;

import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class a0<T> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f53722a;

    /* renamed from: b  reason: collision with root package name */
    private final int f53723b;

    /* renamed from: c  reason: collision with root package name */
    private final int f53724c;

    /* renamed from: d  reason: collision with root package name */
    private final int f53725d;

    /* renamed from: e  reason: collision with root package name */
    private final long[] f53726e;

    /* renamed from: f  reason: collision with root package name */
    a0<T> f53727f;

    /* renamed from: g  reason: collision with root package name */
    a0<T> f53728g;

    /* renamed from: h  reason: collision with root package name */
    boolean f53729h;

    /* renamed from: i  reason: collision with root package name */
    int f53730i;

    /* renamed from: j  reason: collision with root package name */
    private int f53731j;

    /* renamed from: k  reason: collision with root package name */
    private int f53732k;

    /* renamed from: l  reason: collision with root package name */
    private int f53733l;

    /* renamed from: m  reason: collision with root package name */
    private int f53734m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0() {
        this.f53722a = null;
        this.f53723b = -1;
        this.f53724c = -1;
        this.f53730i = -1;
        this.f53725d = -1;
        this.f53726e = null;
    }

    private void a(a0<T> a0Var) {
        this.f53727f = a0Var;
        a0<T> a0Var2 = a0Var.f53728g;
        this.f53728g = a0Var2;
        a0Var2.f53727f = this;
        a0Var.f53728g = this;
    }

    private int d() {
        long[] jArr = this.f53726e;
        int i9 = this.f53732k;
        for (int i10 = 0; i10 < i9; i10++) {
            long j10 = jArr[i10];
            if ((~j10) != 0) {
                return e(i10, j10);
            }
        }
        return -1;
    }

    private int e(int i9, long j10) {
        int i10 = this.f53731j;
        int i11 = i9 << 6;
        for (int i12 = 0; i12 < 64; i12++) {
            if ((1 & j10) == 0) {
                int i13 = i11 | i12;
                if (i13 < i10) {
                    return i13;
                }
                return -1;
            }
            j10 >>>= 1;
        }
        return -1;
    }

    private int g() {
        int i9 = this.f53733l;
        if (i9 >= 0) {
            this.f53733l = -1;
            return i9;
        }
        return d();
    }

    private void h() {
        a0<T> a0Var = this.f53727f;
        a0Var.f53728g = this.f53728g;
        this.f53728g.f53727f = a0Var;
        this.f53728g = null;
        this.f53727f = null;
    }

    private void i(int i9) {
        this.f53733l = i9;
    }

    private long j(int i9) {
        return (this.f53724c << 49) | ((this.f53725d >> this.f53723b) << 34) | 8589934592L | 4294967296L | i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long b() {
        if (this.f53734m == 0 || !this.f53729h) {
            return -1L;
        }
        int g10 = g();
        int i9 = g10 >>> 6;
        long[] jArr = this.f53726e;
        jArr[i9] = jArr[i9] | (1 << (g10 & 63));
        int i10 = this.f53734m - 1;
        this.f53734m = i10;
        if (i10 == 0) {
            h();
        }
        return j(g10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        w<T> wVar = this.f53722a;
        if (wVar != null) {
            wVar.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(a0<T> a0Var, int i9) {
        if (this.f53730i == 0) {
            return true;
        }
        int i10 = i9 >>> 6;
        long[] jArr = this.f53726e;
        jArr[i10] = jArr[i10] ^ (1 << (i9 & 63));
        i(i9);
        int i11 = this.f53734m;
        this.f53734m = i11 + 1;
        if (i11 == 0) {
            a(a0Var);
            if (this.f53731j > 1) {
                return true;
            }
        }
        if (this.f53734m == this.f53731j && this.f53727f != this.f53728g) {
            this.f53729h = false;
            h();
            return false;
        }
        return true;
    }

    public String toString() {
        int i9;
        int i10;
        int i11;
        w<T> wVar = this.f53722a;
        int i12 = -1;
        boolean z10 = true;
        int i13 = 0;
        if (wVar == null) {
            i11 = 0;
        } else {
            synchronized (wVar.f53938a) {
                if (this.f53729h) {
                    i12 = this.f53731j;
                    i9 = this.f53734m;
                    i10 = this.f53730i;
                } else {
                    z10 = false;
                    i9 = -1;
                    i10 = -1;
                }
            }
            i11 = i9;
            i13 = i12;
            i12 = i10;
        }
        if (!z10) {
            return "(" + this.f53724c + ": not in use)";
        }
        return "(" + this.f53724c + ": " + (i13 - i11) + IOUtils.DIR_SEPARATOR_UNIX + i13 + ", offset: " + this.f53724c + ", length: " + this.f53725d + ", elemSize: " + i12 + ')';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(a0<T> a0Var, w<T> wVar, int i9, int i10, int i11, int i12) {
        this.f53722a = wVar;
        this.f53723b = i9;
        this.f53724c = i10;
        this.f53725d = i11;
        this.f53730i = i12;
        this.f53726e = new long[i11 >>> 10];
        this.f53729h = true;
        if (i12 != 0) {
            int i13 = i11 / i12;
            this.f53734m = i13;
            this.f53731j = i13;
            this.f53733l = 0;
            int i14 = i13 >>> 6;
            this.f53732k = i14;
            if ((i13 & 63) != 0) {
                this.f53732k = i14 + 1;
            }
            for (int i15 = 0; i15 < this.f53732k; i15++) {
                this.f53726e[i15] = 0;
            }
        }
        a(a0Var);
    }
}
