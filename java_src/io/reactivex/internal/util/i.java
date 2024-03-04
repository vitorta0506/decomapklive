package io.reactivex.internal.util;
/* loaded from: classes7.dex */
public final class i<T> {

    /* renamed from: a  reason: collision with root package name */
    final float f52758a;

    /* renamed from: b  reason: collision with root package name */
    int f52759b;

    /* renamed from: c  reason: collision with root package name */
    int f52760c;

    /* renamed from: d  reason: collision with root package name */
    int f52761d;

    /* renamed from: e  reason: collision with root package name */
    T[] f52762e;

    public i() {
        this(16, 0.75f);
    }

    static int c(int i9) {
        int i10 = i9 * (-1640531527);
        return i10 ^ (i10 >>> 16);
    }

    public boolean a(T t10) {
        T t11;
        T[] tArr = this.f52762e;
        int i9 = this.f52759b;
        int c10 = c(t10.hashCode()) & i9;
        T t12 = tArr[c10];
        if (t12 != null) {
            if (t12.equals(t10)) {
                return false;
            }
            do {
                c10 = (c10 + 1) & i9;
                t11 = tArr[c10];
                if (t11 == null) {
                }
            } while (!t11.equals(t10));
            return false;
        }
        tArr[c10] = t10;
        int i10 = this.f52760c + 1;
        this.f52760c = i10;
        if (i10 >= this.f52761d) {
            d();
        }
        return true;
    }

    public Object[] b() {
        return this.f52762e;
    }

    void d() {
        T[] tArr = this.f52762e;
        int length = tArr.length;
        int i9 = length << 1;
        int i10 = i9 - 1;
        T[] tArr2 = (T[]) new Object[i9];
        int i11 = this.f52760c;
        while (true) {
            int i12 = i11 - 1;
            if (i11 != 0) {
                do {
                    length--;
                } while (tArr[length] == null);
                int c10 = c(tArr[length].hashCode()) & i10;
                if (tArr2[c10] != null) {
                    do {
                        c10 = (c10 + 1) & i10;
                    } while (tArr2[c10] != null);
                }
                tArr2[c10] = tArr[length];
                i11 = i12;
            } else {
                this.f52759b = i10;
                this.f52761d = (int) (i9 * this.f52758a);
                this.f52762e = tArr2;
                return;
            }
        }
    }

    public boolean e(T t10) {
        T t11;
        T[] tArr = this.f52762e;
        int i9 = this.f52759b;
        int c10 = c(t10.hashCode()) & i9;
        T t12 = tArr[c10];
        if (t12 == null) {
            return false;
        }
        if (t12.equals(t10)) {
            return f(c10, tArr, i9);
        }
        do {
            c10 = (c10 + 1) & i9;
            t11 = tArr[c10];
            if (t11 == null) {
                return false;
            }
        } while (!t11.equals(t10));
        return f(c10, tArr, i9);
    }

    boolean f(int i9, T[] tArr, int i10) {
        int i11;
        T t10;
        this.f52760c--;
        while (true) {
            int i12 = i9 + 1;
            while (true) {
                i11 = i12 & i10;
                t10 = tArr[i11];
                if (t10 == null) {
                    tArr[i9] = null;
                    return true;
                }
                int c10 = c(t10.hashCode()) & i10;
                if (i9 > i11) {
                    if (i9 >= c10 && c10 > i11) {
                        break;
                    }
                    i12 = i11 + 1;
                } else if (i9 < c10 && c10 <= i11) {
                    i12 = i11 + 1;
                }
            }
            tArr[i9] = t10;
            i9 = i11;
        }
    }

    public int g() {
        return this.f52760c;
    }

    public i(int i9, float f10) {
        this.f52758a = f10;
        int a10 = j.a(i9);
        this.f52759b = a10 - 1;
        this.f52761d = (int) (f10 * a10);
        this.f52762e = (T[]) new Object[a10];
    }
}
