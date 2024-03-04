package com.google.protobuf;

import com.google.protobuf.u0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class m extends d<Boolean> implements u0.a, RandomAccess, f2 {

    /* renamed from: d  reason: collision with root package name */
    private static final m f15059d;

    /* renamed from: b  reason: collision with root package name */
    private boolean[] f15060b;

    /* renamed from: c  reason: collision with root package name */
    private int f15061c;

    static {
        m mVar = new m(new boolean[0], 0);
        f15059d = mVar;
        mVar.C();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m() {
        this(new boolean[10], 0);
    }

    private void g(int i9, boolean z10) {
        int i10;
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f15061c)) {
            boolean[] zArr = this.f15060b;
            if (i10 < zArr.length) {
                System.arraycopy(zArr, i9, zArr, i9 + 1, i10 - i9);
            } else {
                boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i9);
                System.arraycopy(this.f15060b, i9, zArr2, i9 + 1, this.f15061c - i9);
                this.f15060b = zArr2;
            }
            this.f15060b[i9] = z10;
            this.f15061c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(z(i9));
    }

    public static m n() {
        return f15059d;
    }

    private void u(int i9) {
        if (i9 < 0 || i9 >= this.f15061c) {
            throw new IndexOutOfBoundsException(z(i9));
        }
    }

    private String z(int i9) {
        return "Index:" + i9 + ", Size:" + this.f15061c;
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.List
    /* renamed from: B */
    public Boolean remove(int i9) {
        int i10;
        c();
        u(i9);
        boolean[] zArr = this.f15060b;
        boolean z10 = zArr[i9];
        if (i9 < this.f15061c - 1) {
            System.arraycopy(zArr, i9 + 1, zArr, i9, (i10 - i9) - 1);
        }
        this.f15061c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: F */
    public Boolean set(int i9, Boolean bool) {
        return Boolean.valueOf(G(i9, bool.booleanValue()));
    }

    public boolean G(int i9, boolean z10) {
        c();
        u(i9);
        boolean[] zArr = this.f15060b;
        boolean z11 = zArr[i9];
        zArr[i9] = z10;
        return z11;
    }

    @Override // com.google.protobuf.d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Boolean> collection) {
        c();
        u0.a(collection);
        if (!(collection instanceof m)) {
            return super.addAll(collection);
        }
        m mVar = (m) collection;
        int i9 = mVar.f15061c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f15061c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            boolean[] zArr = this.f15060b;
            if (i11 > zArr.length) {
                this.f15060b = Arrays.copyOf(zArr, i11);
            }
            System.arraycopy(mVar.f15060b, 0, this.f15060b, this.f15061c, mVar.f15061c);
            this.f15061c = i11;
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
    public void add(int i9, Boolean bool) {
        g(i9, bool.booleanValue());
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return super.equals(obj);
        }
        m mVar = (m) obj;
        if (this.f15061c != mVar.f15061c) {
            return false;
        }
        boolean[] zArr = mVar.f15060b;
        for (int i9 = 0; i9 < this.f15061c; i9++) {
            if (this.f15060b[i9] != zArr[i9]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: f */
    public boolean add(Boolean bool) {
        m(bool.booleanValue());
        return true;
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f15061c; i10++) {
            i9 = (i9 * 31) + u0.d(this.f15060b[i10]);
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (obj instanceof Boolean) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            int size = size();
            for (int i9 = 0; i9 < size; i9++) {
                if (this.f15060b[i9] == booleanValue) {
                    return i9;
                }
            }
            return -1;
        }
        return -1;
    }

    public void m(boolean z10) {
        c();
        int i9 = this.f15061c;
        boolean[] zArr = this.f15060b;
        if (i9 == zArr.length) {
            boolean[] zArr2 = new boolean[((i9 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i9);
            this.f15060b = zArr2;
        }
        boolean[] zArr3 = this.f15060b;
        int i10 = this.f15061c;
        this.f15061c = i10 + 1;
        zArr3[i10] = z10;
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i9, int i10) {
        c();
        if (i10 >= i9) {
            boolean[] zArr = this.f15060b;
            System.arraycopy(zArr, i10, zArr, i9, this.f15061c - i10);
            this.f15061c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f15061c;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: x */
    public Boolean get(int i9) {
        return Boolean.valueOf(y(i9));
    }

    public boolean y(int i9) {
        u(i9);
        return this.f15060b[i9];
    }

    private m(boolean[] zArr, int i9) {
        this.f15060b = zArr;
        this.f15061c = i9;
    }

    @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
    /* renamed from: b */
    public u0.j<Boolean> b2(int i9) {
        if (i9 >= this.f15061c) {
            return new m(Arrays.copyOf(this.f15060b, i9), this.f15061c);
        }
        throw new IllegalArgumentException();
    }
}
