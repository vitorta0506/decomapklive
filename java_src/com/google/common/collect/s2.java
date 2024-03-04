package com.google.common.collect;

import com.google.common.collect.s2;
import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.IntStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s2 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [OutElementT] */
    /* loaded from: classes2.dex */
    public class a<OutElementT> implements Spliterator<OutElementT> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Spliterator f13391a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function f13392b;

        a(Spliterator spliterator, Function function) {
            this.f13391a = spliterator;
            this.f13392b = function;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(Consumer consumer, Function function, Object obj) {
            consumer.accept(function.apply(obj));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d(Consumer consumer, Function function, Object obj) {
            consumer.accept(function.apply(obj));
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.f13391a.characteristics() & (-262);
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.f13391a.estimateSize();
        }

        @Override // java.util.Spliterator
        public void forEachRemaining(final Consumer<? super OutElementT> consumer) {
            Spliterator spliterator = this.f13391a;
            final Function function = this.f13392b;
            spliterator.forEachRemaining(new Consumer() { // from class: com.google.common.collect.q2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    s2.a.c(consumer, function, obj);
                }
            });
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(final Consumer<? super OutElementT> consumer) {
            Spliterator spliterator = this.f13391a;
            final Function function = this.f13392b;
            return spliterator.tryAdvance(new Consumer() { // from class: com.google.common.collect.r2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    s2.a.d(consumer, function, obj);
                }
            });
        }

        @Override // java.util.Spliterator
        public Spliterator<OutElementT> trySplit() {
            Spliterator trySplit = this.f13391a.trySplit();
            if (trySplit != null) {
                return s2.e(trySplit, this.f13392b);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    public class b<T> implements Spliterator<T>, Consumer<T> {

        /* renamed from: a  reason: collision with root package name */
        T f13393a = null;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Spliterator f13394b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Predicate f13395c;

        b(Spliterator spliterator, Predicate predicate) {
            this.f13394b = spliterator;
            this.f13395c = predicate;
        }

        @Override // java.util.function.Consumer
        public void accept(T t10) {
            this.f13393a = t10;
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.f13394b.characteristics() & 277;
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.f13394b.estimateSize() / 2;
        }

        @Override // java.util.Spliterator
        public Comparator<? super T> getComparator() {
            return this.f13394b.getComparator();
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super T> consumer) {
            while (this.f13394b.tryAdvance(this)) {
                try {
                    Object obj = (Object) w6.a(this.f13393a);
                    if (this.f13395c.test(obj)) {
                        consumer.accept(obj);
                        return true;
                    }
                } finally {
                    this.f13393a = null;
                }
            }
            return false;
        }

        @Override // java.util.Spliterator
        public Spliterator<T> trySplit() {
            Spliterator<T> trySplit = this.f13394b.trySplit();
            if (trySplit == null) {
                return null;
            }
            return s2.a(trySplit, this.f13395c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    public class c<T> implements Spliterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Spliterator.OfInt f13396a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ IntFunction f13397b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f13398c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Comparator f13399d;

        c(Spliterator.OfInt ofInt, IntFunction intFunction, int i9, Comparator comparator) {
            this.f13397b = intFunction;
            this.f13398c = i9;
            this.f13399d = comparator;
            this.f13396a = ofInt;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void c(Consumer consumer, IntFunction intFunction, int i9) {
            consumer.accept(intFunction.apply(i9));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void d(Consumer consumer, IntFunction intFunction, int i9) {
            consumer.accept(intFunction.apply(i9));
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.f13398c | 16464;
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.f13396a.estimateSize();
        }

        @Override // java.util.Spliterator
        public void forEachRemaining(final Consumer<? super T> consumer) {
            Spliterator.OfInt ofInt = this.f13396a;
            final IntFunction intFunction = this.f13397b;
            ofInt.forEachRemaining(new IntConsumer() { // from class: com.google.common.collect.u2
                @Override // java.util.function.IntConsumer
                public final void accept(int i9) {
                    s2.c.c(consumer, intFunction, i9);
                }
            });
        }

        @Override // java.util.Spliterator
        public Comparator<? super T> getComparator() {
            if (hasCharacteristics(4)) {
                return this.f13399d;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(final Consumer<? super T> consumer) {
            Spliterator.OfInt ofInt = this.f13396a;
            final IntFunction intFunction = this.f13397b;
            return ofInt.tryAdvance(new IntConsumer() { // from class: com.google.common.collect.t2
                @Override // java.util.function.IntConsumer
                public final void accept(int i9) {
                    s2.c.d(consumer, intFunction, i9);
                }
            });
        }

        @Override // java.util.Spliterator
        public Spliterator<T> trySplit() {
            Spliterator.OfInt trySplit = this.f13396a.trySplit();
            if (trySplit == null) {
                return null;
            }
            return new c(trySplit, this.f13397b, this.f13398c, this.f13399d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class d<InElementT, OutElementT, OutSpliteratorT extends Spliterator<OutElementT>> implements Spliterator<OutElementT> {

        /* renamed from: a  reason: collision with root package name */
        OutSpliteratorT f13400a;

        /* renamed from: b  reason: collision with root package name */
        final Spliterator<InElementT> f13401b;

        /* renamed from: c  reason: collision with root package name */
        final Function<? super InElementT, OutSpliteratorT> f13402c;

        /* renamed from: d  reason: collision with root package name */
        final a<InElementT, OutSpliteratorT> f13403d;

        /* renamed from: e  reason: collision with root package name */
        int f13404e;

        /* renamed from: f  reason: collision with root package name */
        long f13405f;

        @FunctionalInterface
        /* loaded from: classes2.dex */
        interface a<InElementT, OutSpliteratorT extends Spliterator<?>> {
            OutSpliteratorT a(OutSpliteratorT outspliteratort, Spliterator<InElementT> spliterator, Function<? super InElementT, OutSpliteratorT> function, int i9, long j10);
        }

        d(OutSpliteratorT outspliteratort, Spliterator<InElementT> spliterator, Function<? super InElementT, OutSpliteratorT> function, a<InElementT, OutSpliteratorT> aVar, int i9, long j10) {
            this.f13400a = outspliteratort;
            this.f13401b = spliterator;
            this.f13402c = function;
            this.f13403d = aVar;
            this.f13404e = i9;
            this.f13405f = j10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Consumer consumer, Object obj) {
            OutSpliteratorT apply = this.f13402c.apply(obj);
            if (apply != null) {
                apply.forEachRemaining(consumer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Object obj) {
            this.f13400a = this.f13402c.apply(obj);
        }

        @Override // java.util.Spliterator
        public final int characteristics() {
            return this.f13404e;
        }

        @Override // java.util.Spliterator
        public final long estimateSize() {
            OutSpliteratorT outspliteratort = this.f13400a;
            if (outspliteratort != null) {
                this.f13405f = Math.max(this.f13405f, outspliteratort.estimateSize());
            }
            return Math.max(this.f13405f, 0L);
        }

        @Override // java.util.Spliterator
        public final void forEachRemaining(final Consumer<? super OutElementT> consumer) {
            OutSpliteratorT outspliteratort = this.f13400a;
            if (outspliteratort != null) {
                outspliteratort.forEachRemaining(consumer);
                this.f13400a = null;
            }
            this.f13401b.forEachRemaining(new Consumer() { // from class: com.google.common.collect.w2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    s2.d.this.c(consumer, obj);
                }
            });
            this.f13405f = 0L;
        }

        @Override // java.util.Spliterator
        public final boolean tryAdvance(Consumer<? super OutElementT> consumer) {
            do {
                OutSpliteratorT outspliteratort = this.f13400a;
                if (outspliteratort != null && outspliteratort.tryAdvance(consumer)) {
                    long j10 = this.f13405f;
                    if (j10 != Long.MAX_VALUE) {
                        this.f13405f = j10 - 1;
                        return true;
                    }
                    return true;
                }
                this.f13400a = null;
            } while (this.f13401b.tryAdvance(new Consumer() { // from class: com.google.common.collect.v2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    s2.d.this.d(obj);
                }
            }));
            return false;
        }

        @Override // java.util.Spliterator
        public final OutSpliteratorT trySplit() {
            Spliterator<InElementT> trySplit = this.f13401b.trySplit();
            if (trySplit != null) {
                int i9 = this.f13404e & (-65);
                long estimateSize = estimateSize();
                if (estimateSize < Long.MAX_VALUE) {
                    estimateSize /= 2;
                    this.f13405f -= estimateSize;
                    this.f13404e = i9;
                }
                OutSpliteratorT a10 = this.f13403d.a(this.f13400a, trySplit, this.f13402c, i9, estimateSize);
                this.f13400a = null;
                return a10;
            }
            OutSpliteratorT outspliteratort = this.f13400a;
            if (outspliteratort != null) {
                this.f13400a = null;
                return outspliteratort;
            }
            return null;
        }
    }

    /* loaded from: classes2.dex */
    static final class e<InElementT, OutElementT> extends d<InElementT, OutElementT, Spliterator<OutElementT>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public e(Spliterator<OutElementT> spliterator, Spliterator<InElementT> spliterator2, Function<? super InElementT, Spliterator<OutElementT>> function, int i9, long j10) {
            super(spliterator, spliterator2, function, new d.a() { // from class: com.google.common.collect.x2
                @Override // com.google.common.collect.s2.d.a
                public final Spliterator a(Spliterator spliterator3, Spliterator spliterator4, Function function2, int i10, long j11) {
                    return new s2.e(spliterator3, spliterator4, function2, i10, j11);
                }
            }, i9, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Spliterator<T> a(Spliterator<T> spliterator, Predicate<? super T> predicate) {
        com.google.common.base.o.s(spliterator);
        com.google.common.base.o.s(predicate);
        return new b(spliterator, predicate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <InElementT, OutElementT> Spliterator<OutElementT> b(Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator<OutElementT>> function, int i9, long j10) {
        com.google.common.base.o.e((i9 & 16384) == 0, "flatMap does not support SUBSIZED characteristic");
        com.google.common.base.o.e((i9 & 4) == 0, "flatMap does not support SORTED characteristic");
        com.google.common.base.o.s(spliterator);
        com.google.common.base.o.s(function);
        return new e(null, spliterator, function, i9, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Spliterator<T> c(int i9, int i10, IntFunction<T> intFunction) {
        return d(i9, i10, intFunction, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Spliterator<T> d(int i9, int i10, IntFunction<T> intFunction, Comparator<? super T> comparator) {
        if (comparator != null) {
            com.google.common.base.o.d((i10 & 4) != 0);
        }
        return new c(IntStream.range(0, i9).spliterator(), intFunction, i10, comparator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <InElementT, OutElementT> Spliterator<OutElementT> e(Spliterator<InElementT> spliterator, Function<? super InElementT, ? extends OutElementT> function) {
        com.google.common.base.o.s(spliterator);
        com.google.common.base.o.s(function);
        return new a(spliterator, function);
    }
}
