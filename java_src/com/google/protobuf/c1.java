package com.google.protobuf;

import com.google.protobuf.u0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class c1 extends d<Long> implements u0.i, RandomAccess, f2 {

    /* renamed from: d  reason: collision with root package name */
    private static final c1 f14864d;

    /* renamed from: b  reason: collision with root package name */
    private long[] f14865b;

    /* renamed from: c  reason: collision with root package name */
    private int f14866c;

    static {
        c1 c1Var = new c1(new long[0], 0);
        f14864d = c1Var;
        c1Var.C();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c1() {
        this(new long[10], 0);
    }

    private void g(int i9, long j10) {
        int i10;
        c();
        if (i9 >= 0 && i9 <= (i10 = this.f14866c)) {
            long[] jArr = this.f14865b;
            if (i10 < jArr.length) {
                System.arraycopy(jArr, i9, jArr, i9 + 1, i10 - i9);
            } else {
                long[] jArr2 = new long[((i10 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i9);
                System.arraycopy(this.f14865b, i9, jArr2, i9 + 1, this.f14866c - i9);
                this.f14865b = jArr2;
            }
            this.f14865b[i9] = j10;
            this.f14866c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(x(i9));
    }

    public static c1 m() {
        return f14864d;
    }

    private void n(int i9) {
        if (i9 < 0 || i9 >= this.f14866c) {
            throw new IndexOutOfBoundsException(x(i9));
        }
    }

    private String x(int i9) {
        return "Index:" + i9 + ", Size:" + this.f14866c;
    }

    public long B(int i9, long j10) {
        c();
        n(i9);
        long[] jArr = this.f14865b;
        long j11 = jArr[i9];
        jArr[i9] = j10;
        return j11;
    }

    @Override // com.google.protobuf.u0.i
    public void I0(long j10) {
        c();
        int i9 = this.f14866c;
        long[] jArr = this.f14865b;
        if (i9 == jArr.length) {
            long[] jArr2 = new long[((i9 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i9);
            this.f14865b = jArr2;
        }
        long[] jArr3 = this.f14865b;
        int i10 = this.f14866c;
        this.f14866c = i10 + 1;
        jArr3[i10] = j10;
    }

    @Override // com.google.protobuf.d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        c();
        u0.a(collection);
        if (!(collection instanceof c1)) {
            return super.addAll(collection);
        }
        c1 c1Var = (c1) collection;
        int i9 = c1Var.f14866c;
        if (i9 == 0) {
            return false;
        }
        int i10 = this.f14866c;
        if (Integer.MAX_VALUE - i10 >= i9) {
            int i11 = i10 + i9;
            long[] jArr = this.f14865b;
            if (i11 > jArr.length) {
                this.f14865b = Arrays.copyOf(jArr, i11);
            }
            System.arraycopy(c1Var.f14865b, 0, this.f14865b, this.f14866c, c1Var.f14866c);
            this.f14866c = i11;
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
    public void add(int i9, Long l10) {
        g(i9, l10.longValue());
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return super.equals(obj);
        }
        c1 c1Var = (c1) obj;
        if (this.f14866c != c1Var.f14866c) {
            return false;
        }
        long[] jArr = c1Var.f14865b;
        for (int i9 = 0; i9 < this.f14866c; i9++) {
            if (this.f14865b[i9] != jArr[i9]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: f */
    public boolean add(Long l10) {
        I0(l10.longValue());
        return true;
    }

    @Override // com.google.protobuf.u0.i
    public long getLong(int i9) {
        n(i9);
        return this.f14865b[i9];
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i9 = 1;
        for (int i10 = 0; i10 < this.f14866c; i10++) {
            i9 = (i9 * 31) + u0.i(this.f14865b[i10]);
        }
        return i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            int size = size();
            for (int i9 = 0; i9 < size; i9++) {
                if (this.f14865b[i9] == longValue) {
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
            long[] jArr = this.f14865b;
            System.arraycopy(jArr, i10, jArr, i9, this.f14866c - i10);
            this.f14866c -= i10 - i9;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14866c;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: u */
    public Long get(int i9) {
        return Long.valueOf(getLong(i9));
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.List
    /* renamed from: y */
    public Long remove(int i9) {
        int i10;
        c();
        n(i9);
        long[] jArr = this.f14865b;
        long j10 = jArr[i9];
        if (i9 < this.f14866c - 1) {
            System.arraycopy(jArr, i9 + 1, jArr, i9, (i10 - i9) - 1);
        }
        this.f14866c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: z */
    public Long set(int i9, Long l10) {
        return Long.valueOf(B(i9, l10.longValue()));
    }

    private c1(long[] jArr, int i9) {
        this.f14865b = jArr;
        this.f14866c = i9;
    }

    @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
    /* renamed from: b */
    public u0.j<Long> b2(int i9) {
        if (i9 >= this.f14866c) {
            return new c1(Arrays.copyOf(this.f14865b, i9), this.f14866c);
        }
        throw new IllegalArgumentException();
    }
}
