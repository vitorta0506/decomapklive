package com.google.common.collect;

import com.google.common.base.Optional;
import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class p3<E> implements Iterable<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Optional<Iterable<E>> f13337a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends p3<E> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable f13338b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.f13338b = iterable2;
        }

        @Override // java.lang.Iterable
        public Iterator<E> iterator() {
            return this.f13338b.iterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    public class b<T> extends p3<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterable[] f13339b;

        /* loaded from: classes2.dex */
        class a extends com.google.common.collect.b<Iterator<? extends T>> {
            a(int i9) {
                super(i9);
            }

            @Override // com.google.common.collect.b
            /* renamed from: b */
            public Iterator<? extends T> a(int i9) {
                return b.this.f13339b[i9].iterator();
            }
        }

        b(Iterable[] iterableArr) {
            this.f13339b = iterableArr;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return p5.f(new a(this.f13339b.length));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public p3() {
        this.f13337a = Optional.absent();
    }

    public static <T> p3<T> c(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return d(iterable, iterable2);
    }

    private static <T> p3<T> d(Iterable<? extends T>... iterableArr) {
        for (Iterable<? extends T> iterable : iterableArr) {
            com.google.common.base.o.s(iterable);
        }
        return new b(iterableArr);
    }

    public static <E> p3<E> g(Iterable<E> iterable) {
        if (iterable instanceof p3) {
            return (p3) iterable;
        }
        return new a(iterable, iterable);
    }

    private Iterable<E> m() {
        return this.f13337a.or((Optional<Iterable<E>>) this);
    }

    public final p3<E> f(com.google.common.base.q<? super E> qVar) {
        return g(n5.e(m(), qVar));
    }

    public final ImmutableSet<E> n() {
        return ImmutableSet.copyOf(m());
    }

    public String toString() {
        return n5.o(m());
    }

    p3(Iterable<E> iterable) {
        this.f13337a = Optional.of(iterable);
    }
}
