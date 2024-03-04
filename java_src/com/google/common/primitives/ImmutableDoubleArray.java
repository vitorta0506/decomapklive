package com.google.common.primitives;

import com.google.common.base.o;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.DoubleConsumer;
import java.util.stream.DoubleStream;
import okhttp3.HttpUrl;
/* loaded from: classes2.dex */
public final class ImmutableDoubleArray implements Serializable {
    private static final ImmutableDoubleArray EMPTY = new ImmutableDoubleArray(new double[0]);
    private final double[] array;
    private final int end;
    private final transient int start;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends AbstractList<Double> implements RandomAccess, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableDoubleArray f13622a;

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: c */
        public Double get(int i9) {
            return Double.valueOf(this.f13622a.get(i9));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f13622a.equals(((b) obj).f13622a);
            }
            if (obj instanceof List) {
                List list = (List) obj;
                if (size() != list.size()) {
                    return false;
                }
                int i9 = this.f13622a.start;
                for (Object obj2 : list) {
                    if (obj2 instanceof Double) {
                        int i10 = i9 + 1;
                        if (ImmutableDoubleArray.areEqual(this.f13622a.array[i9], ((Double) obj2).doubleValue())) {
                            i9 = i10;
                        }
                    }
                    return false;
                }
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.f13622a.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (obj instanceof Double) {
                return this.f13622a.indexOf(((Double) obj).doubleValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Double) {
                return this.f13622a.lastIndexOf(((Double) obj).doubleValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13622a.length();
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        public Spliterator<Double> spliterator() {
            return this.f13622a.spliterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i9, int i10) {
            return this.f13622a.subArray(i9, i10).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.f13622a.toString();
        }

        private b(ImmutableDoubleArray immutableDoubleArray) {
            this.f13622a = immutableDoubleArray;
        }
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private double[] f13623a;

        /* renamed from: b  reason: collision with root package name */
        private int f13624b = 0;

        c(int i9) {
            this.f13623a = new double[i9];
        }

        private void e(int i9) {
            int i10 = this.f13624b + i9;
            double[] dArr = this.f13623a;
            if (i10 > dArr.length) {
                this.f13623a = Arrays.copyOf(dArr, f(dArr.length, i10));
            }
        }

        private static int f(int i9, int i10) {
            if (i10 >= 0) {
                int i11 = i9 + (i9 >> 1) + 1;
                if (i11 < i10) {
                    i11 = Integer.highestOneBit(i10 - 1) << 1;
                }
                if (i11 < 0) {
                    return Integer.MAX_VALUE;
                }
                return i11;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }

        public c a(double d10) {
            e(1);
            double[] dArr = this.f13623a;
            int i9 = this.f13624b;
            dArr[i9] = d10;
            this.f13624b = i9 + 1;
            return this;
        }

        public c b(Iterable<Double> iterable) {
            if (iterable instanceof Collection) {
                return c((Collection) iterable);
            }
            for (Double d10 : iterable) {
                a(d10.doubleValue());
            }
            return this;
        }

        public c c(Collection<Double> collection) {
            e(collection.size());
            for (Double d10 : collection) {
                double[] dArr = this.f13623a;
                int i9 = this.f13624b;
                this.f13624b = i9 + 1;
                dArr[i9] = d10.doubleValue();
            }
            return this;
        }

        public ImmutableDoubleArray d() {
            return this.f13624b == 0 ? ImmutableDoubleArray.EMPTY : new ImmutableDoubleArray(this.f13623a, 0, this.f13624b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean areEqual(double d10, double d11) {
        return Double.doubleToLongBits(d10) == Double.doubleToLongBits(d11);
    }

    public static c builder(int i9) {
        o.h(i9 >= 0, "Invalid initialCapacity: %s", i9);
        return new c(i9);
    }

    public static ImmutableDoubleArray copyOf(double[] dArr) {
        if (dArr.length == 0) {
            return EMPTY;
        }
        return new ImmutableDoubleArray(Arrays.copyOf(dArr, dArr.length));
    }

    private boolean isPartialView() {
        return this.start > 0 || this.end < this.array.length;
    }

    public static ImmutableDoubleArray of() {
        return EMPTY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Spliterator.OfDouble spliterator() {
        return Spliterators.spliterator(this.array, this.start, this.end, 1040);
    }

    public List<Double> asList() {
        return new b();
    }

    public boolean contains(double d10) {
        return indexOf(d10) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableDoubleArray) {
            ImmutableDoubleArray immutableDoubleArray = (ImmutableDoubleArray) obj;
            if (length() != immutableDoubleArray.length()) {
                return false;
            }
            for (int i9 = 0; i9 < length(); i9++) {
                if (!areEqual(get(i9), immutableDoubleArray.get(i9))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public void forEach(DoubleConsumer doubleConsumer) {
        o.s(doubleConsumer);
        for (int i9 = this.start; i9 < this.end; i9++) {
            doubleConsumer.accept(this.array[i9]);
        }
    }

    public double get(int i9) {
        o.q(i9, length());
        return this.array[this.start + i9];
    }

    public int hashCode() {
        int i9 = 1;
        for (int i10 = this.start; i10 < this.end; i10++) {
            i9 = (i9 * 31) + com.google.common.primitives.b.d(this.array[i10]);
        }
        return i9;
    }

    public int indexOf(double d10) {
        for (int i9 = this.start; i9 < this.end; i9++) {
            if (areEqual(this.array[i9], d10)) {
                return i9 - this.start;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.start;
    }

    public int lastIndexOf(double d10) {
        int i9 = this.end;
        while (true) {
            i9--;
            if (i9 < this.start) {
                return -1;
            }
            if (areEqual(this.array[i9], d10)) {
                return i9 - this.start;
            }
        }
    }

    public int length() {
        return this.end - this.start;
    }

    Object readResolve() {
        return isEmpty() ? EMPTY : this;
    }

    public DoubleStream stream() {
        return Arrays.stream(this.array, this.start, this.end);
    }

    public ImmutableDoubleArray subArray(int i9, int i10) {
        o.y(i9, i10, length());
        if (i9 == i10) {
            return EMPTY;
        }
        double[] dArr = this.array;
        int i11 = this.start;
        return new ImmutableDoubleArray(dArr, i9 + i11, i11 + i10);
    }

    public double[] toArray() {
        return Arrays.copyOfRange(this.array, this.start, this.end);
    }

    public String toString() {
        if (isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb2 = new StringBuilder(length() * 5);
        sb2.append('[');
        sb2.append(this.array[this.start]);
        int i9 = this.start;
        while (true) {
            i9++;
            if (i9 < this.end) {
                sb2.append(", ");
                sb2.append(this.array[i9]);
            } else {
                sb2.append(']');
                return sb2.toString();
            }
        }
    }

    public ImmutableDoubleArray trimmed() {
        return isPartialView() ? new ImmutableDoubleArray(toArray()) : this;
    }

    Object writeReplace() {
        return trimmed();
    }

    private ImmutableDoubleArray(double[] dArr) {
        this(dArr, 0, dArr.length);
    }

    public static ImmutableDoubleArray of(double d10) {
        return new ImmutableDoubleArray(new double[]{d10});
    }

    private ImmutableDoubleArray(double[] dArr, int i9, int i10) {
        this.array = dArr;
        this.start = i9;
        this.end = i10;
    }

    public static c builder() {
        return new c(10);
    }

    public static ImmutableDoubleArray of(double d10, double d11) {
        return new ImmutableDoubleArray(new double[]{d10, d11});
    }

    public static ImmutableDoubleArray copyOf(Collection<Double> collection) {
        return collection.isEmpty() ? EMPTY : new ImmutableDoubleArray(com.google.common.primitives.b.h(collection));
    }

    public static ImmutableDoubleArray of(double d10, double d11, double d12) {
        return new ImmutableDoubleArray(new double[]{d10, d11, d12});
    }

    public static ImmutableDoubleArray copyOf(Iterable<Double> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Double>) iterable);
        }
        return builder().b(iterable).d();
    }

    public static ImmutableDoubleArray of(double d10, double d11, double d12, double d13) {
        return new ImmutableDoubleArray(new double[]{d10, d11, d12, d13});
    }

    public static ImmutableDoubleArray of(double d10, double d11, double d12, double d13, double d14) {
        return new ImmutableDoubleArray(new double[]{d10, d11, d12, d13, d14});
    }

    public static ImmutableDoubleArray of(double d10, double d11, double d12, double d13, double d14, double d15) {
        return new ImmutableDoubleArray(new double[]{d10, d11, d12, d13, d14, d15});
    }

    public static ImmutableDoubleArray copyOf(DoubleStream doubleStream) {
        double[] array = doubleStream.toArray();
        return array.length == 0 ? EMPTY : new ImmutableDoubleArray(array);
    }

    public static ImmutableDoubleArray of(double d10, double... dArr) {
        o.e(dArr.length <= 2147483646, "the total number of elements must fit in an int");
        double[] dArr2 = new double[dArr.length + 1];
        dArr2[0] = d10;
        System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
        return new ImmutableDoubleArray(dArr2);
    }
}
