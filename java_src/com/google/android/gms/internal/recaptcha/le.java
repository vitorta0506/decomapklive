package com.google.android.gms.internal.recaptcha;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class le extends je<Boolean> implements RandomAccess, oh {

    /* renamed from: d  reason: collision with root package name */
    private static final le f8837d;

    /* renamed from: b  reason: collision with root package name */
    private boolean[] f8838b;

    /* renamed from: c  reason: collision with root package name */
    private int f8839c;

    static {
        le leVar = new le(new boolean[0], 0);
        f8837d = leVar;
        leVar.D();
    }

    le() {
        this(new boolean[10], 0);
    }

    private final String f(int i9) {
        int i10 = this.f8839c;
        StringBuilder sb2 = new StringBuilder(35);
        sb2.append("Index:");
        sb2.append(i9);
        sb2.append(", Size:");
        sb2.append(i10);
        return sb2.toString();
    }

    private final void g(int i9) {
        if (i9 < 0 || i9 >= this.f8839c) {
            throw new IndexOutOfBoundsException(f(i9));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i9, Object obj) {
        int i10;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f8839c)) {
            boolean[] zArr = this.f8838b;
            if (i10 < zArr.length) {
                System.arraycopy(zArr, i9, zArr, i9 + 1, i10 - i9);
            } else {
                boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i9);
                System.arraycopy(this.f8838b, i9, zArr2, i9 + 1, this.f8839c - i9);
                this.f8838b = zArr2;
            }
            this.f8838b[i9] = booleanValue;
            this.f8839c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(f(i9));
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        c();
        mg.e(collection);
        if (!(collection instanceof le)) {
            return super.addAll(collection);
        }
        le leVar = (le) collection;
        int i9 = leVar.f8839c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f8839c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            boolean[] zArr = this.f8838b;
            if (i11 > zArr.length) {
                this.f8838b = Arrays.copyOf(zArr, i11);
            }
            System.arraycopy(leVar.f8838b, 0, this.f8838b, this.f8839c, leVar.f8839c);
            this.f8839c = i11;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(boolean z10) {
        c();
        int i9 = this.f8839c;
        boolean[] zArr = this.f8838b;
        if (i9 == zArr.length) {
            boolean[] zArr2 = new boolean[((i9 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i9);
            this.f8838b = zArr2;
        }
        boolean[] zArr3 = this.f8838b;
        int i10 = this.f8839c;
        this.f8839c = i10 + 1;
        zArr3[i10] = z10;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof le)) {
            return super.equals(obj);
        }
        le leVar = (le) obj;
        if (this.f8839c != leVar.f8839c) {
            return false;
        }
        boolean[] zArr = leVar.f8838b;
        for (int i9 = 0; i9 < this.f8839c; i9++) {
            if (this.f8838b[i9] != zArr[i9]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i9) {
        g(i9);
        return Boolean.valueOf(this.f8838b[i9]);
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f8839c; i10++) {
            i9 = (i9 * 31) + mg.a(this.f8838b[i10]);
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Boolean) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            int i9 = this.f8839c;
            for (int i10 = 0; i10 < i9; i10++) {
                if (this.f8838b[i10] == booleanValue) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.recaptcha.lg
    public final /* bridge */ /* synthetic */ lg j(int i9) {
        if (i9 >= this.f8839c) {
            return new le(Arrays.copyOf(this.f8838b, i9), this.f8839c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        int i10;
        c();
        g(i9);
        boolean[] zArr = this.f8838b;
        boolean z10 = zArr[i9];
        if (i9 < this.f8839c - 1) {
            System.arraycopy(zArr, i9 + 1, zArr, i9, (i10 - i9) - 1);
        }
        this.f8839c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            boolean[] zArr = this.f8838b;
            System.arraycopy(zArr, i10, zArr, i9, this.f8839c - i10);
            this.f8839c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i9, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        c();
        g(i9);
        boolean[] zArr = this.f8838b;
        boolean z10 = zArr[i9];
        zArr[i9] = booleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8839c;
    }

    private le(boolean[] zArr, int i9) {
        this.f8838b = zArr;
        this.f8839c = i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        d(((Boolean) obj).booleanValue());
        return true;
    }
}
