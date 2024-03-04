package com.google.protobuf;

import com.google.protobuf.u0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class t extends d<Double> implements u0.b, RandomAccess, f2 {

    /* renamed from: d  reason: collision with root package name */
    private static final t f15270d;

    /* renamed from: b  reason: collision with root package name */
    private double[] f15271b;

    /* renamed from: c  reason: collision with root package name */
    private int f15272c;

    static {
        t tVar = new t(new double[0], 0);
        f15270d = tVar;
        tVar.C();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t() {
        this(new double[10], 0);
    }

    private void g(int i9, double d10) {
        int i10;
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f15272c)) {
            double[] dArr = this.f15271b;
            if (i10 < dArr.length) {
                System.arraycopy(dArr, i9, dArr, i9 + 1, i10 - i9);
            } else {
                double[] dArr2 = new double[((i10 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i9);
                System.arraycopy(this.f15271b, i9, dArr2, i9 + 1, this.f15272c - i9);
                this.f15271b = dArr2;
            }
            this.f15271b[i9] = d10;
            this.f15272c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(x(i9));
    }

    public static t m() {
        return f15270d;
    }

    private void n(int i9) {
        if (i9 < 0 || i9 >= this.f15272c) {
            throw new IndexOutOfBoundsException(x(i9));
        }
    }

    private String x(int i9) {
        return "Index:" + i9 + ", Size:" + this.f15272c;
    }

    public double B(int i9, double d10) {
        c();
        n(i9);
        double[] dArr = this.f15271b;
        double d11 = dArr[i9];
        dArr[i9] = d10;
        return d11;
    }

    @Override // com.google.protobuf.u0.b
    public void N0(double d10) {
        c();
        int i9 = this.f15272c;
        double[] dArr = this.f15271b;
        if (i9 == dArr.length) {
            double[] dArr2 = new double[((i9 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i9);
            this.f15271b = dArr2;
        }
        double[] dArr3 = this.f15271b;
        int i10 = this.f15272c;
        this.f15272c = i10 + 1;
        dArr3[i10] = d10;
    }

    @Override // com.google.protobuf.d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Double> collection) {
        c();
        u0.a(collection);
        if (!(collection instanceof t)) {
            return super.addAll(collection);
        }
        t tVar = (t) collection;
        int i9 = tVar.f15272c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f15272c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            double[] dArr = this.f15271b;
            if (i11 > dArr.length) {
                this.f15271b = Arrays.copyOf(dArr, i11);
            }
            System.arraycopy(tVar.f15271b, 0, this.f15271b, this.f15272c, tVar.f15272c);
            this.f15272c = i11;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: d */
    public void add(int i9, Double d10) {
        g(i9, d10.doubleValue());
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return super.equals(obj);
        }
        t tVar = (t) obj;
        if (this.f15272c != tVar.f15272c) {
            return false;
        }
        double[] dArr = tVar.f15271b;
        for (int i9 = 0; i9 < this.f15272c; i9++) {
            if (Double.doubleToLongBits(this.f15271b[i9]) != Double.doubleToLongBits(dArr[i9])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: f */
    public boolean add(Double d10) {
        N0(d10.doubleValue());
        return true;
    }

    @Override // com.google.protobuf.u0.b
    public double getDouble(int i9) {
        n(i9);
        return this.f15271b[i9];
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f15272c; i10++) {
            i9 = (i9 * 31) + u0.i(Double.doubleToLongBits(this.f15271b[i10]));
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            int size = size();
            for (int i9 = 0; i9 < size; i9++) {
                if (this.f15271b[i9] == doubleValue) {
                    return i9;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            double[] dArr = this.f15271b;
            System.arraycopy(dArr, i10, dArr, i9, this.f15272c - i10);
            this.f15272c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f15272c;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: u */
    public Double get(int i9) {
        return Double.valueOf(getDouble(i9));
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.List
    /* renamed from: y */
    public Double remove(int i9) {
        int i10;
        c();
        n(i9);
        double[] dArr = this.f15271b;
        double d10 = dArr[i9];
        if (i9 < this.f15272c - 1) {
            System.arraycopy(dArr, i9 + 1, dArr, i9, (i10 - i9) - 1);
        }
        this.f15272c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: z */
    public Double set(int i9, Double d10) {
        return Double.valueOf(B(i9, d10.doubleValue()));
    }

    private t(double[] dArr, int i9) {
        this.f15271b = dArr;
        this.f15272c = i9;
    }

    @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
    /* renamed from: b */
    public u0.j<Double> b2(int i9) {
        if (i9 >= this.f15272c) {
            return new t(Arrays.copyOf(this.f15271b, i9), this.f15272c);
        }
        throw new IllegalArgumentException();
    }
}
