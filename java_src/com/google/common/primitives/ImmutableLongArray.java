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
import java.util.function.LongConsumer;
import java.util.stream.LongStream;
import okhttp3.HttpUrl;
/* loaded from: classes2.dex */
public final class ImmutableLongArray implements Serializable {
    private static final ImmutableLongArray EMPTY = new ImmutableLongArray(new long[0]);
    private final long[] array;
    private final int end;
    private final transient int start;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends AbstractList<Long> implements RandomAccess, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableLongArray f13628a;

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: c */
        public Long get(int i9) {
            return Long.valueOf(this.f13628a.get(i9));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f13628a.equals(((b) obj).f13628a);
            }
            if (obj instanceof List) {
                List list = (List) obj;
                if (size() != list.size()) {
                    return false;
                }
                int i9 = this.f13628a.start;
                for (Object obj2 : list) {
                    if (obj2 instanceof Long) {
                        int i10 = i9 + 1;
                        if (this.f13628a.array[i9] == ((Long) obj2).longValue()) {
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
            return this.f13628a.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (obj instanceof Long) {
                return this.f13628a.indexOf(((Long) obj).longValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Long) {
                return this.f13628a.lastIndexOf(((Long) obj).longValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13628a.length();
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        public Spliterator<Long> spliterator() {
            return this.f13628a.spliterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i9, int i10) {
            return this.f13628a.subArray(i9, i10).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.f13628a.toString();
        }

        private b(ImmutableLongArray immutableLongArray) {
            this.f13628a = immutableLongArray;
        }
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private long[] f13629a;

        /* renamed from: b  reason: collision with root package name */
        private int f13630b = 0;

        c(int i9) {
            this.f13629a = new long[i9];
        }

        private void e(int i9) {
            int i10 = this.f13630b + i9;
            long[] jArr = this.f13629a;
            if (i10 > jArr.length) {
                this.f13629a = Arrays.copyOf(jArr, f(jArr.length, i10));
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

        public c a(long j10) {
            e(1);
            long[] jArr = this.f13629a;
            int i9 = this.f13630b;
            jArr[i9] = j10;
            this.f13630b = i9 + 1;
            return this;
        }

        public c b(Iterable<Long> iterable) {
            if (iterable instanceof Collection) {
                return c((Collection) iterable);
            }
            for (Long l10 : iterable) {
                a(l10.longValue());
            }
            return this;
        }

        public c c(Collection<Long> collection) {
            e(collection.size());
            for (Long l10 : collection) {
                long[] jArr = this.f13629a;
                int i9 = this.f13630b;
                this.f13630b = i9 + 1;
                jArr[i9] = l10.longValue();
            }
            return this;
        }

        public ImmutableLongArray d() {
            return this.f13630b == 0 ? ImmutableLongArray.EMPTY : new ImmutableLongArray(this.f13629a, 0, this.f13630b);
        }
    }

    public static c builder(int i9) {
        o.h(i9 >= 0, "Invalid initialCapacity: %s", i9);
        return new c(i9);
    }

    public static ImmutableLongArray copyOf(long[] jArr) {
        if (jArr.length == 0) {
            return EMPTY;
        }
        return new ImmutableLongArray(Arrays.copyOf(jArr, jArr.length));
    }

    private boolean isPartialView() {
        return this.start > 0 || this.end < this.array.length;
    }

    public static ImmutableLongArray of() {
        return EMPTY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Spliterator.OfLong spliterator() {
        return Spliterators.spliterator(this.array, this.start, this.end, 1040);
    }

    public List<Long> asList() {
        return new b();
    }

    public boolean contains(long j10) {
        return indexOf(j10) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableLongArray) {
            ImmutableLongArray immutableLongArray = (ImmutableLongArray) obj;
            if (length() != immutableLongArray.length()) {
                return false;
            }
            for (int i9 = 0; i9 < length(); i9++) {
                if (get(i9) != immutableLongArray.get(i9)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public void forEach(LongConsumer longConsumer) {
        o.s(longConsumer);
        for (int i9 = this.start; i9 < this.end; i9++) {
            longConsumer.accept(this.array[i9]);
        }
    }

    public long get(int i9) {
        o.q(i9, length());
        return this.array[this.start + i9];
    }

    public int hashCode() {
        int i9 = 1;
        for (int i10 = this.start; i10 < this.end; i10++) {
            i9 = (i9 * 31) + h.e(this.array[i10]);
        }
        return i9;
    }

    public int indexOf(long j10) {
        for (int i9 = this.start; i9 < this.end; i9++) {
            if (this.array[i9] == j10) {
                return i9 - this.start;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.start;
    }

    public int lastIndexOf(long j10) {
        int i9 = this.end;
        while (true) {
            i9--;
            int i10 = this.start;
            if (i9 < i10) {
                return -1;
            }
            if (this.array[i9] == j10) {
                return i9 - i10;
            }
        }
    }

    public int length() {
        return this.end - this.start;
    }

    Object readResolve() {
        return isEmpty() ? EMPTY : this;
    }

    public LongStream stream() {
        return Arrays.stream(this.array, this.start, this.end);
    }

    public ImmutableLongArray subArray(int i9, int i10) {
        o.y(i9, i10, length());
        if (i9 == i10) {
            return EMPTY;
        }
        long[] jArr = this.array;
        int i11 = this.start;
        return new ImmutableLongArray(jArr, i9 + i11, i11 + i10);
    }

    public long[] toArray() {
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

    public ImmutableLongArray trimmed() {
        return isPartialView() ? new ImmutableLongArray(toArray()) : this;
    }

    Object writeReplace() {
        return trimmed();
    }

    private ImmutableLongArray(long[] jArr) {
        this(jArr, 0, jArr.length);
    }

    public static ImmutableLongArray of(long j10) {
        return new ImmutableLongArray(new long[]{j10});
    }

    private ImmutableLongArray(long[] jArr, int i9, int i10) {
        this.array = jArr;
        this.start = i9;
        this.end = i10;
    }

    public static c builder() {
        return new c(10);
    }

    public static ImmutableLongArray of(long j10, long j11) {
        return new ImmutableLongArray(new long[]{j10, j11});
    }

    public static ImmutableLongArray copyOf(Collection<Long> collection) {
        return collection.isEmpty() ? EMPTY : new ImmutableLongArray(h.i(collection));
    }

    public static ImmutableLongArray of(long j10, long j11, long j12) {
        return new ImmutableLongArray(new long[]{j10, j11, j12});
    }

    public static ImmutableLongArray copyOf(Iterable<Long> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Long>) iterable);
        }
        return builder().b(iterable).d();
    }

    public static ImmutableLongArray of(long j10, long j11, long j12, long j13) {
        return new ImmutableLongArray(new long[]{j10, j11, j12, j13});
    }

    public static ImmutableLongArray of(long j10, long j11, long j12, long j13, long j14) {
        return new ImmutableLongArray(new long[]{j10, j11, j12, j13, j14});
    }

    public static ImmutableLongArray of(long j10, long j11, long j12, long j13, long j14, long j15) {
        return new ImmutableLongArray(new long[]{j10, j11, j12, j13, j14, j15});
    }

    public static ImmutableLongArray copyOf(LongStream longStream) {
        long[] array = longStream.toArray();
        return array.length == 0 ? EMPTY : new ImmutableLongArray(array);
    }

    public static ImmutableLongArray of(long j10, long... jArr) {
        o.e(jArr.length <= 2147483646, "the total number of elements must fit in an int");
        long[] jArr2 = new long[jArr.length + 1];
        jArr2[0] = j10;
        System.arraycopy(jArr, 0, jArr2, 1, jArr.length);
        return new ImmutableLongArray(jArr2);
    }
}
