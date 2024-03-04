package com.google.protobuf;

import com.google.protobuf.u0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class p0 extends d<Float> implements u0.f, RandomAccess, f2 {

    /* renamed from: d  reason: collision with root package name */
    private static final p0 f15171d;

    /* renamed from: b  reason: collision with root package name */
    private float[] f15172b;

    /* renamed from: c  reason: collision with root package name */
    private int f15173c;

    static {
        p0 p0Var = new p0(new float[0], 0);
        f15171d = p0Var;
        p0Var.C();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0() {
        this(new float[10], 0);
    }

    private void g(int i9, float f10) {
        int i10;
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f15173c)) {
            float[] fArr = this.f15172b;
            if (i10 < fArr.length) {
                System.arraycopy(fArr, i9, fArr, i9 + 1, i10 - i9);
            } else {
                float[] fArr2 = new float[((i10 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i9);
                System.arraycopy(this.f15172b, i9, fArr2, i9 + 1, this.f15173c - i9);
                this.f15172b = fArr2;
            }
            this.f15172b[i9] = f10;
            this.f15173c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(x(i9));
    }

    public static p0 m() {
        return f15171d;
    }

    private void n(int i9) {
        if (i9 < 0 || i9 >= this.f15173c) {
            throw new IndexOutOfBoundsException(x(i9));
        }
    }

    private String x(int i9) {
        return "Index:" + i9 + ", Size:" + this.f15173c;
    }

    @Override // com.google.protobuf.u0.f
    public void A(float f10) {
        c();
        int i9 = this.f15173c;
        float[] fArr = this.f15172b;
        if (i9 == fArr.length) {
            float[] fArr2 = new float[((i9 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i9);
            this.f15172b = fArr2;
        }
        float[] fArr3 = this.f15172b;
        int i10 = this.f15173c;
        this.f15173c = i10 + 1;
        fArr3[i10] = f10;
    }

    public float B(int i9, float f10) {
        c();
        n(i9);
        float[] fArr = this.f15172b;
        float f11 = fArr[i9];
        fArr[i9] = f10;
        return f11;
    }

    @Override // com.google.protobuf.d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        c();
        u0.a(collection);
        if (!(collection instanceof p0)) {
            return super.addAll(collection);
        }
        p0 p0Var = (p0) collection;
        int i9 = p0Var.f15173c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f15173c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            float[] fArr = this.f15172b;
            if (i11 > fArr.length) {
                this.f15172b = Arrays.copyOf(fArr, i11);
            }
            System.arraycopy(p0Var.f15172b, 0, this.f15172b, this.f15173c, p0Var.f15173c);
            this.f15173c = i11;
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
    public void add(int i9, Float f10) {
        g(i9, f10.floatValue());
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p0)) {
            return super.equals(obj);
        }
        p0 p0Var = (p0) obj;
        if (this.f15173c != p0Var.f15173c) {
            return false;
        }
        float[] fArr = p0Var.f15172b;
        for (int i9 = 0; i9 < this.f15173c; i9++) {
            if (Float.floatToIntBits(this.f15172b[i9]) != Float.floatToIntBits(fArr[i9])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: f */
    public boolean add(Float f10) {
        A(f10.floatValue());
        return true;
    }

    @Override // com.google.protobuf.u0.f
    public float getFloat(int i9) {
        n(i9);
        return this.f15172b[i9];
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f15173c; i10++) {
            i9 = (i9 * 31) + Float.floatToIntBits(this.f15172b[i10]);
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            int size = size();
            for (int i9 = 0; i9 < size; i9++) {
                if (this.f15172b[i9] == floatValue) {
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
            float[] fArr = this.f15172b;
            System.arraycopy(fArr, i10, fArr, i9, this.f15173c - i10);
            this.f15173c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f15173c;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: u */
    public Float get(int i9) {
        return Float.valueOf(getFloat(i9));
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.List
    /* renamed from: y */
    public Float remove(int i9) {
        int i10;
        c();
        n(i9);
        float[] fArr = this.f15172b;
        float f10 = fArr[i9];
        if (i9 < this.f15173c - 1) {
            System.arraycopy(fArr, i9 + 1, fArr, i9, (i10 - i9) - 1);
        }
        this.f15173c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: z */
    public Float set(int i9, Float f10) {
        return Float.valueOf(B(i9, f10.floatValue()));
    }

    private p0(float[] fArr, int i9) {
        this.f15172b = fArr;
        this.f15173c = i9;
    }

    @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
    /* renamed from: b */
    public u0.j<Float> b2(int i9) {
        if (i9 >= this.f15173c) {
            return new p0(Arrays.copyOf(this.f15172b, i9), this.f15173c);
        }
        throw new IllegalArgumentException();
    }
}
