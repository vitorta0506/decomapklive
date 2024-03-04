package com.google.android.gms.internal.recaptcha;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class qh<E> extends je<E> implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    private static final qh<Object> f9012d;

    /* renamed from: b  reason: collision with root package name */
    private E[] f9013b;

    /* renamed from: c  reason: collision with root package name */
    private int f9014c;

    static {
        qh<Object> qhVar = new qh<>(new Object[0], 0);
        f9012d = qhVar;
        qhVar.D();
    }

    private qh(E[] eArr, int i9) {
        this.f9013b = eArr;
        this.f9014c = i9;
    }

    public static <E> qh<E> d() {
        return (qh<E>) f9012d;
    }

    private final String f(int i9) {
        int i10 = this.f9014c;
        StringBuilder sb2 = new StringBuilder(35);
        sb2.append("Index:");
        sb2.append(i9);
        sb2.append(", Size:");
        sb2.append(i10);
        return sb2.toString();
    }

    private final void g(int i9) {
        if (i9 < 0 || i9 >= this.f9014c) {
            throw new IndexOutOfBoundsException(f(i9));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i9, E e10) {
        int i10;
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f9014c)) {
            E[] eArr = this.f9013b;
            if (i10 < eArr.length) {
                System.arraycopy(eArr, i9, eArr, i9 + 1, i10 - i9);
            } else {
                E[] eArr2 = (E[]) new Object[((i10 * 3) / 2) + 1];
                System.arraycopy(eArr, 0, eArr2, 0, i9);
                System.arraycopy(this.f9013b, i9, eArr2, i9 + 1, this.f9014c - i9);
                this.f9013b = eArr2;
            }
            this.f9013b[i9] = e10;
            this.f9014c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(f(i9));
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i9) {
        g(i9);
        return this.f9013b[i9];
    }

    @Override // com.google.android.gms.internal.recaptcha.lg
    public final /* bridge */ /* synthetic */ lg j(int i9) {
        if (i9 >= this.f9014c) {
            return new qh(Arrays.copyOf(this.f9013b, i9), this.f9014c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.List
    public final E remove(int i9) {
        int i10;
        c();
        g(i9);
        E[] eArr = this.f9013b;
        E e10 = eArr[i9];
        if (i9 < this.f9014c - 1) {
            System.arraycopy(eArr, i9 + 1, eArr, i9, (i10 - i9) - 1);
        }
        this.f9014c--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i9, E e10) {
        c();
        g(i9);
        E[] eArr = this.f9013b;
        E e11 = eArr[i9];
        eArr[i9] = e10;
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9014c;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        c();
        int i9 = this.f9014c;
        E[] eArr = this.f9013b;
        if (i9 == eArr.length) {
            this.f9013b = (E[]) Arrays.copyOf(eArr, ((i9 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f9013b;
        int i10 = this.f9014c;
        this.f9014c = i10 + 1;
        eArr2[i10] = e10;
        ((AbstractList) this).modCount++;
        return true;
    }
}
