package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class y8 extends j7 implements RandomAccess, b9, ga {

    /* renamed from: d  reason: collision with root package name */
    private static final y8 f8440d;

    /* renamed from: b  reason: collision with root package name */
    private int[] f8441b;

    /* renamed from: c  reason: collision with root package name */
    private int f8442c;

    static {
        y8 y8Var = new y8(new int[0], 0);
        f8440d = y8Var;
        y8Var.D();
    }

    y8() {
        this(new int[10], 0);
    }

    public static y8 f() {
        return f8440d;
    }

    private final String g(int i9) {
        int i10 = this.f8442c;
        return "Index:" + i9 + ", Size:" + i10;
    }

    private final void m(int i9) {
        if (i9 < 0 || i9 >= this.f8442c) {
            throw new IndexOutOfBoundsException(g(i9));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i9, Object obj) {
        int i10;
        int intValue = ((Integer) obj).intValue();
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f8442c)) {
            int[] iArr = this.f8441b;
            if (i10 < iArr.length) {
                System.arraycopy(iArr, i9, iArr, i9 + 1, i10 - i9);
            } else {
                int[] iArr2 = new int[((i10 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i9);
                System.arraycopy(this.f8441b, i9, iArr2, i9 + 1, this.f8442c - i9);
                this.f8441b = iArr2;
            }
            this.f8441b[i9] = intValue;
            this.f8442c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(g(i9));
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        e9.e(collection);
        if (!(collection instanceof y8)) {
            return super.addAll(collection);
        }
        y8 y8Var = (y8) collection;
        int i9 = y8Var.f8442c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f8442c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            int[] iArr = this.f8441b;
            if (i11 > iArr.length) {
                this.f8441b = Arrays.copyOf(iArr, i11);
            }
            System.arraycopy(y8Var.f8441b, 0, this.f8441b, this.f8442c, y8Var.f8442c);
            this.f8442c = i11;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final int d(int i9) {
        m(i9);
        return this.f8441b[i9];
    }

    public final void e(int i9) {
        c();
        int i10 = this.f8442c;
        int[] iArr = this.f8441b;
        if (i10 == iArr.length) {
            int[] iArr2 = new int[((i10 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            this.f8441b = iArr2;
        }
        int[] iArr3 = this.f8441b;
        int i11 = this.f8442c;
        this.f8442c = i11 + 1;
        iArr3[i11] = i9;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y8)) {
            return super.equals(obj);
        }
        y8 y8Var = (y8) obj;
        if (this.f8442c != y8Var.f8442c) {
            return false;
        }
        int[] iArr = y8Var.f8441b;
        for (int i9 = 0; i9 < this.f8442c; i9++) {
            if (this.f8441b[i9] != iArr[i9]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i9) {
        m(i9);
        return Integer.valueOf(this.f8441b[i9]);
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f8442c; i10++) {
            i9 = (i9 * 31) + this.f8441b[i10];
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            int i9 = this.f8442c;
            for (int i10 = 0; i10 < i9; i10++) {
                if (this.f8441b[i10] == intValue) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.d9
    /* renamed from: r */
    public final b9 j(int i9) {
        if (i9 >= this.f8442c) {
            return new y8(Arrays.copyOf(this.f8441b, i9), this.f8442c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        int i10;
        c();
        m(i9);
        int[] iArr = this.f8441b;
        int i11 = iArr[i9];
        if (i9 < this.f8442c - 1) {
            System.arraycopy(iArr, i9 + 1, iArr, i9, (i10 - i9) - 1);
        }
        this.f8442c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            int[] iArr = this.f8441b;
            System.arraycopy(iArr, i10, iArr, i9, this.f8442c - i10);
            this.f8442c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i9, Object obj) {
        int intValue = ((Integer) obj).intValue();
        c();
        m(i9);
        int[] iArr = this.f8441b;
        int i10 = iArr[i9];
        iArr[i9] = intValue;
        return Integer.valueOf(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8442c;
    }

    private y8(int[] iArr, int i9) {
        this.f8441b = iArr;
        this.f8442c = i9;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        e(((Integer) obj).intValue());
        return true;
    }
}
