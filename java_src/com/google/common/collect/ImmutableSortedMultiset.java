package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.q6;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public abstract class ImmutableSortedMultiset<E> extends i5<E> implements h8<E> {
    transient ImmutableSortedMultiset<E> descendingMultiset;

    /* loaded from: classes2.dex */
    public static class a<E> extends ImmutableMultiset.b<E> {
        public a(Comparator<? super E> comparator) {
            super(TreeMultiset.create((Comparator) com.google.common.base.o.s(comparator)));
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* renamed from: k */
        public a<E> f(E e10) {
            super.a(e10);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* renamed from: l */
        public a<E> g(E... eArr) {
            super.g(eArr);
            return this;
        }

        public a<E> m(Iterator<? extends E> it) {
            super.h(it);
            return this;
        }

        public a<E> n(E e10, int i9) {
            super.i(e10, i9);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* renamed from: o */
        public ImmutableSortedMultiset<E> j() {
            return ImmutableSortedMultiset.copyOfSorted((h8) this.f12700a);
        }
    }

    /* loaded from: classes2.dex */
    private static final class b<E> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super E> f12755a;

        /* renamed from: b  reason: collision with root package name */
        final E[] f12756b;

        /* renamed from: c  reason: collision with root package name */
        final int[] f12757c;

        b(h8<E> h8Var) {
            this.f12755a = h8Var.comparator();
            int size = h8Var.entrySet().size();
            this.f12756b = (E[]) new Object[size];
            this.f12757c = new int[size];
            int i9 = 0;
            for (q6.a<E> aVar : h8Var.entrySet()) {
                this.f12756b[i9] = aVar.a();
                this.f12757c[i9] = aVar.getCount();
                i9++;
            }
        }

        Object readResolve() {
            int length = this.f12756b.length;
            a aVar = new a(this.f12755a);
            for (int i9 = 0; i9 < length; i9++) {
                aVar.n(this.f12756b[i9], this.f12757c[i9]);
            }
            return aVar.j();
        }
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset copyOf(Comparable[] comparableArr) {
        return copyOf(y6.e(), Arrays.asList(comparableArr));
    }

    public static <E> ImmutableSortedMultiset<E> copyOfSorted(h8<E> h8Var) {
        return copyOfSortedEntries(h8Var.comparator(), z5.h(h8Var.entrySet()));
    }

    private static <E> ImmutableSortedMultiset<E> copyOfSortedEntries(Comparator<? super E> comparator, Collection<q6.a<E>> collection) {
        if (collection.isEmpty()) {
            return emptyMultiset(comparator);
        }
        ImmutableList.b bVar = new ImmutableList.b(collection.size());
        long[] jArr = new long[collection.size() + 1];
        int i9 = 0;
        for (q6.a<E> aVar : collection) {
            bVar.a(aVar.a());
            int i10 = i9 + 1;
            jArr[i10] = jArr[i9] + aVar.getCount();
            i9 = i10;
        }
        return new n7(new o7(bVar.j(), comparator), jArr, 0, collection.size());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableSortedMultiset<E> emptyMultiset(Comparator<? super E> comparator) {
        if (y6.e().equals(comparator)) {
            return (ImmutableSortedMultiset<E>) n7.f13281f;
        }
        return new n7(comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$toImmutableSortedMultiset$0(Object obj) {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$toImmutableSortedMultiset$2(Function function, ToIntFunction toIntFunction, q6 q6Var, Object obj) {
        q6Var.add(com.google.common.base.o.s(function.apply(obj)), toIntFunction.applyAsInt(obj));
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.common.collect.q6 lambda$toImmutableSortedMultiset$3(com.google.common.collect.q6 r0, com.google.common.collect.q6 r1) {
        /*
            r0.addAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$3(com.google.common.collect.q6, com.google.common.collect.q6):com.google.common.collect.q6");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImmutableSortedMultiset lambda$toImmutableSortedMultiset$4(Comparator comparator, q6 q6Var) {
        return copyOfSortedEntries(comparator, q6Var.entrySet());
    }

    public static <E extends Comparable<?>> a<E> naturalOrder() {
        return new a<>(y6.e());
    }

    public static <E> ImmutableSortedMultiset<E> of() {
        return (ImmutableSortedMultiset<E>) n7.f13281f;
    }

    public static <E> a<E> orderedBy(Comparator<E> comparator) {
        return new a<>(comparator);
    }

    public static <E extends Comparable<?>> a<E> reverseOrder() {
        return new a<>(y6.e().h());
    }

    public static <E> Collector<E, ?, ImmutableSortedMultiset<E>> toImmutableSortedMultiset(Comparator<? super E> comparator) {
        return toImmutableSortedMultiset(comparator, Function.identity(), new ToIntFunction() { // from class: com.google.common.collect.h5
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int lambda$toImmutableSortedMultiset$0;
                lambda$toImmutableSortedMultiset$0 = ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$0(obj);
                return lambda$toImmutableSortedMultiset$0;
            }
        });
    }

    @Override // com.google.common.collect.h8, com.google.common.collect.e8
    public final Comparator<? super E> comparator() {
        return elementSet().comparator();
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public abstract /* synthetic */ int count(Object obj);

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public abstract ImmutableSortedSet<E> elementSet();

    @Override // com.google.common.collect.h8
    public abstract /* synthetic */ q6.a<E> firstEntry();

    @Override // com.google.common.collect.ImmutableMultiset, java.lang.Iterable
    public /* bridge */ /* synthetic */ void forEach(Consumer consumer) {
        p6.a(this, consumer);
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ void forEachEntry(ObjIntConsumer objIntConsumer) {
        p6.b(this, objIntConsumer);
    }

    @Override // com.google.common.collect.h8
    public abstract ImmutableSortedMultiset<E> headMultiset(E e10, BoundType boundType);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h8
    public /* bridge */ /* synthetic */ h8 headMultiset(Object obj, BoundType boundType) {
        return headMultiset((ImmutableSortedMultiset<E>) obj, boundType);
    }

    @Override // com.google.common.collect.h8
    public abstract /* synthetic */ q6.a<E> lastEntry();

    @Override // com.google.common.collect.h8
    @Deprecated
    public final q6.a<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.h8
    @Deprecated
    public final q6.a<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h8
    public /* bridge */ /* synthetic */ h8 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return subMultiset((BoundType) obj, boundType, (BoundType) obj2, boundType2);
    }

    @Override // com.google.common.collect.h8
    public abstract ImmutableSortedMultiset<E> tailMultiset(E e10, BoundType boundType);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h8
    public /* bridge */ /* synthetic */ h8 tailMultiset(Object obj, BoundType boundType) {
        return tailMultiset((ImmutableSortedMultiset<E>) obj, boundType);
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new b(this);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(y6.e(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable) {
        return new n7((o7) ImmutableSortedSet.of(comparable), new long[]{0, 1}, 0, 1);
    }

    public static <T, E> Collector<T, ?, ImmutableSortedMultiset<E>> toImmutableSortedMultiset(final Comparator<? super E> comparator, final Function<? super T, ? extends E> function, final ToIntFunction<? super T> toIntFunction) {
        com.google.common.base.o.s(comparator);
        com.google.common.base.o.s(function);
        com.google.common.base.o.s(toIntFunction);
        return Collector.of(new Supplier() { // from class: com.google.common.collect.g5
            @Override // java.util.function.Supplier
            public final Object get() {
                q6 create;
                create = TreeMultiset.create(comparator);
                return create;
            }
        }, new BiConsumer() { // from class: com.google.common.collect.d5
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$2(function, toIntFunction, (q6) obj, obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.collect.e5
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$3((q6) obj, (q6) obj2);
            }
        }, new Function() { // from class: com.google.common.collect.f5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ImmutableSortedMultiset lambda$toImmutableSortedMultiset$4;
                lambda$toImmutableSortedMultiset$4 = ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$4(comparator, (q6) obj);
                return lambda$toImmutableSortedMultiset$4;
            }
        }, new Collector.Characteristics[0]);
    }

    @Override // com.google.common.collect.h8
    public ImmutableSortedMultiset<E> descendingMultiset() {
        ImmutableSortedMultiset<E> immutableSortedMultiset = this.descendingMultiset;
        if (immutableSortedMultiset == null) {
            if (isEmpty()) {
                immutableSortedMultiset = emptyMultiset(y6.a(comparator()).h());
            } else {
                immutableSortedMultiset = new i3<>(this);
            }
            this.descendingMultiset = immutableSortedMultiset;
        }
        return immutableSortedMultiset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h8
    public ImmutableSortedMultiset<E> subMultiset(E e10, BoundType boundType, E e11, BoundType boundType2) {
        com.google.common.base.o.n(comparator().compare(e10, e11) <= 0, "Expected lowerBound <= upperBound but %s > %s", e10, e11);
        return tailMultiset((ImmutableSortedMultiset<E>) e10, boundType).headMultiset((ImmutableSortedMultiset<E>) e11, boundType2);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> it) {
        return copyOf(y6.e(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2) {
        return copyOf(y6.e(), Arrays.asList(comparable, comparable2));
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        com.google.common.base.o.s(comparator);
        return new a(comparator).m(it).j();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return copyOf(y6.e(), Arrays.asList(comparable, comparable2, comparable3));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return copyOf(y6.e(), Arrays.asList(comparable, comparable2, comparable3, comparable4));
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableSortedMultiset) {
            ImmutableSortedMultiset<E> immutableSortedMultiset = (ImmutableSortedMultiset) iterable;
            if (comparator.equals(immutableSortedMultiset.comparator())) {
                return immutableSortedMultiset.isPartialView() ? copyOfSortedEntries(comparator, immutableSortedMultiset.entrySet().asList()) : immutableSortedMultiset;
            }
        }
        ArrayList h10 = z5.h(iterable);
        TreeMultiset create = TreeMultiset.create((Comparator) com.google.common.base.o.s(comparator));
        n5.a(create, h10);
        return copyOfSortedEntries(comparator, create.entrySet());
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return copyOf(y6.e(), Arrays.asList(comparable, comparable2, comparable3, comparable4, comparable5));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        ArrayList k10 = z5.k(comparableArr.length + 6);
        Collections.addAll(k10, comparable, comparable2, comparable3, comparable4, comparable5, comparable6);
        Collections.addAll(k10, comparableArr);
        return copyOf(y6.e(), k10);
    }
}
