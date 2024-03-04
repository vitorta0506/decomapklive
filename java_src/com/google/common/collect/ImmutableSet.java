package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableSet;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    private static final int CUTOFF = 751619276;
    private static final double DESIRED_LOAD_FACTOR = 0.7d;
    static final int MAX_TABLE_SIZE = 1073741824;
    static final int SPLITERATOR_CHARACTERISTICS = 1297;

    /* loaded from: classes2.dex */
    public static class a<E> extends ImmutableCollection.a<E> {

        /* renamed from: a  reason: collision with root package name */
        private h<E> f12736a;

        /* renamed from: b  reason: collision with root package name */
        boolean f12737b;

        public a() {
            this(0);
        }

        @Override // com.google.common.collect.ImmutableCollection.a
        /* renamed from: f */
        public a<E> a(E e10) {
            Objects.requireNonNull(this.f12736a);
            com.google.common.base.o.s(e10);
            k();
            this.f12736a = this.f12736a.a(e10);
            return this;
        }

        public a<E> g(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        public ImmutableSet<E> h() {
            Objects.requireNonNull(this.f12736a);
            this.f12737b = true;
            h<E> g10 = this.f12736a.g();
            this.f12736a = g10;
            return g10.c();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a<E> i(a<E> aVar) {
            Objects.requireNonNull(this.f12736a);
            Objects.requireNonNull(aVar.f12736a);
            k();
            this.f12736a = this.f12736a.d(aVar.f12736a);
            return this;
        }

        void j() {
            Objects.requireNonNull(this.f12736a);
            this.f12736a = this.f12736a.e();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void k() {
            if (this.f12737b) {
                j();
                this.f12737b = false;
            }
        }

        a(int i9) {
            if (i9 > 0) {
                this.f12736a = new f(i9);
            } else {
                this.f12736a = c.h();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(boolean z10) {
            this.f12736a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class b<E> extends ImmutableSet<E> {
        private transient ImmutableList<E> asList;

        @Override // com.google.common.collect.ImmutableCollection
        public ImmutableList<E> asList() {
            ImmutableList<E> immutableList = this.asList;
            if (immutableList == null) {
                ImmutableList<E> createAsList = createAsList();
                this.asList = createAsList;
                return createAsList;
            }
            return immutableList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ImmutableList<E> createAsList() {
            return new g7(this, toArray());
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }
    }

    /* loaded from: classes2.dex */
    private static final class c<E> extends h<E> {

        /* renamed from: c  reason: collision with root package name */
        private static final c<Object> f12738c = new c<>();

        private c() {
            super(0);
        }

        static <E> h<E> h() {
            return f12738c;
        }

        @Override // com.google.common.collect.ImmutableSet.h
        h<E> a(E e10) {
            return new f(4).a(e10);
        }

        @Override // com.google.common.collect.ImmutableSet.h
        ImmutableSet<E> c() {
            return ImmutableSet.of();
        }

        @Override // com.google.common.collect.ImmutableSet.h
        h<E> e() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class d<E> extends b<E> {

        /* loaded from: classes2.dex */
        class a extends f4<E> {
            a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.f4
            /* renamed from: d */
            public d<E> c() {
                return d.this;
            }

            @Override // java.util.List
            public E get(int i9) {
                return (E) d.this.get(i9);
            }
        }

        @Override // com.google.common.collect.ImmutableCollection
        int copyIntoArray(Object[] objArr, int i9) {
            return asList().copyIntoArray(objArr, i9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet.b
        public ImmutableList<E> createAsList() {
            return new a();
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super E> consumer) {
            com.google.common.base.o.s(consumer);
            int size = size();
            for (int i9 = 0; i9 < size; i9++) {
                consumer.accept(get(i9));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract E get(int i9);

        @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
        public Spliterator<E> spliterator() {
            return s2.c(size(), ImmutableSet.SPLITERATOR_CHARACTERISTICS, new IntFunction() { // from class: com.google.common.collect.z4
                @Override // java.util.function.IntFunction
                public final Object apply(int i9) {
                    return ImmutableSet.d.this.get(i9);
                }
            });
        }

        @Override // com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public e9<E> iterator() {
            return asList().iterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class e<E> extends h<E> {

        /* renamed from: c  reason: collision with root package name */
        private final Set<Object> f12740c;

        e(h<E> hVar) {
            super(hVar);
            this.f12740c = w7.k(this.f12747b);
            for (int i9 = 0; i9 < this.f12747b; i9++) {
                Set<Object> set = this.f12740c;
                E e10 = this.f12746a[i9];
                Objects.requireNonNull(e10);
                set.add(e10);
            }
        }

        @Override // com.google.common.collect.ImmutableSet.h
        h<E> a(E e10) {
            com.google.common.base.o.s(e10);
            if (this.f12740c.add(e10)) {
                b(e10);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.h
        ImmutableSet<E> c() {
            int i9 = this.f12747b;
            if (i9 != 0) {
                if (i9 != 1) {
                    return new v5(this.f12740c, ImmutableList.asImmutableList(this.f12746a, this.f12747b));
                }
                E e10 = this.f12746a[0];
                Objects.requireNonNull(e10);
                return ImmutableSet.of((Object) e10);
            }
            return ImmutableSet.of();
        }

        @Override // com.google.common.collect.ImmutableSet.h
        h<E> e() {
            return new e(this);
        }
    }

    /* loaded from: classes2.dex */
    private static class g implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final Object[] f12745a;

        g(Object[] objArr) {
            this.f12745a = objArr;
        }

        Object readResolve() {
            return ImmutableSet.copyOf(this.f12745a);
        }
    }

    public static <E> a<E> builder() {
        return new a<>();
    }

    public static <E> a<E> builderWithExpectedSize(int i9) {
        p2.b(i9, "expectedSize");
        return new a<>(i9);
    }

    static int chooseTableSize(int i9) {
        int max = Math.max(i9, 2);
        if (max < CUTOFF) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (highestOneBit * DESIRED_LOAD_FACTOR < max) {
                highestOneBit <<= 1;
            }
            return highestOneBit;
        }
        com.google.common.base.o.e(max < 1073741824, "collection too large");
        return 1073741824;
    }

    private static <E> ImmutableSet<E> construct(int i9, int i10, Object... objArr) {
        if (i9 != 0) {
            int i11 = 0;
            if (i9 != 1) {
                f fVar = new f(i10);
                while (i11 < i9) {
                    i11++;
                    fVar = fVar.a(com.google.common.base.o.s(objArr[i11]));
                }
                return fVar.g().c();
            }
            return of(objArr[0]);
        }
        return of();
    }

    private static <E> ImmutableSet<E> constructUnknownDuplication(int i9, Object... objArr) {
        return construct(i9, Math.max(4, com.google.common.math.c.g(i9, RoundingMode.CEILING)), objArr);
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        } else if (collection instanceof EnumSet) {
            return copyOfEnumSet((EnumSet) collection);
        }
        Object[] array = collection.toArray();
        if (collection instanceof Set) {
            return construct(array.length, array.length, array);
        }
        return constructUnknownDuplication(array.length, array);
    }

    private static ImmutableSet copyOfEnumSet(EnumSet enumSet) {
        return j4.c(EnumSet.copyOf(enumSet));
    }

    public static <E> ImmutableSet<E> of() {
        return m7.f13257f;
    }

    public static <E> Collector<E, ?, ImmutableSet<E>> toImmutableSet() {
        return o2.V();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return w7.b(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return w7.e(this);
    }

    boolean isHashCodeFast() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract e9<E> iterator();

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new g(toArray());
    }

    public static <E> ImmutableSet<E> of(E e10) {
        return new c8(e10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class h<E> {

        /* renamed from: a  reason: collision with root package name */
        E[] f12746a;

        /* renamed from: b  reason: collision with root package name */
        int f12747b;

        h(int i9) {
            this.f12746a = (E[]) new Object[i9];
            this.f12747b = 0;
        }

        private void f(int i9) {
            E[] eArr = this.f12746a;
            if (i9 > eArr.length) {
                this.f12746a = (E[]) Arrays.copyOf(this.f12746a, ImmutableCollection.a.e(eArr.length, i9));
            }
        }

        abstract h<E> a(E e10);

        final void b(E e10) {
            f(this.f12747b + 1);
            E[] eArr = this.f12746a;
            int i9 = this.f12747b;
            this.f12747b = i9 + 1;
            eArr[i9] = e10;
        }

        abstract ImmutableSet<E> c();

        final h<E> d(h<E> hVar) {
            h<E> hVar2 = this;
            for (int i9 = 0; i9 < hVar.f12747b; i9++) {
                E e10 = hVar.f12746a[i9];
                Objects.requireNonNull(e10);
                hVar2 = hVar2.a(e10);
            }
            return hVar2;
        }

        abstract h<E> e();

        h<E> g() {
            return this;
        }

        h(h<E> hVar) {
            E[] eArr = hVar.f12746a;
            this.f12746a = (E[]) Arrays.copyOf(eArr, eArr.length);
            this.f12747b = hVar.f12747b;
        }
    }

    public static <E> ImmutableSet<E> of(E e10, E e11) {
        return construct(2, 2, e10, e11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class f<E> extends h<E> {

        /* renamed from: c  reason: collision with root package name */
        private Object[] f12741c;

        /* renamed from: d  reason: collision with root package name */
        private int f12742d;

        /* renamed from: e  reason: collision with root package name */
        private int f12743e;

        /* renamed from: f  reason: collision with root package name */
        private int f12744f;

        f(int i9) {
            super(i9);
            this.f12741c = null;
            this.f12742d = 0;
            this.f12743e = 0;
        }

        static boolean i(Object[] objArr) {
            int k10 = k(objArr.length);
            int length = objArr.length - 1;
            int i9 = 0;
            int i10 = 0;
            while (i9 < objArr.length) {
                if (i9 != i10 || objArr[i9] != null) {
                    int i11 = i9 + k10;
                    for (int i12 = i11 - 1; i12 >= i10; i12--) {
                        if (objArr[i12 & length] == null) {
                            i10 = i11;
                            i9 = i12 + 1;
                        }
                    }
                    return true;
                }
                i10 = i9 + k10;
                if (objArr[(i10 - 1) & length] != null) {
                    i10 = i9 + 1;
                }
                i9 = i10;
            }
            return false;
        }

        private h<E> j(E e10) {
            Objects.requireNonNull(this.f12741c);
            int hashCode = e10.hashCode();
            int c10 = e4.c(hashCode);
            int length = this.f12741c.length - 1;
            for (int i9 = c10; i9 - c10 < this.f12742d; i9++) {
                int i10 = i9 & length;
                Object obj = this.f12741c[i10];
                if (obj == null) {
                    b(e10);
                    this.f12741c[i10] = e10;
                    this.f12744f += hashCode;
                    h(this.f12747b);
                    return this;
                } else if (obj.equals(e10)) {
                    return this;
                }
            }
            return new e(this).a(e10);
        }

        static int k(int i9) {
            return com.google.common.math.c.e(i9, RoundingMode.UNNECESSARY) * 13;
        }

        static Object[] l(int i9, Object[] objArr, int i10) {
            int i11;
            Object[] objArr2 = new Object[i9];
            int i12 = i9 - 1;
            for (int i13 = 0; i13 < i10; i13++) {
                Object obj = objArr[i13];
                Objects.requireNonNull(obj);
                int c10 = e4.c(obj.hashCode());
                while (true) {
                    i11 = c10 & i12;
                    if (objArr2[i11] == null) {
                        break;
                    }
                    c10++;
                }
                objArr2[i11] = obj;
            }
            return objArr2;
        }

        @Override // com.google.common.collect.ImmutableSet.h
        h<E> a(E e10) {
            com.google.common.base.o.s(e10);
            if (this.f12741c == null) {
                if (this.f12747b == 0) {
                    b(e10);
                    return this;
                }
                h(this.f12746a.length);
                this.f12747b--;
                return j(this.f12746a[0]).a(e10);
            }
            return j(e10);
        }

        @Override // com.google.common.collect.ImmutableSet.h
        ImmutableSet<E> c() {
            int i9 = this.f12747b;
            if (i9 != 0) {
                if (i9 != 1) {
                    Object[] objArr = this.f12746a;
                    if (i9 != objArr.length) {
                        objArr = Arrays.copyOf(objArr, i9);
                    }
                    int i10 = this.f12744f;
                    Object[] objArr2 = this.f12741c;
                    Objects.requireNonNull(objArr2);
                    return new m7(objArr, i10, objArr2, this.f12741c.length - 1);
                }
                E e10 = this.f12746a[0];
                Objects.requireNonNull(e10);
                return ImmutableSet.of((Object) e10);
            }
            return ImmutableSet.of();
        }

        @Override // com.google.common.collect.ImmutableSet.h
        h<E> e() {
            return new f(this);
        }

        @Override // com.google.common.collect.ImmutableSet.h
        h<E> g() {
            if (this.f12741c == null) {
                return this;
            }
            int chooseTableSize = ImmutableSet.chooseTableSize(this.f12747b);
            if (chooseTableSize * 2 < this.f12741c.length) {
                this.f12741c = l(chooseTableSize, this.f12746a, this.f12747b);
                this.f12742d = k(chooseTableSize);
                this.f12743e = (int) (chooseTableSize * ImmutableSet.DESIRED_LOAD_FACTOR);
            }
            return i(this.f12741c) ? new e(this) : this;
        }

        void h(int i9) {
            int length;
            Object[] objArr = this.f12741c;
            if (objArr == null) {
                length = ImmutableSet.chooseTableSize(i9);
                this.f12741c = new Object[length];
            } else if (i9 <= this.f12743e || objArr.length >= 1073741824) {
                return;
            } else {
                length = objArr.length * 2;
                this.f12741c = l(length, this.f12746a, this.f12747b);
            }
            this.f12742d = k(length);
            this.f12743e = (int) (length * ImmutableSet.DESIRED_LOAD_FACTOR);
        }

        f(f<E> fVar) {
            super(fVar);
            Object[] objArr = fVar.f12741c;
            this.f12741c = objArr == null ? null : (Object[]) objArr.clone();
            this.f12742d = fVar.f12742d;
            this.f12743e = fVar.f12743e;
            this.f12744f = fVar.f12744f;
        }
    }

    public static <E> ImmutableSet<E> of(E e10, E e11, E e12) {
        return construct(3, 3, e10, e11, e12);
    }

    public static <E> ImmutableSet<E> of(E e10, E e11, E e12, E e13) {
        return construct(4, 4, e10, e11, e12, e13);
    }

    public static <E> ImmutableSet<E> of(E e10, E e11, E e12, E e13, E e14) {
        return construct(5, 5, e10, e11, e12, e13, e14);
    }

    @SafeVarargs
    public static <E> ImmutableSet<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        com.google.common.base.o.e(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e10;
        objArr[1] = e11;
        objArr[2] = e12;
        objArr[3] = e13;
        objArr[4] = e14;
        objArr[5] = e15;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return construct(length, length, objArr);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new a().a(next).g(it).h();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length != 0) {
            if (length != 1) {
                return constructUnknownDuplication(eArr.length, (Object[]) eArr.clone());
            }
            return of((Object) eArr[0]);
        }
        return of();
    }
}
