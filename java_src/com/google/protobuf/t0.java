package com.google.protobuf;

import com.google.protobuf.u0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class t0 extends d<Integer> implements u0.g, RandomAccess, f2 {

    /* renamed from: d  reason: collision with root package name */
    private static final t0 f15273d;

    /* renamed from: b  reason: collision with root package name */
    private int[] f15274b;

    /* renamed from: c  reason: collision with root package name */
    private int f15275c;

    static {
        t0 t0Var = new t0(new int[0], 0);
        f15273d = t0Var;
        t0Var.C();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0() {
        this(new int[10], 0);
    }

    private void g(int i9, int i10) {
        int i11;
        c();
        if (i9 >= 0 && i9 <= (i11 = this.f15275c)) {
            int[] iArr = this.f15274b;
            if (i11 < iArr.length) {
                System.arraycopy(iArr, i9, iArr, i9 + 1, i11 - i9);
            } else {
                int[] iArr2 = new int[((i11 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i9);
                System.arraycopy(this.f15274b, i9, iArr2, i9 + 1, this.f15275c - i9);
                this.f15274b = iArr2;
            }
            this.f15274b[i9] = i10;
            this.f15275c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(x(i9));
    }

    public static t0 m() {
        return f15273d;
    }

    private void n(int i9) {
        if (i9 < 0 || i9 >= this.f15275c) {
            throw new IndexOutOfBoundsException(x(i9));
        }
    }

    private String x(int i9) {
        return "Index:" + i9 + ", Size:" + this.f15275c;
    }

    public int B(int i9, int i10) {
        c();
        n(i9);
        int[] iArr = this.f15274b;
        int i11 = iArr[i9];
        iArr[i9] = i10;
        return i11;
    }

    @Override // com.google.protobuf.u0.g
    public void D0(int i9) {
        c();
        int i10 = this.f15275c;
        int[] iArr = this.f15274b;
        if (i10 == iArr.length) {
            int[] iArr2 = new int[((i10 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            this.f15274b = iArr2;
        }
        int[] iArr3 = this.f15274b;
        int i11 = this.f15275c;
        this.f15275c = i11 + 1;
        iArr3[i11] = i9;
    }

    @Override // com.google.protobuf.d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        c();
        u0.a(collection);
        if (!(collection instanceof t0)) {
            return super.addAll(collection);
        }
        t0 t0Var = (t0) collection;
        int i9 = t0Var.f15275c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f15275c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            int[] iArr = this.f15274b;
            if (i11 > iArr.length) {
                this.f15274b = Arrays.copyOf(iArr, i11);
            }
            System.arraycopy(t0Var.f15274b, 0, this.f15274b, this.f15275c, t0Var.f15275c);
            this.f15275c = i11;
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
    public void add(int i9, Integer num) {
        g(i9, num.intValue());
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t0)) {
            return super.equals(obj);
        }
        t0 t0Var = (t0) obj;
        if (this.f15275c != t0Var.f15275c) {
            return false;
        }
        int[] iArr = t0Var.f15274b;
        for (int i9 = 0; i9 < this.f15275c; i9++) {
            if (this.f15274b[i9] != iArr[i9]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: f */
    public boolean add(Integer num) {
        D0(num.intValue());
        return true;
    }

    @Override // com.google.protobuf.u0.g
    public int getInt(int i9) {
        n(i9);
        return this.f15274b[i9];
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f15275c; i10++) {
            i9 = (i9 * 31) + this.f15274b[i10];
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            int size = size();
            for (int i9 = 0; i9 < size; i9++) {
                if (this.f15274b[i9] == intValue) {
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
            int[] iArr = this.f15274b;
            System.arraycopy(iArr, i10, iArr, i9, this.f15275c - i10);
            this.f15275c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f15275c;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: u */
    public Integer get(int i9) {
        return Integer.valueOf(getInt(i9));
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.List
    /* renamed from: y */
    public Integer remove(int i9) {
        int i10;
        c();
        n(i9);
        int[] iArr = this.f15274b;
        int i11 = iArr[i9];
        if (i9 < this.f15275c - 1) {
            System.arraycopy(iArr, i9 + 1, iArr, i9, (i10 - i9) - 1);
        }
        this.f15275c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: z */
    public Integer set(int i9, Integer num) {
        return Integer.valueOf(B(i9, num.intValue()));
    }

    private t0(int[] iArr, int i9) {
        this.f15274b = iArr;
        this.f15275c = i9;
    }

    @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
    /* renamed from: b */
    public u0.j<Integer> b2(int i9) {
        if (i9 >= this.f15275c) {
            return new t0(Arrays.copyOf(this.f15274b, i9), this.f15275c);
        }
        throw new IllegalArgumentException();
    }
}
