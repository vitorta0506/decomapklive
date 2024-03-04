package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
final class q8 extends j7 implements RandomAccess, ga {

    /* renamed from: d  reason: collision with root package name */
    private static final q8 f8277d;

    /* renamed from: b  reason: collision with root package name */
    private float[] f8278b;

    /* renamed from: c  reason: collision with root package name */
    private int f8279c;

    static {
        q8 q8Var = new q8(new float[0], 0);
        f8277d = q8Var;
        q8Var.D();
    }

    q8() {
        this(new float[10], 0);
    }

    private final String f(int i9) {
        int i10 = this.f8279c;
        return "Index:" + i9 + ", Size:" + i10;
    }

    private final void g(int i9) {
        if (i9 < 0 || i9 >= this.f8279c) {
            throw new IndexOutOfBoundsException(f(i9));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i9, Object obj) {
        int i10;
        float floatValue = ((Float) obj).floatValue();
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f8279c)) {
            float[] fArr = this.f8278b;
            if (i10 < fArr.length) {
                System.arraycopy(fArr, i9, fArr, i9 + 1, i10 - i9);
            } else {
                float[] fArr2 = new float[((i10 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i9);
                System.arraycopy(this.f8278b, i9, fArr2, i9 + 1, this.f8279c - i9);
                this.f8278b = fArr2;
            }
            this.f8278b[i9] = floatValue;
            this.f8279c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(f(i9));
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        e9.e(collection);
        if (!(collection instanceof q8)) {
            return super.addAll(collection);
        }
        q8 q8Var = (q8) collection;
        int i9 = q8Var.f8279c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f8279c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            float[] fArr = this.f8278b;
            if (i11 > fArr.length) {
                this.f8278b = Arrays.copyOf(fArr, i11);
            }
            System.arraycopy(q8Var.f8278b, 0, this.f8278b, this.f8279c, q8Var.f8279c);
            this.f8279c = i11;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(float f10) {
        c();
        int i9 = this.f8279c;
        float[] fArr = this.f8278b;
        if (i9 == fArr.length) {
            float[] fArr2 = new float[((i9 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i9);
            this.f8278b = fArr2;
        }
        float[] fArr3 = this.f8278b;
        int i10 = this.f8279c;
        this.f8279c = i10 + 1;
        fArr3[i10] = f10;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q8)) {
            return super.equals(obj);
        }
        q8 q8Var = (q8) obj;
        if (this.f8279c != q8Var.f8279c) {
            return false;
        }
        float[] fArr = q8Var.f8278b;
        for (int i9 = 0; i9 < this.f8279c; i9++) {
            if (Float.floatToIntBits(this.f8278b[i9]) != Float.floatToIntBits(fArr[i9])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i9) {
        g(i9);
        return Float.valueOf(this.f8278b[i9]);
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f8279c; i10++) {
            i9 = (i9 * 31) + Float.floatToIntBits(this.f8278b[i10]);
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            int i9 = this.f8279c;
            for (int i10 = 0; i10 < i9; i10++) {
                if (this.f8278b[i10] == floatValue) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.d9
    public final /* bridge */ /* synthetic */ d9 j(int i9) {
        if (i9 >= this.f8279c) {
            return new q8(Arrays.copyOf(this.f8278b, i9), this.f8279c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        int i10;
        c();
        g(i9);
        float[] fArr = this.f8278b;
        float f10 = fArr[i9];
        if (i9 < this.f8279c - 1) {
            System.arraycopy(fArr, i9 + 1, fArr, i9, (i10 - i9) - 1);
        }
        this.f8279c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            float[] fArr = this.f8278b;
            System.arraycopy(fArr, i10, fArr, i9, this.f8279c - i10);
            this.f8279c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i9, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        c();
        g(i9);
        float[] fArr = this.f8278b;
        float f10 = fArr[i9];
        fArr[i9] = floatValue;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8279c;
    }

    private q8(float[] fArr, int i9) {
        this.f8278b = fArr;
        this.f8279c = i9;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        d(((Float) obj).floatValue());
        return true;
    }
}
