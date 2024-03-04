package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class ia extends j7 implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    private static final ia f8132d;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f8133b;

    /* renamed from: c  reason: collision with root package name */
    private int f8134c;

    static {
        ia iaVar = new ia(new Object[0], 0);
        f8132d = iaVar;
        iaVar.D();
    }

    private ia(Object[] objArr, int i9) {
        this.f8133b = objArr;
        this.f8134c = i9;
    }

    public static ia d() {
        return f8132d;
    }

    private final String f(int i9) {
        int i10 = this.f8134c;
        return "Index:" + i9 + ", Size:" + i10;
    }

    private final void g(int i9) {
        if (i9 < 0 || i9 >= this.f8134c) {
            throw new IndexOutOfBoundsException(f(i9));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i9, Object obj) {
        int i10;
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f8134c)) {
            Object[] objArr = this.f8133b;
            if (i10 < objArr.length) {
                System.arraycopy(objArr, i9, objArr, i9 + 1, i10 - i9);
            } else {
                Object[] objArr2 = new Object[((i10 * 3) / 2) + 1];
                System.arraycopy(objArr, 0, objArr2, 0, i9);
                System.arraycopy(this.f8133b, i9, objArr2, i9 + 1, this.f8134c - i9);
                this.f8133b = objArr2;
            }
            this.f8133b[i9] = obj;
            this.f8134c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(f(i9));
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i9) {
        g(i9);
        return this.f8133b[i9];
    }

    @Override // com.google.android.gms.internal.measurement.d9
    public final /* bridge */ /* synthetic */ d9 j(int i9) {
        if (i9 >= this.f8134c) {
            return new ia(Arrays.copyOf(this.f8133b, i9), this.f8134c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.List
    public final Object remove(int i9) {
        int i10;
        c();
        g(i9);
        Object[] objArr = this.f8133b;
        Object obj = objArr[i9];
        if (i9 < this.f8134c - 1) {
            System.arraycopy(objArr, i9 + 1, objArr, i9, (i10 - i9) - 1);
        }
        this.f8134c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i9, Object obj) {
        c();
        g(i9);
        Object[] objArr = this.f8133b;
        Object obj2 = objArr[i9];
        objArr[i9] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8134c;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        c();
        int i9 = this.f8134c;
        Object[] objArr = this.f8133b;
        if (i9 == objArr.length) {
            this.f8133b = Arrays.copyOf(objArr, ((i9 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f8133b;
        int i10 = this.f8134c;
        this.f8134c = i10 + 1;
        objArr2[i10] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
