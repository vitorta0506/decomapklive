package com.google.common.collect;

import com.google.common.collect.q6;
import com.google.common.collect.w7;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Spliterator;
import java.util.function.Function;
import java.util.function.ObjIntConsumer;
/* loaded from: classes2.dex */
public final class t6 {

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* loaded from: classes2.dex */
    class a<E> extends b9<q6.a<E>, E> {
        a(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.b9
        /* renamed from: b */
        public E a(q6.a<E> aVar) {
            return aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class b<E> implements q6.a<E> {
        public boolean equals(Object obj) {
            if (obj instanceof q6.a) {
                q6.a aVar = (q6.a) obj;
                return getCount() == aVar.getCount() && com.google.common.base.l.a(a(), aVar.a());
            }
            return false;
        }

        public int hashCode() {
            E a10 = a();
            return (a10 == null ? 0 : a10.hashCode()) ^ getCount();
        }

        @Override // com.google.common.collect.q6.a
        public String toString() {
            String valueOf = String.valueOf(a());
            int count = getCount();
            if (count == 1) {
                return valueOf;
            }
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 14);
            sb2.append(valueOf);
            sb2.append(" x ");
            sb2.append(count);
            return sb2.toString();
        }
    }

    /* loaded from: classes2.dex */
    static abstract class c<E> extends w7.f<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            m().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return m().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return m().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return m().isEmpty();
        }

        abstract q6<E> m();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return m().remove(obj, Integer.MAX_VALUE) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return m().entrySet().size();
        }
    }

    /* loaded from: classes2.dex */
    static abstract class d<E> extends w7.f<q6.a<E>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            m().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof q6.a) {
                q6.a aVar = (q6.a) obj;
                return aVar.getCount() > 0 && m().count(aVar.a()) == aVar.getCount();
            }
            return false;
        }

        abstract q6<E> m();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof q6.a) {
                q6.a aVar = (q6.a) obj;
                E e10 = (E) aVar.a();
                int count = aVar.getCount();
                if (count != 0) {
                    return m().setCount(e10, count, 0);
                }
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    static class e<E> extends b<E> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final E f13425a;

        /* renamed from: b  reason: collision with root package name */
        private final int f13426b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(E e10, int i9) {
            this.f13425a = e10;
            this.f13426b = i9;
            p2.b(i9, AnimatedPasterJsonConfig.CONFIG_COUNT);
        }

        @Override // com.google.common.collect.q6.a
        public final E a() {
            return this.f13425a;
        }

        public e<E> b() {
            return null;
        }

        @Override // com.google.common.collect.q6.a
        public final int getCount() {
            return this.f13426b;
        }
    }

    /* loaded from: classes2.dex */
    static final class f<E> implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private final q6<E> f13427a;

        /* renamed from: b  reason: collision with root package name */
        private final Iterator<q6.a<E>> f13428b;

        /* renamed from: c  reason: collision with root package name */
        private q6.a<E> f13429c;

        /* renamed from: d  reason: collision with root package name */
        private int f13430d;

        /* renamed from: e  reason: collision with root package name */
        private int f13431e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f13432f;

        f(q6<E> q6Var, Iterator<q6.a<E>> it) {
            this.f13427a = q6Var;
            this.f13428b = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13430d > 0 || this.f13428b.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                if (this.f13430d == 0) {
                    q6.a<E> next = this.f13428b.next();
                    this.f13429c = next;
                    int count = next.getCount();
                    this.f13430d = count;
                    this.f13431e = count;
                }
                this.f13430d--;
                this.f13432f = true;
                q6.a<E> aVar = this.f13429c;
                Objects.requireNonNull(aVar);
                return aVar.a();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            p2.e(this.f13432f);
            if (this.f13431e == 1) {
                this.f13428b.remove();
            } else {
                q6<E> q6Var = this.f13427a;
                q6.a<E> aVar = this.f13429c;
                Objects.requireNonNull(aVar);
                q6Var.remove(aVar.a());
            }
            this.f13431e--;
            this.f13432f = false;
        }
    }

    private static <E> boolean b(final q6<E> q6Var, q6<? extends E> q6Var2) {
        if (q6Var2.isEmpty()) {
            return false;
        }
        Objects.requireNonNull(q6Var);
        q6Var2.forEachEntry(new ObjIntConsumer() { // from class: com.google.common.collect.s6
            @Override // java.util.function.ObjIntConsumer
            public final void accept(Object obj, int i9) {
                q6.this.add(obj, i9);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> boolean c(q6<E> q6Var, Collection<? extends E> collection) {
        com.google.common.base.o.s(q6Var);
        com.google.common.base.o.s(collection);
        if (collection instanceof q6) {
            return b(q6Var, d(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return p5.a(q6Var, collection.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> q6<T> d(Iterable<T> iterable) {
        return (q6) iterable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Iterator<E> e(Iterator<q6.a<E>> it) {
        return new a(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(q6<?> q6Var, Object obj) {
        if (obj == q6Var) {
            return true;
        }
        if (obj instanceof q6) {
            q6 q6Var2 = (q6) obj;
            if (q6Var.size() == q6Var2.size() && q6Var.entrySet().size() == q6Var2.entrySet().size()) {
                for (q6.a aVar : q6Var2.entrySet()) {
                    if (q6Var.count(aVar.a()) != aVar.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static <E> q6.a<E> g(E e10, int i9) {
        return new e(e10, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(Iterable<?> iterable) {
        if (iterable instanceof q6) {
            return ((q6) iterable).elementSet().size();
        }
        return 11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Iterator<E> i(q6<E> q6Var) {
        return new f(q6Var, q6Var.entrySet().iterator());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator j(q6.a aVar) {
        return Collections.nCopies(aVar.getCount(), aVar.a()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean k(q6<?> q6Var, Collection<?> collection) {
        if (collection instanceof q6) {
            collection = ((q6) collection).elementSet();
        }
        return q6Var.elementSet().removeAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean l(q6<?> q6Var, Collection<?> collection) {
        com.google.common.base.o.s(collection);
        if (collection instanceof q6) {
            collection = ((q6) collection).elementSet();
        }
        return q6Var.elementSet().retainAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> int m(q6<E> q6Var, E e10, int i9) {
        p2.b(i9, AnimatedPasterJsonConfig.CONFIG_COUNT);
        int count = q6Var.count(e10);
        int i10 = i9 - count;
        if (i10 > 0) {
            q6Var.add(e10, i10);
        } else if (i10 < 0) {
            q6Var.remove(e10, -i10);
        }
        return count;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> boolean n(q6<E> q6Var, E e10, int i9, int i10) {
        p2.b(i9, "oldCount");
        p2.b(i10, "newCount");
        if (q6Var.count(e10) == i9) {
            q6Var.setCount(e10, i10);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Spliterator<E> o(q6<E> q6Var) {
        Spliterator<q6.a<E>> spliterator = q6Var.entrySet().spliterator();
        return s2.b(spliterator, new Function() { // from class: com.google.common.collect.r6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator j10;
                j10 = t6.j((q6.a) obj);
                return j10;
            }
        }, (spliterator.characteristics() & 1296) | 64, q6Var.size());
    }
}
