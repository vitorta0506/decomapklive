package com.google.android.gms.internal.recaptcha;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class jf extends je<Double> implements RandomAccess, oh {

    /* renamed from: d  reason: collision with root package name */
    private static final jf f8780d;

    /* renamed from: b  reason: collision with root package name */
    private double[] f8781b;

    /* renamed from: c  reason: collision with root package name */
    private int f8782c;

    static {
        jf jfVar = new jf(new double[0], 0);
        f8780d = jfVar;
        jfVar.D();
    }

    jf() {
        this(new double[10], 0);
    }

    private final String f(int i9) {
        int i10 = this.f8782c;
        StringBuilder sb2 = new StringBuilder(35);
        sb2.append("Index:");
        sb2.append(i9);
        sb2.append(", Size:");
        sb2.append(i10);
        return sb2.toString();
    }

    private final void g(int i9) {
        if (i9 < 0 || i9 >= this.f8782c) {
            throw new IndexOutOfBoundsException(f(i9));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i9, Object obj) {
        int i10;
        double doubleValue = ((Double) obj).doubleValue();
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f8782c)) {
            double[] dArr = this.f8781b;
            if (i10 < dArr.length) {
                System.arraycopy(dArr, i9, dArr, i9 + 1, i10 - i9);
            } else {
                double[] dArr2 = new double[((i10 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i9);
                System.arraycopy(this.f8781b, i9, dArr2, i9 + 1, this.f8782c - i9);
                this.f8781b = dArr2;
            }
            this.f8781b[i9] = doubleValue;
            this.f8782c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(f(i9));
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        c();
        mg.e(collection);
        if (!(collection instanceof jf)) {
            return super.addAll(collection);
        }
        jf jfVar = (jf) collection;
        int i9 = jfVar.f8782c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f8782c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            double[] dArr = this.f8781b;
            if (i11 > dArr.length) {
                this.f8781b = Arrays.copyOf(dArr, i11);
            }
            System.arraycopy(jfVar.f8781b, 0, this.f8781b, this.f8782c, jfVar.f8782c);
            this.f8782c = i11;
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
        int i9 = this.f8782c;
        double[] dArr = this.f8781b;
        if (i9 == dArr.length) {
            double[] dArr2 = new double[((i9 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i9);
            this.f8781b = dArr2;
        }
        double[] dArr3 = this.f8781b;
        int i10 = this.f8782c;
        this.f8782c = i10 + 1;
        dArr3[i10] = d10;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jf)) {
            return super.equals(obj);
        }
        jf jfVar = (jf) obj;
        if (this.f8782c != jfVar.f8782c) {
            return false;
        }
        double[] dArr = jfVar.f8781b;
        for (int i9 = 0; i9 < this.f8782c; i9++) {
            if (Double.doubleToLongBits(this.f8781b[i9]) != Double.doubleToLongBits(dArr[i9])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i9) {
        g(i9);
        return Double.valueOf(this.f8781b[i9]);
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f8782c; i10++) {
            i9 = (i9 * 31) + mg.c(Double.doubleToLongBits(this.f8781b[i10]));
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            int i9 = this.f8782c;
            for (int i10 = 0; i10 < i9; i10++) {
                if (this.f8781b[i10] == doubleValue) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.recaptcha.lg
    public final /* bridge */ /* synthetic */ lg j(int i9) {
        if (i9 >= this.f8782c) {
            return new jf(Arrays.copyOf(this.f8781b, i9), this.f8782c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        int i10;
        c();
        g(i9);
        double[] dArr = this.f8781b;
        double d10 = dArr[i9];
        if (i9 < this.f8782c - 1) {
            System.arraycopy(dArr, i9 + 1, dArr, i9, (i10 - i9) - 1);
        }
        this.f8782c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            double[] dArr = this.f8781b;
            System.arraycopy(dArr, i10, dArr, i9, this.f8782c - i10);
            this.f8782c -= i10 - i9;
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
        double[] dArr = this.f8781b;
        double d10 = dArr[i9];
        dArr[i9] = doubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8782c;
    }

    private jf(double[] dArr, int i9) {
        this.f8781b = dArr;
        this.f8782c = i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        d(((Double) obj).doubleValue());
        return true;
    }
}
