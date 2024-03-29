package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class h8 extends j7 implements RandomAccess, ga {

    /* renamed from: d  reason: collision with root package name */
    private static final h8 f8114d;

    /* renamed from: b  reason: collision with root package name */
    private double[] f8115b;

    /* renamed from: c  reason: collision with root package name */
    private int f8116c;

    static {
        h8 h8Var = new h8(new double[0], 0);
        f8114d = h8Var;
        h8Var.D();
    }

    h8() {
        this(new double[10], 0);
    }

    private final String f(int i9) {
        int i10 = this.f8116c;
        return "Index:" + i9 + ", Size:" + i10;
    }

    private final void g(int i9) {
        if (i9 < 0 || i9 >= this.f8116c) {
            throw new IndexOutOfBoundsException(f(i9));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i9, Object obj) {
        int i10;
        double doubleValue = ((Double) obj).doubleValue();
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f8116c)) {
            double[] dArr = this.f8115b;
            if (i10 < dArr.length) {
                System.arraycopy(dArr, i9, dArr, i9 + 1, i10 - i9);
            } else {
                double[] dArr2 = new double[((i10 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i9);
                System.arraycopy(this.f8115b, i9, dArr2, i9 + 1, this.f8116c - i9);
                this.f8115b = dArr2;
            }
            this.f8115b[i9] = doubleValue;
            this.f8116c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(f(i9));
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        e9.e(collection);
        if (!(collection instanceof h8)) {
            return super.addAll(collection);
        }
        h8 h8Var = (h8) collection;
        int i9 = h8Var.f8116c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f8116c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            double[] dArr = this.f8115b;
            if (i11 > dArr.length) {
                this.f8115b = Arrays.copyOf(dArr, i11);
            }
            System.arraycopy(h8Var.f8115b, 0, this.f8115b, this.f8116c, h8Var.f8116c);
            this.f8116c = i11;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(double d10) {
        c();
        int i9 = this.f8116c;
        double[] dArr = this.f8115b;
        if (i9 == dArr.length) {
            double[] dArr2 = new double[((i9 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i9);
            this.f8115b = dArr2;
        }
        double[] dArr3 = this.f8115b;
        int i10 = this.f8116c;
        this.f8116c = i10 + 1;
        dArr3[i10] = d10;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h8)) {
            return super.equals(obj);
        }
        h8 h8Var = (h8) obj;
        if (this.f8116c != h8Var.f8116c) {
            return false;
        }
        double[] dArr = h8Var.f8115b;
        for (int i9 = 0; i9 < this.f8116c; i9++) {
            if (Double.doubleToLongBits(this.f8115b[i9]) != Double.doubleToLongBits(dArr[i9])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i9) {
        g(i9);
        return Double.valueOf(this.f8115b[i9]);
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f8116c; i10++) {
            i9 = (i9 * 31) + e9.c(Double.doubleToLongBits(this.f8115b[i10]));
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            int i9 = this.f8116c;
            for (int i10 = 0; i10 < i9; i10++) {
                if (this.f8115b[i10] == doubleValue) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.d9
    public final /* bridge */ /* synthetic */ d9 j(int i9) {
        if (i9 >= this.f8116c) {
            return new h8(Arrays.copyOf(this.f8115b, i9), this.f8116c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        int i10;
        c();
        g(i9);
        double[] dArr = this.f8115b;
        double d10 = dArr[i9];
        if (i9 < this.f8116c - 1) {
            System.arraycopy(dArr, i9 + 1, dArr, i9, (i10 - i9) - 1);
        }
        this.f8116c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            double[] dArr = this.f8115b;
            System.arraycopy(dArr, i10, dArr, i9, this.f8116c - i10);
            this.f8116c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i9, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        c();
        g(i9);
        double[] dArr = this.f8115b;
        double d10 = dArr[i9];
        dArr[i9] = doubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8116c;
    }

    private h8(double[] dArr, int i9) {
        this.f8115b = dArr;
        this.f8116c = i9;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        d(((Double) obj).doubleValue());
        return true;
    }
}
