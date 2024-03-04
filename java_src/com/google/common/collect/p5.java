package com.google.common.collect;

import com.google.common.collect.p5;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import java.util.Queue;
import kotlin.text.Typography;
/* loaded from: classes2.dex */
public final class p5 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    public class a<T> extends e9<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f13342a;

        a(Iterator it) {
            this.f13342a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13342a.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            return (T) this.f13342a.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    public class b<T> extends com.google.common.collect.c<T> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Iterator f13343c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.q f13344d;

        b(Iterator it, com.google.common.base.q qVar) {
            this.f13343c = it;
            this.f13344d = qVar;
        }

        @Override // com.google.common.collect.c
        protected T a() {
            while (this.f13343c.hasNext()) {
                T t10 = (T) this.f13343c.next();
                if (this.f13344d.apply(t10)) {
                    return t10;
                }
            }
            return b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T, F] */
    /* loaded from: classes2.dex */
    public class c<F, T> extends b9<F, T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.h f13345b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Iterator it, com.google.common.base.h hVar) {
            super(it);
            this.f13345b = hVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.b9
        public T a(F f10) {
            return (T) this.f13345b.apply(f10);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    class d<T> extends e9<T> {

        /* renamed from: a  reason: collision with root package name */
        boolean f13346a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f13347b;

        d(Object obj) {
            this.f13347b = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f13346a;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f13346a) {
                this.f13346a = true;
                return (T) this.f13347b;
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class e<T> extends com.google.common.collect.b<T> {

        /* renamed from: e  reason: collision with root package name */
        static final f9<Object> f13348e = new e(new Object[0], 0, 0, 0);

        /* renamed from: c  reason: collision with root package name */
        private final T[] f13349c;

        /* renamed from: d  reason: collision with root package name */
        private final int f13350d;

        e(T[] tArr, int i9, int i10, int i11) {
            super(i10, i11);
            this.f13349c = tArr;
            this.f13350d = i9;
        }

        @Override // com.google.common.collect.b
        protected T a(int i9) {
            return this.f13349c[this.f13350d + i9];
        }
    }

    /* loaded from: classes2.dex */
    private static class f<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private Iterator<? extends T> f13351a;

        /* renamed from: b  reason: collision with root package name */
        private Iterator<? extends T> f13352b = p5.i();

        /* renamed from: c  reason: collision with root package name */
        private Iterator<? extends Iterator<? extends T>> f13353c;

        /* renamed from: d  reason: collision with root package name */
        private Deque<Iterator<? extends Iterator<? extends T>>> f13354d;

        f(Iterator<? extends Iterator<? extends T>> it) {
            this.f13353c = (Iterator) com.google.common.base.o.s(it);
        }

        private Iterator<? extends Iterator<? extends T>> a() {
            while (true) {
                Iterator<? extends Iterator<? extends T>> it = this.f13353c;
                if (it != null && it.hasNext()) {
                    return this.f13353c;
                }
                Deque<Iterator<? extends Iterator<? extends T>>> deque = this.f13354d;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.f13353c = this.f13354d.removeFirst();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!((Iterator) com.google.common.base.o.s(this.f13352b)).hasNext()) {
                Iterator<? extends Iterator<? extends T>> a10 = a();
                this.f13353c = a10;
                if (a10 == null) {
                    return false;
                }
                Iterator<? extends T> next = a10.next();
                this.f13352b = next;
                if (next instanceof f) {
                    f fVar = (f) next;
                    this.f13352b = fVar.f13352b;
                    if (this.f13354d == null) {
                        this.f13354d = new ArrayDeque();
                    }
                    this.f13354d.addFirst(this.f13353c);
                    if (fVar.f13354d != null) {
                        while (!fVar.f13354d.isEmpty()) {
                            this.f13354d.addFirst(fVar.f13354d.removeLast());
                        }
                    }
                    this.f13353c = fVar.f13353c;
                }
            }
            return true;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                Iterator<? extends T> it = this.f13352b;
                this.f13351a = it;
                return it.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            Iterator<? extends T> it = this.f13351a;
            if (it != null) {
                it.remove();
                this.f13351a = null;
                return;
            }
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum g implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            p2.e(false);
        }
    }

    /* loaded from: classes2.dex */
    private static class h<T> extends e9<T> {

        /* renamed from: a  reason: collision with root package name */
        final Queue<z6<T>> f13357a;

        public h(Iterable<? extends Iterator<? extends T>> iterable, final Comparator<? super T> comparator) {
            this.f13357a = new PriorityQueue(2, new Comparator() { // from class: com.google.common.collect.q5
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int b10;
                    b10 = p5.h.b(comparator, (z6) obj, (z6) obj2);
                    return b10;
                }
            });
            for (Iterator<? extends T> it : iterable) {
                if (it.hasNext()) {
                    this.f13357a.add(p5.u(it));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ int b(Comparator comparator, z6 z6Var, z6 z6Var2) {
            return comparator.compare(z6Var.peek(), z6Var2.peek());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f13357a.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            z6<T> remove = this.f13357a.remove();
            T next = remove.next();
            if (remove.hasNext()) {
                this.f13357a.add(remove);
            }
            return next;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class i<E> implements z6<E> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<? extends E> f13358a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f13359b;

        /* renamed from: c  reason: collision with root package name */
        private E f13360c;

        public i(Iterator<? extends E> it) {
            this.f13358a = (Iterator) com.google.common.base.o.s(it);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13359b || this.f13358a.hasNext();
        }

        @Override // com.google.common.collect.z6, java.util.Iterator
        public E next() {
            if (!this.f13359b) {
                return this.f13358a.next();
            }
            E e10 = (E) w6.a(this.f13360c);
            this.f13359b = false;
            this.f13360c = null;
            return e10;
        }

        @Override // com.google.common.collect.z6
        public E peek() {
            if (!this.f13359b) {
                this.f13360c = this.f13358a.next();
                this.f13359b = true;
            }
            return (E) w6.a(this.f13360c);
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.o.A(!this.f13359b, "Can't remove after you've peeked at next");
            this.f13358a.remove();
        }
    }

    public static int A(Iterator<?> it) {
        long j10 = 0;
        while (it.hasNext()) {
            it.next();
            j10++;
        }
        return com.google.common.primitives.f.i(j10);
    }

    public static String B(Iterator<?> it) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        boolean z10 = true;
        while (it.hasNext()) {
            if (!z10) {
                sb2.append(", ");
            }
            z10 = false;
            sb2.append(it.next());
        }
        sb2.append(']');
        return sb2.toString();
    }

    public static <F, T> Iterator<T> C(Iterator<F> it, com.google.common.base.h<? super F, ? extends T> hVar) {
        com.google.common.base.o.s(hVar);
        return new c(it, hVar);
    }

    public static <T> e9<T> D(Iterator<? extends T> it) {
        com.google.common.base.o.s(it);
        if (it instanceof e9) {
            return (e9) it;
        }
        return new a(it);
    }

    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it) {
        com.google.common.base.o.s(collection);
        com.google.common.base.o.s(it);
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= collection.add(it.next());
        }
        return z10;
    }

    public static int b(Iterator<?> it, int i9) {
        com.google.common.base.o.s(it);
        int i10 = 0;
        com.google.common.base.o.e(i9 >= 0, "numberToAdvance must be nonnegative");
        while (i10 < i9 && it.hasNext()) {
            it.next();
            i10++;
        }
        return i10;
    }

    public static <T> boolean c(Iterator<T> it, com.google.common.base.q<? super T> qVar) {
        return s(it, qVar) != -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> ListIterator<T> d(Iterator<T> it) {
        return (ListIterator) it;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(Iterator<?> it) {
        com.google.common.base.o.s(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static <T> Iterator<T> f(Iterator<? extends Iterator<? extends T>> it) {
        return new f(it);
    }

    public static boolean g(Iterator<?> it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0006  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean h(java.util.Iterator<?> r3, java.util.Iterator<?> r4) {
        /*
        L0:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L1d
            boolean r0 = r4.hasNext()
            r1 = 0
            if (r0 != 0) goto Le
            return r1
        Le:
            java.lang.Object r0 = r3.next()
            java.lang.Object r2 = r4.next()
            boolean r0 = com.google.common.base.l.a(r0, r2)
            if (r0 != 0) goto L0
            return r1
        L1d:
            boolean r3 = r4.hasNext()
            r3 = r3 ^ 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.p5.h(java.util.Iterator, java.util.Iterator):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> e9<T> i() {
        return j();
    }

    static <T> f9<T> j() {
        return (f9<T>) e.f13348e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Iterator<T> k() {
        return g.INSTANCE;
    }

    public static <T> e9<T> l(Iterator<T> it, com.google.common.base.q<? super T> qVar) {
        com.google.common.base.o.s(it);
        com.google.common.base.o.s(qVar);
        return new b(it, qVar);
    }

    public static <T> T m(Iterator<T> it, com.google.common.base.q<? super T> qVar) {
        com.google.common.base.o.s(it);
        com.google.common.base.o.s(qVar);
        while (it.hasNext()) {
            T next = it.next();
            if (qVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @SafeVarargs
    public static <T> e9<T> n(T... tArr) {
        return o(tArr, 0, tArr.length, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> f9<T> o(T[] tArr, int i9, int i10, int i11) {
        com.google.common.base.o.d(i10 >= 0);
        com.google.common.base.o.y(i9, i9 + i10, tArr.length);
        com.google.common.base.o.w(i11, i10);
        if (i10 == 0) {
            return j();
        }
        return new e(tArr, i9, i10, i11);
    }

    public static <T> T p(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static <T> T q(Iterator<? extends T> it, T t10) {
        return it.hasNext() ? it.next() : t10;
    }

    public static <T> T r(Iterator<T> it) {
        T next = it.next();
        if (it.hasNext()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("expected one element but was: <");
            sb2.append(next);
            for (int i9 = 0; i9 < 4 && it.hasNext(); i9++) {
                sb2.append(", ");
                sb2.append(it.next());
            }
            if (it.hasNext()) {
                sb2.append(", ...");
            }
            sb2.append(Typography.greater);
            throw new IllegalArgumentException(sb2.toString());
        }
        return next;
    }

    public static <T> int s(Iterator<T> it, com.google.common.base.q<? super T> qVar) {
        com.google.common.base.o.t(qVar, "predicate");
        int i9 = 0;
        while (it.hasNext()) {
            if (qVar.apply(it.next())) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    public static <T> e9<T> t(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
        com.google.common.base.o.t(iterable, "iterators");
        com.google.common.base.o.t(comparator, "comparator");
        return new h(iterable, comparator);
    }

    public static <T> z6<T> u(Iterator<? extends T> it) {
        if (it instanceof i) {
            return (i) it;
        }
        return new i(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T v(Iterator<T> it) {
        if (it.hasNext()) {
            T next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    public static boolean w(Iterator<?> it, Collection<?> collection) {
        com.google.common.base.o.s(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static <T> boolean x(Iterator<T> it, com.google.common.base.q<? super T> qVar) {
        com.google.common.base.o.s(qVar);
        boolean z10 = false;
        while (it.hasNext()) {
            if (qVar.apply(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean y(Iterator<?> it, Collection<?> collection) {
        com.google.common.base.o.s(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static <T> e9<T> z(T t10) {
        return new d(t10);
    }
}
