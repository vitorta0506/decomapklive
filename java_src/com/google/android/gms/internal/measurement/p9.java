package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class p9 extends j7 implements RandomAccess, c9, ga {

    /* renamed from: d  reason: collision with root package name */
    private static final p9 f8263d;

    /* renamed from: b  reason: collision with root package name */
    private long[] f8264b;

    /* renamed from: c  reason: collision with root package name */
    private int f8265c;

    static {
        p9 p9Var = new p9(new long[0], 0);
        f8263d = p9Var;
        p9Var.D();
    }

    p9() {
        this(new long[10], 0);
    }

    public static p9 d() {
        return f8263d;
    }

    private final String g(int i9) {
        int i10 = this.f8265c;
        return "Index:" + i9 + ", Size:" + i10;
    }

    private final void m(int i9) {
        if (i9 < 0 || i9 >= this.f8265c) {
            throw new IndexOutOfBoundsException(g(i9));
        }
    }

    @Override // com.google.android.gms.internal.measurement.d9
    /* renamed from: V */
    public final c9 j(int i9) {
        if (i9 >= this.f8265c) {
            return new p9(Arrays.copyOf(this.f8264b, i9), this.f8265c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i9, Object obj) {
        int i10;
        long longValue = ((Long) obj).longValue();
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f8265c)) {
            long[] jArr = this.f8264b;
            if (i10 < jArr.length) {
                System.arraycopy(jArr, i9, jArr, i9 + 1, i10 - i9);
            } else {
                long[] jArr2 = new long[((i10 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i9);
                System.arraycopy(this.f8264b, i9, jArr2, i9 + 1, this.f8265c - i9);
                this.f8264b = jArr2;
            }
            this.f8264b[i9] = longValue;
            this.f8265c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(g(i9));
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        e9.e(collection);
        if (!(collection instanceof p9)) {
            return super.addAll(collection);
        }
        p9 p9Var = (p9) collection;
        int i9 = p9Var.f8265c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f8265c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            long[] jArr = this.f8264b;
            if (i11 > jArr.length) {
                this.f8264b = Arrays.copyOf(jArr, i11);
            }
            System.arraycopy(p9Var.f8264b, 0, this.f8264b, this.f8265c, p9Var.f8265c);
            this.f8265c = i11;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p9)) {
            return super.equals(obj);
        }
        p9 p9Var = (p9) obj;
        if (this.f8265c != p9Var.f8265c) {
            return false;
        }
        long[] jArr = p9Var.f8264b;
        for (int i9 = 0; i9 < this.f8265c; i9++) {
            if (this.f8264b[i9] != jArr[i9]) {
                return false;
            }
        }
        return true;
    }

    public final void f(long j10) {
        c();
        int i9 = this.f8265c;
        long[] jArr = this.f8264b;
        if (i9 == jArr.length) {
            long[] jArr2 = new long[((i9 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i9);
            this.f8264b = jArr2;
        }
        long[] jArr3 = this.f8264b;
        int i10 = this.f8265c;
        this.f8265c = i10 + 1;
        jArr3[i10] = j10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i9) {
        m(i9);
        return Long.valueOf(this.f8264b[i9]);
    }

    @Override // com.google.android.gms.internal.measurement.c9
    public final long h(int i9) {
        m(i9);
        return this.f8264b[i9];
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f8265c; i10++) {
            i9 = (i9 * 31) + e9.c(this.f8264b[i10]);
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            int i9 = this.f8265c;
            for (int i10 = 0; i10 < i9; i10++) {
                if (this.f8264b[i10] == longValue) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        int i10;
        c();
        m(i9);
        long[] jArr = this.f8264b;
        long j10 = jArr[i9];
        if (i9 < this.f8265c - 1) {
            System.arraycopy(jArr, i9 + 1, jArr, i9, (i10 - i9) - 1);
        }
        this.f8265c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            long[] jArr = this.f8264b;
            System.arraycopy(jArr, i10, jArr, i9, this.f8265c - i10);
            this.f8265c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i9, Object obj) {
        long longValue = ((Long) obj).longValue();
        c();
        m(i9);
        long[] jArr = this.f8264b;
        long j10 = jArr[i9];
        jArr[i9] = longValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8265c;
    }

    private p9(long[] jArr, int i9) {
        this.f8264b = jArr;
        this.f8265c = i9;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        f(((Long) obj).longValue());
        return true;
    }
}
