package com.google.common.primitives;

import com.google.common.base.o;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;
/* loaded from: classes2.dex */
public final class h {

    /* loaded from: classes2.dex */
    private static class a extends AbstractList<Long> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final long[] f13638a;

        /* renamed from: b  reason: collision with root package name */
        final int f13639b;

        /* renamed from: c  reason: collision with root package name */
        final int f13640c;

        a(long[] jArr, int i9, int i10) {
            this.f13638a = jArr;
            this.f13639b = i9;
            this.f13640c = i10;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: c */
        public Long get(int i9) {
            o.q(i9, size());
            return Long.valueOf(this.f13638a[this.f13639b + i9]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Long) && h.f(this.f13638a, ((Long) obj).longValue(), this.f13639b, this.f13640c) != -1;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public Long set(int i9, Long l10) {
            o.q(i9, size());
            long[] jArr = this.f13638a;
            int i10 = this.f13639b;
            long j10 = jArr[i10 + i9];
            jArr[i10 + i9] = ((Long) o.s(l10)).longValue();
            return Long.valueOf(j10);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                int size = size();
                if (aVar.size() != size) {
                    return false;
                }
                for (int i9 = 0; i9 < size; i9++) {
                    if (this.f13638a[this.f13639b + i9] != aVar.f13638a[aVar.f13639b + i9]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        /* renamed from: f */
        public Spliterator.OfLong spliterator() {
            return Spliterators.spliterator(this.f13638a, this.f13639b, this.f13640c, 0);
        }

        long[] g() {
            return Arrays.copyOfRange(this.f13638a, this.f13639b, this.f13640c);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i9 = 1;
            for (int i10 = this.f13639b; i10 < this.f13640c; i10++) {
                i9 = (i9 * 31) + h.e(this.f13638a[i10]);
            }
            return i9;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int f10;
            if (!(obj instanceof Long) || (f10 = h.f(this.f13638a, ((Long) obj).longValue(), this.f13639b, this.f13640c)) < 0) {
                return -1;
            }
            return f10 - this.f13639b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int g10;
            if (!(obj instanceof Long) || (g10 = h.g(this.f13638a, ((Long) obj).longValue(), this.f13639b, this.f13640c)) < 0) {
                return -1;
            }
            return g10 - this.f13639b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13640c - this.f13639b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i9, int i10) {
            o.y(i9, i10, size());
            if (i9 == i10) {
                return Collections.emptyList();
            }
            long[] jArr = this.f13638a;
            int i11 = this.f13639b;
            return new a(jArr, i9 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 10);
            sb2.append('[');
            sb2.append(this.f13638a[this.f13639b]);
            int i9 = this.f13639b;
            while (true) {
                i9++;
                if (i9 < this.f13640c) {
                    sb2.append(", ");
                    sb2.append(this.f13638a[i9]);
                } else {
                    sb2.append(']');
                    return sb2.toString();
                }
            }
        }
    }

    public static int c(long j10, long j11) {
        int i9 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        return i9 > 0 ? 1 : 0;
    }

    public static long d(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17) {
        return ((b11 & 255) << 48) | ((b10 & 255) << 56) | ((b12 & 255) << 40) | ((b13 & 255) << 32) | ((b14 & 255) << 24) | ((b15 & 255) << 16) | ((b16 & 255) << 8) | (b17 & 255);
    }

    public static int e(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(long[] jArr, long j10, int i9, int i10) {
        while (i9 < i10) {
            if (jArr[i9] == j10) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(long[] jArr, long j10, int i9, int i10) {
        for (int i11 = i10 - 1; i11 >= i9; i11--) {
            if (jArr[i11] == j10) {
                return i11;
            }
        }
        return -1;
    }

    public static long h(long... jArr) {
        o.d(jArr.length > 0);
        long j10 = jArr[0];
        for (int i9 = 1; i9 < jArr.length; i9++) {
            if (jArr[i9] > j10) {
                j10 = jArr[i9];
            }
        }
        return j10;
    }

    public static long[] i(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).g();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        long[] jArr = new long[length];
        for (int i9 = 0; i9 < length; i9++) {
            jArr[i9] = ((Number) o.s(array[i9])).longValue();
        }
        return jArr;
    }
}
