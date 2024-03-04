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
public final class f extends g {

    /* loaded from: classes2.dex */
    private static class a extends AbstractList<Integer> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final int[] f13635a;

        /* renamed from: b  reason: collision with root package name */
        final int f13636b;

        /* renamed from: c  reason: collision with root package name */
        final int f13637c;

        a(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: c */
        public Integer get(int i9) {
            o.q(i9, size());
            return Integer.valueOf(this.f13635a[this.f13636b + i9]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Integer) && f.g(this.f13635a, ((Integer) obj).intValue(), this.f13636b, this.f13637c) != -1;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public Integer set(int i9, Integer num) {
            o.q(i9, size());
            int[] iArr = this.f13635a;
            int i10 = this.f13636b;
            int i11 = iArr[i10 + i9];
            iArr[i10 + i9] = ((Integer) o.s(num)).intValue();
            return Integer.valueOf(i11);
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
                    if (this.f13635a[this.f13636b + i9] != aVar.f13635a[aVar.f13636b + i9]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        /* renamed from: f */
        public Spliterator.OfInt spliterator() {
            return Spliterators.spliterator(this.f13635a, this.f13636b, this.f13637c, 0);
        }

        int[] g() {
            return Arrays.copyOfRange(this.f13635a, this.f13636b, this.f13637c);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i9 = 1;
            for (int i10 = this.f13636b; i10 < this.f13637c; i10++) {
                i9 = (i9 * 31) + f.f(this.f13635a[i10]);
            }
            return i9;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int g10;
            if (!(obj instanceof Integer) || (g10 = f.g(this.f13635a, ((Integer) obj).intValue(), this.f13636b, this.f13637c)) < 0) {
                return -1;
            }
            return g10 - this.f13636b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int h10;
            if (!(obj instanceof Integer) || (h10 = f.h(this.f13635a, ((Integer) obj).intValue(), this.f13636b, this.f13637c)) < 0) {
                return -1;
            }
            return h10 - this.f13636b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13637c - this.f13636b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i9, int i10) {
            o.y(i9, i10, size());
            if (i9 == i10) {
                return Collections.emptyList();
            }
            int[] iArr = this.f13635a;
            int i11 = this.f13636b;
            return new a(iArr, i9 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 5);
            sb2.append('[');
            sb2.append(this.f13635a[this.f13636b]);
            int i9 = this.f13636b;
            while (true) {
                i9++;
                if (i9 < this.f13637c) {
                    sb2.append(", ");
                    sb2.append(this.f13635a[i9]);
                } else {
                    sb2.append(']');
                    return sb2.toString();
                }
            }
        }

        a(int[] iArr, int i9, int i10) {
            this.f13635a = iArr;
            this.f13636b = i9;
            this.f13637c = i10;
        }
    }

    public static List<Integer> c(int... iArr) {
        if (iArr.length == 0) {
            return Collections.emptyList();
        }
        return new a(iArr);
    }

    public static int d(long j10) {
        int i9 = (int) j10;
        o.j(((long) i9) == j10, "Out of range: %s", j10);
        return i9;
    }

    public static int e(int i9, int i10) {
        if (i9 < i10) {
            return -1;
        }
        return i9 > i10 ? 1 : 0;
    }

    public static int f(int i9) {
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(int[] iArr, int i9, int i10, int i11) {
        while (i10 < i11) {
            if (iArr[i10] == i9) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int h(int[] iArr, int i9, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (iArr[i12] == i9) {
                return i12;
            }
        }
        return -1;
    }

    public static int i(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static int[] j(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).g();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i9 = 0; i9 < length; i9++) {
            iArr[i9] = ((Number) o.s(array[i9])).intValue();
        }
        return iArr;
    }
}
