package com.google.android.gms.internal.recaptcha;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class vg extends je<Long> implements RandomAccess, oh {

    /* renamed from: d  reason: collision with root package name */
    private static final vg f9112d;

    /* renamed from: b  reason: collision with root package name */
    private long[] f9113b;

    /* renamed from: c  reason: collision with root package name */
    private int f9114c;

    static {
        vg vgVar = new vg(new long[0], 0);
        f9112d = vgVar;
        vgVar.D();
    }

    vg() {
        this(new long[10], 0);
    }

    private final void e(int i9) {
        if (i9 < 0 || i9 >= this.f9114c) {
            throw new IndexOutOfBoundsException(g(i9));
        }
    }

    private final String g(int i9) {
        int i10 = this.f9114c;
        StringBuilder sb2 = new StringBuilder(35);
        sb2.append("Index:");
        sb2.append(i9);
        sb2.append(", Size:");
        sb2.append(i10);
        return sb2.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i9, Object obj) {
        int i10;
        long longValue = ((Long) obj).longValue();
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f9114c)) {
            long[] jArr = this.f9113b;
            if (i10 < jArr.length) {
                System.arraycopy(jArr, i9, jArr, i9 + 1, i10 - i9);
            } else {
                long[] jArr2 = new long[((i10 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i9);
                System.arraycopy(this.f9113b, i9, jArr2, i9 + 1, this.f9114c - i9);
                this.f9113b = jArr2;
            }
            this.f9113b[i9] = longValue;
            this.f9114c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(g(i9));
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        c();
        mg.e(collection);
        if (!(collection instanceof vg)) {
            return super.addAll(collection);
        }
        vg vgVar = (vg) collection;
        int i9 = vgVar.f9114c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f9114c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            long[] jArr = this.f9113b;
            if (i11 > jArr.length) {
                this.f9113b = Arrays.copyOf(jArr, i11);
            }
            System.arraycopy(vgVar.f9113b, 0, this.f9113b, this.f9114c, vgVar.f9114c);
            this.f9114c = i11;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final long d(int i9) {
        e(i9);
        return this.f9113b[i9];
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vg)) {
            return super.equals(obj);
        }
        vg vgVar = (vg) obj;
        if (this.f9114c != vgVar.f9114c) {
            return false;
        }
        long[] jArr = vgVar.f9113b;
        for (int i9 = 0; i9 < this.f9114c; i9++) {
            if (this.f9113b[i9] != jArr[i9]) {
                return false;
            }
        }
        return true;
    }

    public final void f(long j10) {
        c();
        int i9 = this.f9114c;
        long[] jArr = this.f9113b;
        if (i9 == jArr.length) {
            long[] jArr2 = new long[((i9 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i9);
            this.f9113b = jArr2;
        }
        long[] jArr3 = this.f9113b;
        int i10 = this.f9114c;
        this.f9114c = i10 + 1;
        jArr3[i10] = j10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i9) {
        e(i9);
        return Long.valueOf(this.f9113b[i9]);
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f9114c; i10++) {
            i9 = (i9 * 31) + mg.c(this.f9113b[i10]);
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            int i9 = this.f9114c;
            for (int i10 = 0; i10 < i9; i10++) {
                if (this.f9113b[i10] == longValue) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.recaptcha.lg
    public final /* bridge */ /* synthetic */ lg j(int i9) {
        if (i9 >= this.f9114c) {
            return new vg(Arrays.copyOf(this.f9113b, i9), this.f9114c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        int i10;
        c();
        e(i9);
        long[] jArr = this.f9113b;
        long j10 = jArr[i9];
        if (i9 < this.f9114c - 1) {
            System.arraycopy(jArr, i9 + 1, jArr, i9, (i10 - i9) - 1);
        }
        this.f9114c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            long[] jArr = this.f9113b;
            System.arraycopy(jArr, i10, jArr, i9, this.f9114c - i10);
            this.f9114c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i9, Object obj) {
        long longValue = ((Long) obj).longValue();
        c();
        e(i9);
        long[] jArr = this.f9113b;
        long j10 = jArr[i9];
        jArr[i9] = longValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9114c;
    }

    private vg(long[] jArr, int i9) {
        this.f9113b = jArr;
        this.f9114c = i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        f(((Long) obj).longValue());
        return true;
    }
}
