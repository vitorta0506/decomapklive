package com.google.common.collect;

import com.google.common.collect.n5;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Spliterator;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class n5 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    class a<T> extends p3<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f13271b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.q f13272c;

        a(Iterable iterable, com.google.common.base.q qVar) {
            this.f13271b = iterable;
            this.f13272c = qVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void x(com.google.common.base.q qVar, Consumer consumer, Object obj) {
            if (qVar.test(obj)) {
                consumer.accept(obj);
            }
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super T> consumer) {
            com.google.common.base.o.s(consumer);
            Iterable iterable = this.f13271b;
            final com.google.common.base.q qVar = this.f13272c;
            iterable.forEach(new Consumer() { // from class: com.google.common.collect.m5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    n5.a.x(com.google.common.base.q.this, consumer, obj);
                }
            });
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return p5.l(this.f13271b.iterator(), this.f13272c);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return s2.a(this.f13271b.spliterator(), this.f13272c);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    class b<T> extends p3<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f13273b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.h f13274c;

        b(Iterable iterable, com.google.common.base.h hVar) {
            this.f13273b = iterable;
            this.f13274c = hVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void x(Consumer consumer, com.google.common.base.h hVar, Object obj) {
            consumer.accept(hVar.apply(obj));
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super T> consumer) {
            com.google.common.base.o.s(consumer);
            Iterable iterable = this.f13273b;
            final com.google.common.base.h hVar = this.f13274c;
            iterable.forEach(new Consumer() { // from class: com.google.common.collect.o5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    n5.b.x(consumer, hVar, obj);
                }
            });
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return p5.C(this.f13273b.iterator(), this.f13274c);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return s2.e(this.f13273b.spliterator(), this.f13274c);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    class c<T> extends p3<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f13275b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f13276c;

        /* loaded from: classes2.dex */
        class a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            boolean f13277a = true;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Iterator f13278b;

            a(c cVar, Iterator it) {
                this.f13278b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f13278b.hasNext();
            }

            @Override // java.util.Iterator
            public T next() {
                T t10 = (T) this.f13278b.next();
                this.f13277a = false;
                return t10;
            }

            @Override // java.util.Iterator
            public void remove() {
                p2.e(!this.f13277a);
                this.f13278b.remove();
            }
        }

        c(Iterable iterable, int i9) {
            this.f13275b = iterable;
            this.f13276c = i9;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f13275b;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.f13276c), list.size()).iterator();
            }
            Iterator<T> it = iterable.iterator();
            p5.b(it, this.f13276c);
            return new a(this, it);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            Iterable iterable = this.f13275b;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.f13276c), list.size()).spliterator();
            }
            return p8.a(iterable).skip(this.f13276c).spliterator();
        }
    }

    public static <T> boolean a(Collection<T> collection, Iterable<? extends T> iterable) {
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        return p5.a(collection, ((Iterable) com.google.common.base.o.s(iterable)).iterator());
    }

    public static <T> boolean b(Iterable<T> iterable, com.google.common.base.q<? super T> qVar) {
        return p5.c(iterable.iterator(), qVar);
    }

    private static <E> Collection<E> c(Iterable<E> iterable) {
        if (iterable instanceof Collection) {
            return (Collection) iterable;
        }
        return z5.i(iterable.iterator());
    }

    public static <T> Iterable<T> d(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return p3.c(iterable, iterable2);
    }

    public static <T> Iterable<T> e(Iterable<T> iterable, com.google.common.base.q<? super T> qVar) {
        com.google.common.base.o.s(iterable);
        com.google.common.base.o.s(qVar);
        return new a(iterable, qVar);
    }

    public static <T> T f(Iterable<? extends T> iterable, T t10) {
        return (T) p5.q(iterable.iterator(), t10);
    }

    public static <T> T g(Iterable<T> iterable) {
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (!list.isEmpty()) {
                return (T) h(list);
            }
            throw new NoSuchElementException();
        }
        return (T) p5.p(iterable.iterator());
    }

    private static <T> T h(List<T> list) {
        return list.get(list.size() - 1);
    }

    public static <T> T i(Iterable<T> iterable) {
        return (T) p5.r(iterable.iterator());
    }

    public static boolean j(Iterable<?> iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).isEmpty();
        }
        return !iterable.iterator().hasNext();
    }

    public static <T> boolean k(Iterable<T> iterable, com.google.common.base.q<? super T> qVar) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).removeIf(qVar);
        }
        return p5.x(iterable.iterator(), qVar);
    }

    public static <T> Iterable<T> l(Iterable<T> iterable, int i9) {
        com.google.common.base.o.s(iterable);
        com.google.common.base.o.e(i9 >= 0, "number to skip cannot be negative");
        return new c(iterable, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] m(Iterable<?> iterable) {
        return c(iterable).toArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] n(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) c(iterable).toArray(tArr);
    }

    public static String o(Iterable<?> iterable) {
        return p5.B(iterable.iterator());
    }

    public static <F, T> Iterable<T> p(Iterable<F> iterable, com.google.common.base.h<? super F, ? extends T> hVar) {
        com.google.common.base.o.s(iterable);
        com.google.common.base.o.s(hVar);
        return new b(iterable, hVar);
    }
}
