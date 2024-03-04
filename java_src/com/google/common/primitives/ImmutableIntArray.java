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
import java.util.function.IntConsumer;
import java.util.stream.IntStream;
import okhttp3.HttpUrl;
/* loaded from: classes2.dex */
public final class ImmutableIntArray implements Serializable {
    private static final ImmutableIntArray EMPTY = new ImmutableIntArray(new int[0]);
    private final int[] array;
    private final int end;
    private final transient int start;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends AbstractList<Integer> implements RandomAccess, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableIntArray f13625a;

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: c */
        public Integer get(int i9) {
            return Integer.valueOf(this.f13625a.get(i9));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f13625a.equals(((b) obj).f13625a);
            }
            if (obj instanceof List) {
                List list = (List) obj;
                if (size() != list.size()) {
                    return false;
                }
                int i9 = this.f13625a.start;
                for (Object obj2 : list) {
                    if (obj2 instanceof Integer) {
                        int i10 = i9 + 1;
                        if (this.f13625a.array[i9] == ((Integer) obj2).intValue()) {
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
            return this.f13625a.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (obj instanceof Integer) {
                return this.f13625a.indexOf(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                return this.f13625a.lastIndexOf(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13625a.length();
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        public Spliterator<Integer> spliterator() {
            return this.f13625a.spliterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i9, int i10) {
            return this.f13625a.subArray(i9, i10).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.f13625a.toString();
        }

        private b(ImmutableIntArray immutableIntArray) {
            this.f13625a = immutableIntArray;
        }
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private int[] f13626a;

        /* renamed from: b  reason: collision with root package name */
        private int f13627b = 0;

        c(int i9) {
            this.f13626a = new int[i9];
        }

        private void e(int i9) {
            int i10 = this.f13627b + i9;
            int[] iArr = this.f13626a;
            if (i10 > iArr.length) {
                this.f13626a = Arrays.copyOf(iArr, f(iArr.length, i10));
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

        public c a(int i9) {
            e(1);
            int[] iArr = this.f13626a;
            int i10 = this.f13627b;
            iArr[i10] = i9;
            this.f13627b = i10 + 1;
            return this;
        }

        public c b(Iterable<Integer> iterable) {
            if (iterable instanceof Collection) {
                return c((Collection) iterable);
            }
            for (Integer num : iterable) {
                a(num.intValue());
            }
            return this;
        }

        public c c(Collection<Integer> collection) {
            e(collection.size());
            for (Integer num : collection) {
                int[] iArr = this.f13626a;
                int i9 = this.f13627b;
                this.f13627b = i9 + 1;
                iArr[i9] = num.intValue();
            }
            return this;
        }

        public ImmutableIntArray d() {
            return this.f13627b == 0 ? ImmutableIntArray.EMPTY : new ImmutableIntArray(this.f13626a, 0, this.f13627b);
        }
    }

    public static c builder(int i9) {
        o.h(i9 >= 0, "Invalid initialCapacity: %s", i9);
        return new c(i9);
    }

    public static ImmutableIntArray copyOf(int[] iArr) {
        return iArr.length == 0 ? EMPTY : new ImmutableIntArray(Arrays.copyOf(iArr, iArr.length));
    }

    private boolean isPartialView() {
        return this.start > 0 || this.end < this.array.length;
    }

    public static ImmutableIntArray of() {
        return EMPTY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Spliterator.OfInt spliterator() {
        return Spliterators.spliterator(this.array, this.start, this.end, 1040);
    }

    public List<Integer> asList() {
        return new b();
    }

    public boolean contains(int i9) {
        return indexOf(i9) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableIntArray) {
            ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
            if (length() != immutableIntArray.length()) {
                return false;
            }
            for (int i9 = 0; i9 < length(); i9++) {
                if (get(i9) != immutableIntArray.get(i9)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public void forEach(IntConsumer intConsumer) {
        o.s(intConsumer);
        for (int i9 = this.start; i9 < this.end; i9++) {
            intConsumer.accept(this.array[i9]);
        }
    }

    public int get(int i9) {
        o.q(i9, length());
        return this.array[this.start + i9];
    }

    public int hashCode() {
        int i9 = 1;
        for (int i10 = this.start; i10 < this.end; i10++) {
            i9 = (i9 * 31) + f.f(this.array[i10]);
        }
        return i9;
    }

    public int indexOf(int i9) {
        for (int i10 = this.start; i10 < this.end; i10++) {
            if (this.array[i10] == i9) {
                return i10 - this.start;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.start;
    }

    public int lastIndexOf(int i9) {
        int i10 = this.end;
        while (true) {
            i10--;
            int i11 = this.start;
            if (i10 < i11) {
                return -1;
            }
            if (this.array[i10] == i9) {
                return i10 - i11;
            }
        }
    }

    public int length() {
        return this.end - this.start;
    }

    Object readResolve() {
        return isEmpty() ? EMPTY : this;
    }

    public IntStream stream() {
        return Arrays.stream(this.array, this.start, this.end);
    }

    public ImmutableIntArray subArray(int i9, int i10) {
        o.y(i9, i10, length());
        if (i9 == i10) {
            return EMPTY;
        }
        int[] iArr = this.array;
        int i11 = this.start;
        return new ImmutableIntArray(iArr, i9 + i11, i11 + i10);
    }

    public int[] toArray() {
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

    public ImmutableIntArray trimmed() {
        return isPartialView() ? new ImmutableIntArray(toArray()) : this;
    }

    Object writeReplace() {
        return trimmed();
    }

    private ImmutableIntArray(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    public static ImmutableIntArray copyOf(Collection<Integer> collection) {
        return collection.isEmpty() ? EMPTY : new ImmutableIntArray(f.j(collection));
    }

    public static ImmutableIntArray of(int i9) {
        return new ImmutableIntArray(new int[]{i9});
    }

    private ImmutableIntArray(int[] iArr, int i9, int i10) {
        this.array = iArr;
        this.start = i9;
        this.end = i10;
    }

    public static c builder() {
        return new c(10);
    }

    public static ImmutableIntArray copyOf(Iterable<Integer> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Integer>) iterable);
        }
        return builder().b(iterable).d();
    }

    public static ImmutableIntArray of(int i9, int i10) {
        return new ImmutableIntArray(new int[]{i9, i10});
    }

    public static ImmutableIntArray of(int i9, int i10, int i11) {
        return new ImmutableIntArray(new int[]{i9, i10, i11});
    }

    public static ImmutableIntArray of(int i9, int i10, int i11, int i12) {
        return new ImmutableIntArray(new int[]{i9, i10, i11, i12});
    }

    public static ImmutableIntArray copyOf(IntStream intStream) {
        int[] array = intStream.toArray();
        return array.length == 0 ? EMPTY : new ImmutableIntArray(array);
    }

    public static ImmutableIntArray of(int i9, int i10, int i11, int i12, int i13) {
        return new ImmutableIntArray(new int[]{i9, i10, i11, i12, i13});
    }

    public static ImmutableIntArray of(int i9, int i10, int i11, int i12, int i13, int i14) {
        return new ImmutableIntArray(new int[]{i9, i10, i11, i12, i13, i14});
    }

    public static ImmutableIntArray of(int i9, int... iArr) {
        o.e(iArr.length <= 2147483646, "the total number of elements must fit in an int");
        int[] iArr2 = new int[iArr.length + 1];
        iArr2[0] = i9;
        System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
        return new ImmutableIntArray(iArr2);
    }
}
