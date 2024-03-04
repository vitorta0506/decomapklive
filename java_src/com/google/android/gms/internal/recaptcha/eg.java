package com.google.android.gms.internal.recaptcha;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class eg extends je<Integer> implements RandomAccess, ig, oh {

    /* renamed from: d  reason: collision with root package name */
    private static final eg f8651d;

    /* renamed from: b  reason: collision with root package name */
    private int[] f8652b;

    /* renamed from: c  reason: collision with root package name */
    private int f8653c;

    static {
        eg egVar = new eg(new int[0], 0);
        f8651d = egVar;
        egVar.D();
    }

    eg() {
        this(new int[10], 0);
    }

    public static eg f() {
        return f8651d;
    }

    private final String g(int i9) {
        int i10 = this.f8653c;
        StringBuilder sb2 = new StringBuilder(35);
        sb2.append("Index:");
        sb2.append(i9);
        sb2.append(", Size:");
        sb2.append(i10);
        return sb2.toString();
    }

    private final void m(int i9) {
        if (i9 < 0 || i9 >= this.f8653c) {
            throw new IndexOutOfBoundsException(g(i9));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i9, Object obj) {
        int i10;
        int intValue = ((Integer) obj).intValue();
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f8653c)) {
            int[] iArr = this.f8652b;
            if (i10 < iArr.length) {
                System.arraycopy(iArr, i9, iArr, i9 + 1, i10 - i9);
            } else {
                int[] iArr2 = new int[((i10 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i9);
                System.arraycopy(this.f8652b, i9, iArr2, i9 + 1, this.f8653c - i9);
                this.f8652b = iArr2;
            }
            this.f8652b[i9] = intValue;
            this.f8653c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(g(i9));
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        c();
        mg.e(collection);
        if (!(collection instanceof eg)) {
            return super.addAll(collection);
        }
        eg egVar = (eg) collection;
        int i9 = egVar.f8653c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f8653c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            int[] iArr = this.f8652b;
            if (i11 > iArr.length) {
                this.f8652b = Arrays.copyOf(iArr, i11);
            }
            System.arraycopy(egVar.f8652b, 0, this.f8652b, this.f8653c, egVar.f8653c);
            this.f8653c = i11;
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
        return this.f8652b[i9];
    }

    @Override // com.google.android.gms.internal.recaptcha.ig
    public final void e(int i9) {
        c();
        int i10 = this.f8653c;
        int[] iArr = this.f8652b;
        if (i10 == iArr.length) {
            int[] iArr2 = new int[((i10 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            this.f8652b = iArr2;
        }
        int[] iArr3 = this.f8652b;
        int i11 = this.f8653c;
        this.f8653c = i11 + 1;
        iArr3[i11] = i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eg)) {
            return super.equals(obj);
        }
        eg egVar = (eg) obj;
        if (this.f8653c != egVar.f8653c) {
            return false;
        }
        int[] iArr = egVar.f8652b;
        for (int i9 = 0; i9 < this.f8653c; i9++) {
            if (this.f8652b[i9] != iArr[i9]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i9) {
        m(i9);
        return Integer.valueOf(this.f8652b[i9]);
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f8653c; i10++) {
            i9 = (i9 * 31) + this.f8652b[i10];
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            int i9 = this.f8653c;
            for (int i10 = 0; i10 < i9; i10++) {
                if (this.f8652b[i10] == intValue) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.recaptcha.lg
    /* renamed from: r */
    public final ig j(int i9) {
        if (i9 >= this.f8653c) {
            return new eg(Arrays.copyOf(this.f8652b, i9), this.f8653c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        int i10;
        c();
        m(i9);
        int[] iArr = this.f8652b;
        int i11 = iArr[i9];
        if (i9 < this.f8653c - 1) {
            System.arraycopy(iArr, i9 + 1, iArr, i9, (i10 - i9) - 1);
        }
        this.f8653c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            int[] iArr = this.f8652b;
            System.arraycopy(iArr, i10, iArr, i9, this.f8653c - i10);
            this.f8653c -= i10 - i9;
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
        int[] iArr = this.f8652b;
        int i10 = iArr[i9];
        iArr[i9] = intValue;
        return Integer.valueOf(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8653c;
    }

    private eg(int[] iArr, int i9) {
        this.f8652b = iArr;
        this.f8653c = i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        e(((Integer) obj).intValue());
        return true;
    }
}
