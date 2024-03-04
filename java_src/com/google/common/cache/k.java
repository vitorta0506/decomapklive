package com.google.common.cache;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.google.common.base.Equivalence;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.d;
import com.google.common.cache.k;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.d6;
import com.google.common.collect.p5;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.n0;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class k<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {

    /* renamed from: w  reason: collision with root package name */
    static final Logger f12453w = Logger.getLogger(k.class.getName());

    /* renamed from: x  reason: collision with root package name */
    static final b0<Object, Object> f12454x = new a();

    /* renamed from: y  reason: collision with root package name */
    static final Queue<?> f12455y = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f12456a;

    /* renamed from: b  reason: collision with root package name */
    final int f12457b;

    /* renamed from: c  reason: collision with root package name */
    final s<K, V>[] f12458c;

    /* renamed from: d  reason: collision with root package name */
    final int f12459d;

    /* renamed from: e  reason: collision with root package name */
    final Equivalence<Object> f12460e;

    /* renamed from: f  reason: collision with root package name */
    final Equivalence<Object> f12461f;

    /* renamed from: g  reason: collision with root package name */
    final u f12462g;

    /* renamed from: h  reason: collision with root package name */
    final u f12463h;

    /* renamed from: i  reason: collision with root package name */
    final long f12464i;

    /* renamed from: j  reason: collision with root package name */
    final com.google.common.cache.t<K, V> f12465j;

    /* renamed from: k  reason: collision with root package name */
    final long f12466k;

    /* renamed from: l  reason: collision with root package name */
    final long f12467l;

    /* renamed from: m  reason: collision with root package name */
    final long f12468m;

    /* renamed from: n  reason: collision with root package name */
    final Queue<RemovalNotification<K, V>> f12469n;

    /* renamed from: o  reason: collision with root package name */
    final com.google.common.cache.r<K, V> f12470o;

    /* renamed from: p  reason: collision with root package name */
    final com.google.common.base.z f12471p;

    /* renamed from: q  reason: collision with root package name */
    final g f12472q;

    /* renamed from: r  reason: collision with root package name */
    final com.google.common.cache.b f12473r;

    /* renamed from: s  reason: collision with root package name */
    final CacheLoader<? super K, V> f12474s;

    /* renamed from: t  reason: collision with root package name */
    Set<K> f12475t;

    /* renamed from: u  reason: collision with root package name */
    Collection<V> f12476u;

    /* renamed from: v  reason: collision with root package name */
    Set<Map.Entry<K, V>> f12477v;

    /* loaded from: classes2.dex */
    class a implements b0<Object, Object> {
        a() {
        }

        @Override // com.google.common.cache.k.b0
        public com.google.common.cache.q<Object, Object> a() {
            return null;
        }

        @Override // com.google.common.cache.k.b0
        public void b(Object obj) {
        }

        @Override // com.google.common.cache.k.b0
        public int c() {
            return 0;
        }

        @Override // com.google.common.cache.k.b0
        public b0<Object, Object> d(ReferenceQueue<Object> referenceQueue, Object obj, com.google.common.cache.q<Object, Object> qVar) {
            return this;
        }

        @Override // com.google.common.cache.k.b0
        public Object e() {
            return null;
        }

        @Override // com.google.common.cache.k.b0
        public Object get() {
            return null;
        }

        @Override // com.google.common.cache.k.b0
        public boolean isActive() {
            return false;
        }

        @Override // com.google.common.cache.k.b0
        public boolean isLoading() {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    final class a0 extends k<K, V>.j<V> {
        a0(k kVar) {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return c().getValue();
        }
    }

    /* loaded from: classes2.dex */
    class b extends AbstractQueue<Object> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return ImmutableSet.of().iterator();
        }

        @Override // java.util.Queue
        public boolean offer(Object obj) {
            return true;
        }

        @Override // java.util.Queue
        public Object peek() {
            return null;
        }

        @Override // java.util.Queue
        public Object poll() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface b0<K, V> {
        com.google.common.cache.q<K, V> a();

        void b(V v10);

        int c();

        b0<K, V> d(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar);

        V e() throws ExecutionException;

        V get();

        boolean isActive();

        boolean isLoading();
    }

    /* loaded from: classes2.dex */
    abstract class c<T> extends AbstractSet<T> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return k.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return k.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return k.J(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <E> E[] toArray(E[] eArr) {
            return (E[]) k.J(this).toArray(eArr);
        }
    }

    /* loaded from: classes2.dex */
    final class c0 extends AbstractCollection<V> {
        c0() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return k.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return k.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a0(k.this);
        }

        @Override // java.util.Collection
        public boolean removeIf(final Predicate<? super V> predicate) {
            com.google.common.base.o.s(predicate);
            return k.this.H(new BiPredicate() { // from class: com.google.common.cache.m
                @Override // java.util.function.BiPredicate
                public final boolean test(Object obj, Object obj2) {
                    boolean test;
                    test = predicate.test(obj2);
                    return test;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return k.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return k.J(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return (E[]) k.J(this).toArray(eArr);
        }
    }

    /* loaded from: classes2.dex */
    static abstract class d<K, V> implements com.google.common.cache.q<K, V> {
        d() {
        }

        @Override // com.google.common.cache.q
        public b0<K, V> a() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public int b() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<K, V> c() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<K, V> d() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<K, V> e() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<K, V> f() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public void g(com.google.common.cache.q<K, V> qVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public K getKey() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<K, V> h() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public void i(b0<K, V> b0Var) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public long j() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public void k(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public long l() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public void m(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public void o(com.google.common.cache.q<K, V> qVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public void p(com.google.common.cache.q<K, V> qVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public void q(com.google.common.cache.q<K, V> qVar) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2.dex */
    static final class d0<K, V> extends f0<K, V> {

        /* renamed from: d  reason: collision with root package name */
        volatile long f12480d;

        /* renamed from: e  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12481e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12482f;

        d0(ReferenceQueue<K> referenceQueue, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
            super(referenceQueue, k10, i9, qVar);
            this.f12480d = Long.MAX_VALUE;
            this.f12481e = k.w();
            this.f12482f = k.w();
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public com.google.common.cache.q<K, V> d() {
            return this.f12482f;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public com.google.common.cache.q<K, V> f() {
            return this.f12481e;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void g(com.google.common.cache.q<K, V> qVar) {
            this.f12482f = qVar;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void k(long j10) {
            this.f12480d = j10;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public long l() {
            return this.f12480d;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void o(com.google.common.cache.q<K, V> qVar) {
            this.f12481e = qVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class e<K, V> extends AbstractQueue<com.google.common.cache.q<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final com.google.common.cache.q<K, V> f12483a = new a(this);

        /* loaded from: classes2.dex */
        class a extends d<K, V> {

            /* renamed from: a  reason: collision with root package name */
            com.google.common.cache.q<K, V> f12484a = this;

            /* renamed from: b  reason: collision with root package name */
            com.google.common.cache.q<K, V> f12485b = this;

            a(e eVar) {
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public com.google.common.cache.q<K, V> d() {
                return this.f12485b;
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public com.google.common.cache.q<K, V> f() {
                return this.f12484a;
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public void g(com.google.common.cache.q<K, V> qVar) {
                this.f12485b = qVar;
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public void k(long j10) {
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public long l() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public void o(com.google.common.cache.q<K, V> qVar) {
                this.f12484a = qVar;
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.s<com.google.common.cache.q<K, V>> {
            b(com.google.common.cache.q qVar) {
                super(qVar);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.s
            /* renamed from: b */
            public com.google.common.cache.q<K, V> a(com.google.common.cache.q<K, V> qVar) {
                com.google.common.cache.q<K, V> f10 = qVar.f();
                if (f10 == e.this.f12483a) {
                    return null;
                }
                return f10;
            }
        }

        e() {
        }

        @Override // java.util.Queue
        /* renamed from: c */
        public boolean offer(com.google.common.cache.q<K, V> qVar) {
            k.e(qVar.d(), qVar.f());
            k.e(this.f12483a.d(), qVar);
            k.e(qVar, this.f12483a);
            return true;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            com.google.common.cache.q<K, V> f10 = this.f12483a.f();
            while (true) {
                com.google.common.cache.q<K, V> qVar = this.f12483a;
                if (f10 != qVar) {
                    com.google.common.cache.q<K, V> f11 = f10.f();
                    k.x(f10);
                    f10 = f11;
                } else {
                    qVar.o(qVar);
                    com.google.common.cache.q<K, V> qVar2 = this.f12483a;
                    qVar2.g(qVar2);
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((com.google.common.cache.q) obj).f() != r.INSTANCE;
        }

        @Override // java.util.Queue
        /* renamed from: d */
        public com.google.common.cache.q<K, V> peek() {
            com.google.common.cache.q<K, V> f10 = this.f12483a.f();
            if (f10 == this.f12483a) {
                return null;
            }
            return f10;
        }

        @Override // java.util.Queue
        /* renamed from: f */
        public com.google.common.cache.q<K, V> poll() {
            com.google.common.cache.q<K, V> f10 = this.f12483a.f();
            if (f10 == this.f12483a) {
                return null;
            }
            remove(f10);
            return f10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f12483a.f() == this.f12483a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<com.google.common.cache.q<K, V>> iterator() {
            return new b(peek());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            com.google.common.cache.q qVar = (com.google.common.cache.q) obj;
            com.google.common.cache.q<K, V> d10 = qVar.d();
            com.google.common.cache.q<K, V> f10 = qVar.f();
            k.e(d10, f10);
            k.x(qVar);
            return f10 != r.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i9 = 0;
            for (com.google.common.cache.q<K, V> f10 = this.f12483a.f(); f10 != this.f12483a; f10 = f10.f()) {
                i9++;
            }
            return i9;
        }
    }

    /* loaded from: classes2.dex */
    static final class e0<K, V> extends f0<K, V> {

        /* renamed from: d  reason: collision with root package name */
        volatile long f12487d;

        /* renamed from: e  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12488e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12489f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f12490g;

        /* renamed from: h  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12491h;

        /* renamed from: i  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12492i;

        e0(ReferenceQueue<K> referenceQueue, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
            super(referenceQueue, k10, i9, qVar);
            this.f12487d = Long.MAX_VALUE;
            this.f12488e = k.w();
            this.f12489f = k.w();
            this.f12490g = Long.MAX_VALUE;
            this.f12491h = k.w();
            this.f12492i = k.w();
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public com.google.common.cache.q<K, V> d() {
            return this.f12489f;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public com.google.common.cache.q<K, V> e() {
            return this.f12491h;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public com.google.common.cache.q<K, V> f() {
            return this.f12488e;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void g(com.google.common.cache.q<K, V> qVar) {
            this.f12489f = qVar;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public com.google.common.cache.q<K, V> h() {
            return this.f12492i;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public long j() {
            return this.f12490g;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void k(long j10) {
            this.f12487d = j10;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public long l() {
            return this.f12487d;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void m(long j10) {
            this.f12490g = j10;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void o(com.google.common.cache.q<K, V> qVar) {
            this.f12488e = qVar;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void p(com.google.common.cache.q<K, V> qVar) {
            this.f12491h = qVar;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void q(com.google.common.cache.q<K, V> qVar) {
            this.f12492i = qVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class f<K, V> extends n<K, V> {
        f(b0<K, V> b0Var) {
            super(b0Var);
        }

        @Override // com.google.common.cache.k.n, com.google.common.cache.k.b0
        public boolean isLoading() {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    static class f0<K, V> extends WeakReference<K> implements com.google.common.cache.q<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final int f12493a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.cache.q<K, V> f12494b;

        /* renamed from: c  reason: collision with root package name */
        volatile b0<K, V> f12495c;

        f0(ReferenceQueue<K> referenceQueue, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
            super(k10, referenceQueue);
            this.f12495c = k.K();
            this.f12493a = i9;
            this.f12494b = qVar;
        }

        @Override // com.google.common.cache.q
        public b0<K, V> a() {
            return this.f12495c;
        }

        @Override // com.google.common.cache.q
        public int b() {
            return this.f12493a;
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<K, V> c() {
            return this.f12494b;
        }

        public com.google.common.cache.q<K, V> d() {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.q<K, V> e() {
            throw new UnsupportedOperationException();
        }

        public com.google.common.cache.q<K, V> f() {
            throw new UnsupportedOperationException();
        }

        public void g(com.google.common.cache.q<K, V> qVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public K getKey() {
            return get();
        }

        public com.google.common.cache.q<K, V> h() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.q
        public void i(b0<K, V> b0Var) {
            this.f12495c = b0Var;
        }

        public long j() {
            throw new UnsupportedOperationException();
        }

        public void k(long j10) {
            throw new UnsupportedOperationException();
        }

        public long l() {
            throw new UnsupportedOperationException();
        }

        public void m(long j10) {
            throw new UnsupportedOperationException();
        }

        public void o(com.google.common.cache.q<K, V> qVar) {
            throw new UnsupportedOperationException();
        }

        public void p(com.google.common.cache.q<K, V> qVar) {
            throw new UnsupportedOperationException();
        }

        public void q(com.google.common.cache.q<K, V> qVar) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class g {

        /* renamed from: a  reason: collision with root package name */
        public static final g f12496a;

        /* renamed from: b  reason: collision with root package name */
        public static final g f12497b;

        /* renamed from: c  reason: collision with root package name */
        public static final g f12498c;

        /* renamed from: d  reason: collision with root package name */
        public static final g f12499d;

        /* renamed from: e  reason: collision with root package name */
        public static final g f12500e;

        /* renamed from: f  reason: collision with root package name */
        public static final g f12501f;

        /* renamed from: g  reason: collision with root package name */
        public static final g f12502g;

        /* renamed from: h  reason: collision with root package name */
        public static final g f12503h;

        /* renamed from: i  reason: collision with root package name */
        static final g[] f12504i;

        /* renamed from: j  reason: collision with root package name */
        private static final /* synthetic */ g[] f12505j;

        /* loaded from: classes2.dex */
        enum a extends g {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> f(s<K, V> sVar, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
                return new x(k10, i9, qVar);
            }
        }

        /* loaded from: classes2.dex */
        enum b extends g {
            b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
                com.google.common.cache.q<K, V> c10 = super.c(sVar, qVar, qVar2);
                b(qVar, c10);
                return c10;
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> f(s<K, V> sVar, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
                return new v(k10, i9, qVar);
            }
        }

        /* loaded from: classes2.dex */
        enum c extends g {
            c(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
                com.google.common.cache.q<K, V> c10 = super.c(sVar, qVar, qVar2);
                d(qVar, c10);
                return c10;
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> f(s<K, V> sVar, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
                return new z(k10, i9, qVar);
            }
        }

        /* loaded from: classes2.dex */
        enum d extends g {
            d(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
                com.google.common.cache.q<K, V> c10 = super.c(sVar, qVar, qVar2);
                b(qVar, c10);
                d(qVar, c10);
                return c10;
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> f(s<K, V> sVar, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
                return new w(k10, i9, qVar);
            }
        }

        /* loaded from: classes2.dex */
        enum e extends g {
            e(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> f(s<K, V> sVar, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
                return new f0(sVar.f12558h, k10, i9, qVar);
            }
        }

        /* loaded from: classes2.dex */
        enum f extends g {
            f(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
                com.google.common.cache.q<K, V> c10 = super.c(sVar, qVar, qVar2);
                b(qVar, c10);
                return c10;
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> f(s<K, V> sVar, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
                return new d0(sVar.f12558h, k10, i9, qVar);
            }
        }

        /* renamed from: com.google.common.cache.k$g$g  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0104g extends g {
            C0104g(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
                com.google.common.cache.q<K, V> c10 = super.c(sVar, qVar, qVar2);
                d(qVar, c10);
                return c10;
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> f(s<K, V> sVar, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
                return new h0(sVar.f12558h, k10, i9, qVar);
            }
        }

        /* loaded from: classes2.dex */
        enum h extends g {
            h(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
                com.google.common.cache.q<K, V> c10 = super.c(sVar, qVar, qVar2);
                b(qVar, c10);
                d(qVar, c10);
                return c10;
            }

            @Override // com.google.common.cache.k.g
            <K, V> com.google.common.cache.q<K, V> f(s<K, V> sVar, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
                return new e0(sVar.f12558h, k10, i9, qVar);
            }
        }

        static {
            a aVar = new a("STRONG", 0);
            f12496a = aVar;
            b bVar = new b("STRONG_ACCESS", 1);
            f12497b = bVar;
            c cVar = new c("STRONG_WRITE", 2);
            f12498c = cVar;
            d dVar = new d("STRONG_ACCESS_WRITE", 3);
            f12499d = dVar;
            e eVar = new e("WEAK", 4);
            f12500e = eVar;
            f fVar = new f("WEAK_ACCESS", 5);
            f12501f = fVar;
            C0104g c0104g = new C0104g("WEAK_WRITE", 6);
            f12502g = c0104g;
            h hVar = new h("WEAK_ACCESS_WRITE", 7);
            f12503h = hVar;
            f12505j = a();
            f12504i = new g[]{aVar, bVar, cVar, dVar, eVar, fVar, c0104g, hVar};
        }

        private g(String str, int i9) {
        }

        private static /* synthetic */ g[] a() {
            return new g[]{f12496a, f12497b, f12498c, f12499d, f12500e, f12501f, f12502g, f12503h};
        }

        /* JADX WARN: Multi-variable type inference failed */
        static g e(u uVar, boolean z10, boolean z11) {
            return f12504i[(uVar == u.f12573c ? 4 : 0) | (z10 ? 1 : 0) | (z11 ? 2 : 0)];
        }

        public static g valueOf(String str) {
            return (g) Enum.valueOf(g.class, str);
        }

        public static g[] values() {
            return (g[]) f12505j.clone();
        }

        <K, V> void b(com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
            qVar2.k(qVar.l());
            k.e(qVar.d(), qVar2);
            k.e(qVar2, qVar.f());
            k.x(qVar);
        }

        <K, V> com.google.common.cache.q<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
            return f(sVar, qVar.getKey(), qVar.b(), qVar2);
        }

        <K, V> void d(com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
            qVar2.m(qVar.j());
            k.f(qVar.h(), qVar2);
            k.f(qVar2, qVar.e());
            k.y(qVar);
        }

        abstract <K, V> com.google.common.cache.q<K, V> f(s<K, V> sVar, K k10, int i9, com.google.common.cache.q<K, V> qVar);

        /* synthetic */ g(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    /* loaded from: classes2.dex */
    static class g0<K, V> extends WeakReference<V> implements b0<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final com.google.common.cache.q<K, V> f12506a;

        g0(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar) {
            super(v10, referenceQueue);
            this.f12506a = qVar;
        }

        @Override // com.google.common.cache.k.b0
        public com.google.common.cache.q<K, V> a() {
            return this.f12506a;
        }

        @Override // com.google.common.cache.k.b0
        public void b(V v10) {
        }

        @Override // com.google.common.cache.k.b0
        public int c() {
            return 1;
        }

        @Override // com.google.common.cache.k.b0
        public b0<K, V> d(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar) {
            return new g0(referenceQueue, v10, qVar);
        }

        @Override // com.google.common.cache.k.b0
        public V e() {
            return get();
        }

        @Override // com.google.common.cache.k.b0
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.k.b0
        public boolean isLoading() {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    final class h extends k<K, V>.j<Map.Entry<K, V>> {
        h(k kVar) {
            super();
        }

        @Override // java.util.Iterator
        /* renamed from: f */
        public Map.Entry<K, V> next() {
            return c();
        }
    }

    /* loaded from: classes2.dex */
    static final class h0<K, V> extends f0<K, V> {

        /* renamed from: d  reason: collision with root package name */
        volatile long f12507d;

        /* renamed from: e  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12508e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12509f;

        h0(ReferenceQueue<K> referenceQueue, K k10, int i9, com.google.common.cache.q<K, V> qVar) {
            super(referenceQueue, k10, i9, qVar);
            this.f12507d = Long.MAX_VALUE;
            this.f12508e = k.w();
            this.f12509f = k.w();
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public com.google.common.cache.q<K, V> e() {
            return this.f12508e;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public com.google.common.cache.q<K, V> h() {
            return this.f12509f;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public long j() {
            return this.f12507d;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void m(long j10) {
            this.f12507d = j10;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void p(com.google.common.cache.q<K, V> qVar) {
            this.f12508e = qVar;
        }

        @Override // com.google.common.cache.k.f0, com.google.common.cache.q
        public void q(com.google.common.cache.q<K, V> qVar) {
            this.f12509f = qVar;
        }
    }

    /* loaded from: classes2.dex */
    final class i extends k<K, V>.c<Map.Entry<K, V>> {
        i() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean d(Predicate predicate, Object obj, Object obj2) {
            return predicate.test(d6.g(obj, obj2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = k.this.get(key)) != null && k.this.f12461f.d(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new h(k.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && k.this.remove(key, entry.getValue());
        }

        @Override // java.util.Collection
        public boolean removeIf(final Predicate<? super Map.Entry<K, V>> predicate) {
            com.google.common.base.o.s(predicate);
            return k.this.H(new BiPredicate() { // from class: com.google.common.cache.l
                @Override // java.util.function.BiPredicate
                public final boolean test(Object obj, Object obj2) {
                    boolean d10;
                    d10 = k.i.d(predicate, obj, obj2);
                    return d10;
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    static final class i0<K, V> extends t<K, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f12511b;

        i0(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar, int i9) {
            super(referenceQueue, v10, qVar);
            this.f12511b = i9;
        }

        @Override // com.google.common.cache.k.t, com.google.common.cache.k.b0
        public int c() {
            return this.f12511b;
        }

        @Override // com.google.common.cache.k.t, com.google.common.cache.k.b0
        public b0<K, V> d(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar) {
            return new i0(referenceQueue, v10, qVar, this.f12511b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public abstract class j<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f12512a;

        /* renamed from: b  reason: collision with root package name */
        int f12513b = -1;

        /* renamed from: c  reason: collision with root package name */
        s<K, V> f12514c;

        /* renamed from: d  reason: collision with root package name */
        AtomicReferenceArray<com.google.common.cache.q<K, V>> f12515d;

        /* renamed from: e  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12516e;

        /* renamed from: f  reason: collision with root package name */
        k<K, V>.m0 f12517f;

        /* renamed from: g  reason: collision with root package name */
        k<K, V>.m0 f12518g;

        j() {
            this.f12512a = k.this.f12458c.length - 1;
            a();
        }

        final void a() {
            this.f12517f = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i9 = this.f12512a;
                if (i9 < 0) {
                    return;
                }
                s<K, V>[] sVarArr = k.this.f12458c;
                this.f12512a = i9 - 1;
                s<K, V> sVar = sVarArr[i9];
                this.f12514c = sVar;
                if (sVar.f12552b != 0) {
                    AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12514c.f12556f;
                    this.f12515d = atomicReferenceArray;
                    this.f12513b = atomicReferenceArray.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        boolean b(com.google.common.cache.q<K, V> qVar) {
            boolean z10;
            try {
                long a10 = k.this.f12471p.a();
                K key = qVar.getKey();
                Object n9 = k.this.n(qVar, a10);
                if (n9 != null) {
                    this.f12517f = new m0(key, n9);
                    z10 = true;
                } else {
                    z10 = false;
                }
                return z10;
            } finally {
                this.f12514c.G();
            }
        }

        k<K, V>.m0 c() {
            k<K, V>.m0 m0Var = this.f12517f;
            if (m0Var != null) {
                this.f12518g = m0Var;
                a();
                return this.f12518g;
            }
            throw new NoSuchElementException();
        }

        boolean d() {
            com.google.common.cache.q<K, V> qVar = this.f12516e;
            if (qVar == null) {
                return false;
            }
            while (true) {
                this.f12516e = qVar.c();
                com.google.common.cache.q<K, V> qVar2 = this.f12516e;
                if (qVar2 == null) {
                    return false;
                }
                if (b(qVar2)) {
                    return true;
                }
                qVar = this.f12516e;
            }
        }

        boolean e() {
            while (true) {
                int i9 = this.f12513b;
                if (i9 < 0) {
                    return false;
                }
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12515d;
                this.f12513b = i9 - 1;
                com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(i9);
                this.f12516e = qVar;
                if (qVar != null && (b(qVar) || d())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12517f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.o.z(this.f12518g != null);
            k.this.remove(this.f12518g.getKey());
            this.f12518g = null;
        }
    }

    /* loaded from: classes2.dex */
    static final class j0<K, V> extends y<K, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f12520b;

        j0(V v10, int i9) {
            super(v10);
            this.f12520b = i9;
        }

        @Override // com.google.common.cache.k.y, com.google.common.cache.k.b0
        public int c() {
            return this.f12520b;
        }
    }

    /* renamed from: com.google.common.cache.k$k  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    final class C0105k extends k<K, V>.j<K> {
        C0105k(k kVar) {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return c().getKey();
        }
    }

    /* loaded from: classes2.dex */
    static final class k0<K, V> extends g0<K, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f12521b;

        k0(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar, int i9) {
            super(referenceQueue, v10, qVar);
            this.f12521b = i9;
        }

        @Override // com.google.common.cache.k.g0, com.google.common.cache.k.b0
        public int c() {
            return this.f12521b;
        }

        @Override // com.google.common.cache.k.g0, com.google.common.cache.k.b0
        public b0<K, V> d(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar) {
            return new k0(referenceQueue, v10, qVar, this.f12521b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class l extends k<K, V>.c<K> {
        l() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return k.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C0105k(k.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return k.this.remove(obj) != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class l0<K, V> extends AbstractQueue<com.google.common.cache.q<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final com.google.common.cache.q<K, V> f12523a = new a(this);

        /* loaded from: classes2.dex */
        class a extends d<K, V> {

            /* renamed from: a  reason: collision with root package name */
            com.google.common.cache.q<K, V> f12524a = this;

            /* renamed from: b  reason: collision with root package name */
            com.google.common.cache.q<K, V> f12525b = this;

            a(l0 l0Var) {
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public com.google.common.cache.q<K, V> e() {
                return this.f12524a;
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public com.google.common.cache.q<K, V> h() {
                return this.f12525b;
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public long j() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public void m(long j10) {
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public void p(com.google.common.cache.q<K, V> qVar) {
                this.f12524a = qVar;
            }

            @Override // com.google.common.cache.k.d, com.google.common.cache.q
            public void q(com.google.common.cache.q<K, V> qVar) {
                this.f12525b = qVar;
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.s<com.google.common.cache.q<K, V>> {
            b(com.google.common.cache.q qVar) {
                super(qVar);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.s
            /* renamed from: b */
            public com.google.common.cache.q<K, V> a(com.google.common.cache.q<K, V> qVar) {
                com.google.common.cache.q<K, V> e10 = qVar.e();
                if (e10 == l0.this.f12523a) {
                    return null;
                }
                return e10;
            }
        }

        l0() {
        }

        @Override // java.util.Queue
        /* renamed from: c */
        public boolean offer(com.google.common.cache.q<K, V> qVar) {
            k.f(qVar.h(), qVar.e());
            k.f(this.f12523a.h(), qVar);
            k.f(qVar, this.f12523a);
            return true;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            com.google.common.cache.q<K, V> e10 = this.f12523a.e();
            while (true) {
                com.google.common.cache.q<K, V> qVar = this.f12523a;
                if (e10 != qVar) {
                    com.google.common.cache.q<K, V> e11 = e10.e();
                    k.y(e10);
                    e10 = e11;
                } else {
                    qVar.p(qVar);
                    com.google.common.cache.q<K, V> qVar2 = this.f12523a;
                    qVar2.q(qVar2);
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((com.google.common.cache.q) obj).e() != r.INSTANCE;
        }

        @Override // java.util.Queue
        /* renamed from: d */
        public com.google.common.cache.q<K, V> peek() {
            com.google.common.cache.q<K, V> e10 = this.f12523a.e();
            if (e10 == this.f12523a) {
                return null;
            }
            return e10;
        }

        @Override // java.util.Queue
        /* renamed from: f */
        public com.google.common.cache.q<K, V> poll() {
            com.google.common.cache.q<K, V> e10 = this.f12523a.e();
            if (e10 == this.f12523a) {
                return null;
            }
            remove(e10);
            return e10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f12523a.e() == this.f12523a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<com.google.common.cache.q<K, V>> iterator() {
            return new b(peek());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            com.google.common.cache.q qVar = (com.google.common.cache.q) obj;
            com.google.common.cache.q<K, V> h10 = qVar.h();
            com.google.common.cache.q<K, V> e10 = qVar.e();
            k.f(h10, e10);
            k.y(qVar);
            return e10 != r.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i9 = 0;
            for (com.google.common.cache.q<K, V> e10 = this.f12523a.e(); e10 != this.f12523a; e10 = e10.e()) {
                i9++;
            }
            return i9;
        }
    }

    /* loaded from: classes2.dex */
    static final class m<K, V> extends q<K, V> implements com.google.common.cache.g<K, V> {
        private static final long serialVersionUID = 1;

        /* renamed from: n  reason: collision with root package name */
        transient com.google.common.cache.g<K, V> f12527n;

        m(k<K, V> kVar) {
            super(kVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f12527n = (com.google.common.cache.g<K, V>) y0().b((CacheLoader<? super K, V>) this.f12547l);
        }

        private Object readResolve() {
            return this.f12527n;
        }

        @Override // com.google.common.cache.g, com.google.common.base.h, java.util.function.Function
        public final V apply(K k10) {
            return this.f12527n.apply(k10);
        }

        @Override // com.google.common.cache.g
        public V get(K k10) throws ExecutionException {
            return this.f12527n.get(k10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class m0 implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f12528a;

        /* renamed from: b  reason: collision with root package name */
        V f12529b;

        m0(K k10, V v10) {
            this.f12528a = k10;
            this.f12529b = v10;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f12528a.equals(entry.getKey()) && this.f12529b.equals(entry.getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f12528a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f12529b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f12528a.hashCode() ^ this.f12529b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = (V) k.this.put(this.f12528a, v10);
            this.f12529b = v10;
            return v11;
        }

        public String toString() {
            String valueOf = String.valueOf(getKey());
            String valueOf2 = String.valueOf(getValue());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(valueOf2);
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class n<K, V> implements b0<K, V> {

        /* renamed from: a  reason: collision with root package name */
        volatile b0<K, V> f12531a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.util.concurrent.k0<V> f12532b;

        /* renamed from: c  reason: collision with root package name */
        final com.google.common.base.u f12533c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements com.google.common.base.h<V, V> {
            a() {
            }

            @Override // com.google.common.base.h, java.util.function.Function
            public V apply(V v10) {
                n.this.k(v10);
                return v10;
            }
        }

        public n() {
            this(null);
        }

        private com.google.common.util.concurrent.d0<V> h(Throwable th2) {
            return com.google.common.util.concurrent.y.c(th2);
        }

        @Override // com.google.common.cache.k.b0
        public com.google.common.cache.q<K, V> a() {
            return null;
        }

        @Override // com.google.common.cache.k.b0
        public void b(V v10) {
            if (v10 != null) {
                k(v10);
            } else {
                this.f12531a = k.K();
            }
        }

        @Override // com.google.common.cache.k.b0
        public int c() {
            return this.f12531a.c();
        }

        @Override // com.google.common.cache.k.b0
        public b0<K, V> d(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar) {
            return this;
        }

        @Override // com.google.common.cache.k.b0
        public V e() throws ExecutionException {
            return (V) n0.a(this.f12532b);
        }

        public V f(K k10, BiFunction<? super K, ? super V, ? extends V> biFunction) {
            V v10;
            this.f12533c.g();
            try {
                v10 = this.f12531a.e();
            } catch (ExecutionException unused) {
                v10 = (Object) null;
            }
            try {
                V apply = biFunction.apply(k10, v10);
                k(apply);
                return apply;
            } catch (Throwable th2) {
                l(th2);
                throw th2;
            }
        }

        public long g() {
            return this.f12533c.d(TimeUnit.NANOSECONDS);
        }

        @Override // com.google.common.cache.k.b0
        public V get() {
            return this.f12531a.get();
        }

        public b0<K, V> i() {
            return this.f12531a;
        }

        @Override // com.google.common.cache.k.b0
        public boolean isActive() {
            return this.f12531a.isActive();
        }

        @Override // com.google.common.cache.k.b0
        public boolean isLoading() {
            return true;
        }

        public com.google.common.util.concurrent.d0<V> j(K k10, CacheLoader<? super K, V> cacheLoader) {
            try {
                this.f12533c.g();
                V v10 = this.f12531a.get();
                if (v10 == null) {
                    V a10 = cacheLoader.a(k10);
                    return k(a10) ? this.f12532b : com.google.common.util.concurrent.y.d(a10);
                }
                com.google.common.util.concurrent.d0<V> b10 = cacheLoader.b(k10, v10);
                if (b10 == null) {
                    return com.google.common.util.concurrent.y.d(null);
                }
                return com.google.common.util.concurrent.y.e(b10, new a(), com.google.common.util.concurrent.h0.a());
            } catch (Throwable th2) {
                com.google.common.util.concurrent.d0<V> h10 = l(th2) ? this.f12532b : h(th2);
                if (th2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return h10;
            }
        }

        public boolean k(V v10) {
            return this.f12532b.R(v10);
        }

        public boolean l(Throwable th2) {
            return this.f12532b.S(th2);
        }

        public n(b0<K, V> b0Var) {
            this.f12532b = com.google.common.util.concurrent.k0.V();
            this.f12533c = com.google.common.base.u.c();
            this.f12531a = b0Var == null ? k.K() : b0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class o<K, V> extends p<K, V> implements com.google.common.cache.g<K, V> {
        private static final long serialVersionUID = 1;

        /* JADX INFO: Access modifiers changed from: package-private */
        public o(com.google.common.cache.d<? super K, ? super V> dVar, CacheLoader<? super K, V> cacheLoader) {
            super(new k(dVar, (CacheLoader) com.google.common.base.o.s(cacheLoader)), null);
        }

        public V a(K k10) {
            try {
                return get(k10);
            } catch (ExecutionException e10) {
                throw new UncheckedExecutionException(e10.getCause());
            }
        }

        @Override // com.google.common.cache.g, com.google.common.base.h, java.util.function.Function
        public final V apply(K k10) {
            return a(k10);
        }

        @Override // com.google.common.cache.g
        public V get(K k10) throws ExecutionException {
            return this.f12535a.o(k10);
        }

        @Override // com.google.common.cache.k.p
        Object writeReplace() {
            return new m(this.f12535a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class p<K, V> implements com.google.common.cache.c<K, V>, Serializable {
        private static final long serialVersionUID = 1;

        /* renamed from: a  reason: collision with root package name */
        final k<K, V> f12535a;

        /* synthetic */ p(k kVar, a aVar) {
            this(kVar);
        }

        @Override // com.google.common.cache.c
        public void v0() {
            this.f12535a.clear();
        }

        Object writeReplace() {
            return new q(this.f12535a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public p(com.google.common.cache.d<? super K, ? super V> dVar) {
            this(new k(dVar, null));
        }

        private p(k<K, V> kVar) {
            this.f12535a = kVar;
        }
    }

    /* loaded from: classes2.dex */
    static class q<K, V> extends com.google.common.cache.f<K, V> implements Serializable {
        private static final long serialVersionUID = 1;

        /* renamed from: a  reason: collision with root package name */
        final u f12536a;

        /* renamed from: b  reason: collision with root package name */
        final u f12537b;

        /* renamed from: c  reason: collision with root package name */
        final Equivalence<Object> f12538c;

        /* renamed from: d  reason: collision with root package name */
        final Equivalence<Object> f12539d;

        /* renamed from: e  reason: collision with root package name */
        final long f12540e;

        /* renamed from: f  reason: collision with root package name */
        final long f12541f;

        /* renamed from: g  reason: collision with root package name */
        final long f12542g;

        /* renamed from: h  reason: collision with root package name */
        final com.google.common.cache.t<K, V> f12543h;

        /* renamed from: i  reason: collision with root package name */
        final int f12544i;

        /* renamed from: j  reason: collision with root package name */
        final com.google.common.cache.r<? super K, ? super V> f12545j;

        /* renamed from: k  reason: collision with root package name */
        final com.google.common.base.z f12546k;

        /* renamed from: l  reason: collision with root package name */
        final CacheLoader<? super K, V> f12547l;

        /* renamed from: m  reason: collision with root package name */
        transient com.google.common.cache.c<K, V> f12548m;

        q(k<K, V> kVar) {
            this(kVar.f12462g, kVar.f12463h, kVar.f12460e, kVar.f12461f, kVar.f12467l, kVar.f12466k, kVar.f12464i, kVar.f12465j, kVar.f12459d, kVar.f12470o, kVar.f12471p, kVar.f12474s);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f12548m = (com.google.common.cache.c<K, V>) y0().a();
        }

        private Object readResolve() {
            return this.f12548m;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.w3
        /* renamed from: w0 */
        public com.google.common.cache.c<K, V> delegate() {
            return this.f12548m;
        }

        com.google.common.cache.d<K, V> y0() {
            com.google.common.cache.d<K, V> dVar = (com.google.common.cache.d<K, V>) com.google.common.cache.d.y().A(this.f12536a).B(this.f12537b).v(this.f12538c).D(this.f12539d).e(this.f12544i).z((com.google.common.cache.r<? super K, ? super V>) this.f12545j);
            dVar.f12422a = false;
            long j10 = this.f12540e;
            if (j10 > 0) {
                dVar.g(j10, TimeUnit.NANOSECONDS);
            }
            long j11 = this.f12541f;
            if (j11 > 0) {
                dVar.f(j11, TimeUnit.NANOSECONDS);
            }
            com.google.common.cache.t tVar = this.f12543h;
            if (tVar != d.e.INSTANCE) {
                dVar.E(tVar);
                long j12 = this.f12542g;
                if (j12 != -1) {
                    dVar.x(j12);
                }
            } else {
                long j13 = this.f12542g;
                if (j13 != -1) {
                    dVar.w(j13);
                }
            }
            com.google.common.base.z zVar = this.f12546k;
            if (zVar != null) {
                dVar.C(zVar);
            }
            return dVar;
        }

        private q(u uVar, u uVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j10, long j11, long j12, com.google.common.cache.t<K, V> tVar, int i9, com.google.common.cache.r<? super K, ? super V> rVar, com.google.common.base.z zVar, CacheLoader<? super K, V> cacheLoader) {
            this.f12536a = uVar;
            this.f12537b = uVar2;
            this.f12538c = equivalence;
            this.f12539d = equivalence2;
            this.f12540e = j10;
            this.f12541f = j11;
            this.f12542g = j12;
            this.f12543h = tVar;
            this.f12544i = i9;
            this.f12545j = rVar;
            this.f12546k = (zVar == com.google.common.base.z.b() || zVar == com.google.common.cache.d.f12420t) ? null : null;
            this.f12547l = cacheLoader;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum r implements com.google.common.cache.q<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.q
        public b0<Object, Object> a() {
            return null;
        }

        @Override // com.google.common.cache.q
        public int b() {
            return 0;
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<Object, Object> c() {
            return null;
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<Object, Object> d() {
            return this;
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<Object, Object> e() {
            return this;
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<Object, Object> f() {
            return this;
        }

        @Override // com.google.common.cache.q
        public void g(com.google.common.cache.q<Object, Object> qVar) {
        }

        @Override // com.google.common.cache.q
        public Object getKey() {
            return null;
        }

        @Override // com.google.common.cache.q
        public com.google.common.cache.q<Object, Object> h() {
            return this;
        }

        @Override // com.google.common.cache.q
        public void i(b0<Object, Object> b0Var) {
        }

        @Override // com.google.common.cache.q
        public long j() {
            return 0L;
        }

        @Override // com.google.common.cache.q
        public void k(long j10) {
        }

        @Override // com.google.common.cache.q
        public long l() {
            return 0L;
        }

        @Override // com.google.common.cache.q
        public void m(long j10) {
        }

        @Override // com.google.common.cache.q
        public void o(com.google.common.cache.q<Object, Object> qVar) {
        }

        @Override // com.google.common.cache.q
        public void p(com.google.common.cache.q<Object, Object> qVar) {
        }

        @Override // com.google.common.cache.q
        public void q(com.google.common.cache.q<Object, Object> qVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class s<K, V> extends ReentrantLock {

        /* renamed from: a  reason: collision with root package name */
        final k<K, V> f12551a;

        /* renamed from: b  reason: collision with root package name */
        volatile int f12552b;

        /* renamed from: c  reason: collision with root package name */
        long f12553c;

        /* renamed from: d  reason: collision with root package name */
        int f12554d;

        /* renamed from: e  reason: collision with root package name */
        int f12555e;

        /* renamed from: f  reason: collision with root package name */
        volatile AtomicReferenceArray<com.google.common.cache.q<K, V>> f12556f;

        /* renamed from: g  reason: collision with root package name */
        final long f12557g;

        /* renamed from: h  reason: collision with root package name */
        final ReferenceQueue<K> f12558h;

        /* renamed from: i  reason: collision with root package name */
        final ReferenceQueue<V> f12559i;

        /* renamed from: j  reason: collision with root package name */
        final Queue<com.google.common.cache.q<K, V>> f12560j;

        /* renamed from: k  reason: collision with root package name */
        final AtomicInteger f12561k = new AtomicInteger();

        /* renamed from: l  reason: collision with root package name */
        final Queue<com.google.common.cache.q<K, V>> f12562l;

        /* renamed from: m  reason: collision with root package name */
        final Queue<com.google.common.cache.q<K, V>> f12563m;

        /* renamed from: n  reason: collision with root package name */
        final com.google.common.cache.b f12564n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f12565a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f12566b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ n f12567c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ com.google.common.util.concurrent.d0 f12568d;

            a(Object obj, int i9, n nVar, com.google.common.util.concurrent.d0 d0Var) {
                this.f12565a = obj;
                this.f12566b = i9;
                this.f12567c = nVar;
                this.f12568d = d0Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    s.this.s(this.f12565a, this.f12566b, this.f12567c, this.f12568d);
                } catch (Throwable th2) {
                    k.f12453w.log(Level.WARNING, "Exception thrown during refresh", th2);
                    this.f12567c.l(th2);
                }
            }
        }

        s(k<K, V> kVar, int i9, long j10, com.google.common.cache.b bVar) {
            Queue<com.google.common.cache.q<K, V>> i10;
            Queue<com.google.common.cache.q<K, V>> i11;
            Queue<com.google.common.cache.q<K, V>> i12;
            this.f12551a = kVar;
            this.f12557g = j10;
            this.f12564n = (com.google.common.cache.b) com.google.common.base.o.s(bVar);
            z(F(i9));
            this.f12558h = kVar.N() ? new ReferenceQueue<>() : null;
            this.f12559i = kVar.O() ? new ReferenceQueue<>() : null;
            if (kVar.M()) {
                i10 = new ConcurrentLinkedQueue<>();
            } else {
                i10 = k.i();
            }
            this.f12560j = i10;
            if (kVar.Q()) {
                i11 = new l0<>();
            } else {
                i11 = k.i();
            }
            this.f12562l = i11;
            if (kVar.M()) {
                i12 = new e<>();
            } else {
                i12 = k.i();
            }
            this.f12563m = i12;
        }

        n<K, V> A(K k10, int i9, boolean z10) {
            lock();
            try {
                long a10 = this.f12551a.f12471p.a();
                I(a10);
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
                int length = (atomicReferenceArray.length() - 1) & i9;
                com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(length);
                for (com.google.common.cache.q<K, V> qVar2 = qVar; qVar2 != null; qVar2 = qVar2.c()) {
                    K key = qVar2.getKey();
                    if (qVar2.b() == i9 && key != null && this.f12551a.f12460e.d(k10, key)) {
                        b0<K, V> a11 = qVar2.a();
                        if (!a11.isLoading() && (!z10 || a10 - qVar2.j() >= this.f12551a.f12468m)) {
                            this.f12554d++;
                            n<K, V> nVar = new n<>(a11);
                            qVar2.i(nVar);
                            return nVar;
                        }
                        return null;
                    }
                }
                this.f12554d++;
                n<K, V> nVar2 = new n<>();
                com.google.common.cache.q<K, V> E = E(k10, i9, qVar);
                E.i(nVar2);
                atomicReferenceArray.set(length, E);
                return nVar2;
            } finally {
                unlock();
                H();
            }
        }

        com.google.common.util.concurrent.d0<V> B(K k10, int i9, n<K, V> nVar, CacheLoader<? super K, V> cacheLoader) {
            com.google.common.util.concurrent.d0<V> j10 = nVar.j(k10, cacheLoader);
            j10.addListener(new a(k10, i9, nVar, j10), com.google.common.util.concurrent.h0.a());
            return j10;
        }

        V C(K k10, int i9, n<K, V> nVar, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            return s(k10, i9, nVar, nVar.j(k10, cacheLoader));
        }

        V D(K k10, int i9, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            n<K, V> nVar;
            b0<K, V> b0Var;
            boolean z10;
            V C;
            lock();
            try {
                long a10 = this.f12551a.f12471p.a();
                I(a10);
                int i10 = this.f12552b - 1;
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
                int length = i9 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(length);
                com.google.common.cache.q<K, V> qVar2 = qVar;
                while (true) {
                    nVar = null;
                    if (qVar2 == null) {
                        b0Var = null;
                        break;
                    }
                    K key = qVar2.getKey();
                    if (qVar2.b() == i9 && key != null && this.f12551a.f12460e.d(k10, key)) {
                        b0<K, V> a11 = qVar2.a();
                        if (a11.isLoading()) {
                            z10 = false;
                            b0Var = a11;
                        } else {
                            V v10 = a11.get();
                            if (v10 == null) {
                                m(key, i9, v10, a11.c(), RemovalCause.COLLECTED);
                            } else if (this.f12551a.q(qVar2, a10)) {
                                m(key, i9, v10, a11.c(), RemovalCause.EXPIRED);
                            } else {
                                N(qVar2, a10);
                                this.f12564n.a(1);
                                return v10;
                            }
                            this.f12562l.remove(qVar2);
                            this.f12563m.remove(qVar2);
                            this.f12552b = i10;
                            b0Var = a11;
                        }
                    } else {
                        qVar2 = qVar2.c();
                    }
                }
                z10 = true;
                if (z10) {
                    nVar = new n<>();
                    if (qVar2 == null) {
                        qVar2 = E(k10, i9, qVar);
                        qVar2.i(nVar);
                        atomicReferenceArray.set(length, qVar2);
                    } else {
                        qVar2.i(nVar);
                    }
                }
                if (z10) {
                    try {
                        synchronized (qVar2) {
                            C = C(k10, i9, nVar, cacheLoader);
                        }
                        return C;
                    } finally {
                        this.f12564n.b(1);
                    }
                }
                return h0(qVar2, k10, b0Var);
            } finally {
                unlock();
                H();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        com.google.common.cache.q<K, V> E(K k10, int i9, com.google.common.cache.q<K, V> qVar) {
            return this.f12551a.f12472q.f(this, com.google.common.base.o.s(k10), i9, qVar);
        }

        AtomicReferenceArray<com.google.common.cache.q<K, V>> F(int i9) {
            return new AtomicReferenceArray<>(i9);
        }

        void G() {
            if ((this.f12561k.incrementAndGet() & 63) == 0) {
                a();
            }
        }

        void H() {
            b0();
        }

        void I(long j10) {
            a0(j10);
        }

        V J(K k10, int i9, V v10, boolean z10) {
            int i10;
            lock();
            try {
                long a10 = this.f12551a.f12471p.a();
                I(a10);
                if (this.f12552b + 1 > this.f12555e) {
                    o();
                }
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
                int length = i9 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(length);
                com.google.common.cache.q<K, V> qVar2 = qVar;
                while (true) {
                    if (qVar2 != null) {
                        K key = qVar2.getKey();
                        if (qVar2.b() == i9 && key != null && this.f12551a.f12460e.d(k10, key)) {
                            b0<K, V> a11 = qVar2.a();
                            V v11 = a11.get();
                            if (v11 != null) {
                                if (z10) {
                                    N(qVar2, a10);
                                } else {
                                    this.f12554d++;
                                    m(k10, i9, v11, a11.c(), RemovalCause.REPLACED);
                                    d0(qVar2, k10, v10, a10);
                                    n(qVar2);
                                }
                                return v11;
                            }
                            this.f12554d++;
                            if (a11.isActive()) {
                                m(k10, i9, v11, a11.c(), RemovalCause.COLLECTED);
                                d0(qVar2, k10, v10, a10);
                                i10 = this.f12552b;
                            } else {
                                d0(qVar2, k10, v10, a10);
                                i10 = this.f12552b + 1;
                            }
                            this.f12552b = i10;
                            n(qVar2);
                        } else {
                            qVar2 = qVar2.c();
                        }
                    } else {
                        this.f12554d++;
                        com.google.common.cache.q<K, V> E = E(k10, i9, qVar);
                        d0(E, k10, v10, a10);
                        atomicReferenceArray.set(length, E);
                        this.f12552b++;
                        n(E);
                        break;
                    }
                }
                return null;
            } finally {
                unlock();
                H();
            }
        }

        boolean K(com.google.common.cache.q<K, V> qVar, int i9) {
            lock();
            try {
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
                int length = (atomicReferenceArray.length() - 1) & i9;
                com.google.common.cache.q<K, V> qVar2 = atomicReferenceArray.get(length);
                for (com.google.common.cache.q<K, V> qVar3 = qVar2; qVar3 != null; qVar3 = qVar3.c()) {
                    if (qVar3 == qVar) {
                        this.f12554d++;
                        atomicReferenceArray.set(length, X(qVar2, qVar3, qVar3.getKey(), i9, qVar3.a().get(), qVar3.a(), RemovalCause.COLLECTED));
                        this.f12552b--;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                H();
            }
        }

        boolean L(K k10, int i9, b0<K, V> b0Var) {
            lock();
            try {
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
                int length = (atomicReferenceArray.length() - 1) & i9;
                com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(length);
                for (com.google.common.cache.q<K, V> qVar2 = qVar; qVar2 != null; qVar2 = qVar2.c()) {
                    K key = qVar2.getKey();
                    if (qVar2.b() == i9 && key != null && this.f12551a.f12460e.d(k10, key)) {
                        if (qVar2.a() == b0Var) {
                            this.f12554d++;
                            atomicReferenceArray.set(length, X(qVar, qVar2, key, i9, b0Var.get(), b0Var, RemovalCause.COLLECTED));
                            this.f12552b--;
                            return true;
                        }
                        unlock();
                        if (!isHeldByCurrentThread()) {
                            H();
                        }
                        return false;
                    }
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    H();
                }
                return false;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    H();
                }
            }
        }

        void N(com.google.common.cache.q<K, V> qVar, long j10) {
            if (this.f12551a.C()) {
                qVar.k(j10);
            }
            this.f12563m.add(qVar);
        }

        void O(com.google.common.cache.q<K, V> qVar, long j10) {
            if (this.f12551a.C()) {
                qVar.k(j10);
            }
            this.f12560j.add(qVar);
        }

        void P(com.google.common.cache.q<K, V> qVar, int i9, long j10) {
            j();
            this.f12553c += i9;
            if (this.f12551a.C()) {
                qVar.k(j10);
            }
            if (this.f12551a.E()) {
                qVar.m(j10);
            }
            this.f12563m.add(qVar);
            this.f12562l.add(qVar);
        }

        V Q(K k10, int i9, CacheLoader<? super K, V> cacheLoader, boolean z10) {
            n<K, V> A = A(k10, i9, z10);
            if (A == null) {
                return null;
            }
            com.google.common.util.concurrent.d0<V> B = B(k10, i9, A, cacheLoader);
            if (B.isDone()) {
                try {
                    return (V) n0.a(B);
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
            r9 = r5.a();
            r12 = r9.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
            if (r12 == null) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
            r2 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
            r10 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
            if (r9.isActive() == false) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
            r2 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
            r11.f12554d++;
            r0.set(r1, X(r4, r5, r6, r13, r12, r9, r10));
            r11.f12552b--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
            return r12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        V R(java.lang.Object r12, int r13) {
            /*
                r11 = this;
                r11.lock()
                com.google.common.cache.k<K, V> r0 = r11.f12551a     // Catch: java.lang.Throwable -> L78
                com.google.common.base.z r0 = r0.f12471p     // Catch: java.lang.Throwable -> L78
                long r0 = r0.a()     // Catch: java.lang.Throwable -> L78
                r11.I(r0)     // Catch: java.lang.Throwable -> L78
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.q<K, V>> r0 = r11.f12556f     // Catch: java.lang.Throwable -> L78
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L78
                int r1 = r1 + (-1)
                r1 = r1 & r13
                java.lang.Object r2 = r0.get(r1)     // Catch: java.lang.Throwable -> L78
                r4 = r2
                com.google.common.cache.q r4 = (com.google.common.cache.q) r4     // Catch: java.lang.Throwable -> L78
                r5 = r4
            L1f:
                r2 = 0
                if (r5 == 0) goto L6c
                java.lang.Object r6 = r5.getKey()     // Catch: java.lang.Throwable -> L78
                int r3 = r5.b()     // Catch: java.lang.Throwable -> L78
                if (r3 != r13) goto L73
                if (r6 == 0) goto L73
                com.google.common.cache.k<K, V> r3 = r11.f12551a     // Catch: java.lang.Throwable -> L78
                com.google.common.base.Equivalence<java.lang.Object> r3 = r3.f12460e     // Catch: java.lang.Throwable -> L78
                boolean r3 = r3.d(r12, r6)     // Catch: java.lang.Throwable -> L78
                if (r3 == 0) goto L73
                com.google.common.cache.k$b0 r9 = r5.a()     // Catch: java.lang.Throwable -> L78
                java.lang.Object r12 = r9.get()     // Catch: java.lang.Throwable -> L78
                if (r12 == 0) goto L46
                com.google.common.cache.RemovalCause r2 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: java.lang.Throwable -> L78
            L44:
                r10 = r2
                goto L4f
            L46:
                boolean r3 = r9.isActive()     // Catch: java.lang.Throwable -> L78
                if (r3 == 0) goto L6c
                com.google.common.cache.RemovalCause r2 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> L78
                goto L44
            L4f:
                int r2 = r11.f12554d     // Catch: java.lang.Throwable -> L78
                int r2 = r2 + 1
                r11.f12554d = r2     // Catch: java.lang.Throwable -> L78
                r3 = r11
                r7 = r13
                r8 = r12
                com.google.common.cache.q r13 = r3.X(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L78
                int r2 = r11.f12552b     // Catch: java.lang.Throwable -> L78
                int r2 = r2 + (-1)
                r0.set(r1, r13)     // Catch: java.lang.Throwable -> L78
                r11.f12552b = r2     // Catch: java.lang.Throwable -> L78
                r11.unlock()
                r11.H()
                return r12
            L6c:
                r11.unlock()
                r11.H()
                return r2
            L73:
                com.google.common.cache.q r5 = r5.c()     // Catch: java.lang.Throwable -> L78
                goto L1f
            L78:
                r12 = move-exception
                r11.unlock()
                r11.H()
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.k.s.R(java.lang.Object, int):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
            r10 = r6.a();
            r9 = r10.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
            if (r12.f12551a.f12461f.d(r15, r9) == false) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
            r13 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
            if (r9 != null) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
            if (r10.isActive() == false) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
            r13 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
            r12.f12554d++;
            r0.set(r1, X(r5, r6, r7, r14, r9, r10, r13));
            r12.f12552b--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x006d, code lost:
            if (r13 != com.google.common.cache.RemovalCause.EXPLICIT) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
            r2 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0077, code lost:
            return r2;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean S(java.lang.Object r13, int r14, java.lang.Object r15) {
            /*
                r12 = this;
                r12.lock()
                com.google.common.cache.k<K, V> r0 = r12.f12551a     // Catch: java.lang.Throwable -> L84
                com.google.common.base.z r0 = r0.f12471p     // Catch: java.lang.Throwable -> L84
                long r0 = r0.a()     // Catch: java.lang.Throwable -> L84
                r12.I(r0)     // Catch: java.lang.Throwable -> L84
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.q<K, V>> r0 = r12.f12556f     // Catch: java.lang.Throwable -> L84
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L84
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r14
                java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L84
                r5 = r3
                com.google.common.cache.q r5 = (com.google.common.cache.q) r5     // Catch: java.lang.Throwable -> L84
                r6 = r5
            L1f:
                r3 = 0
                if (r6 == 0) goto L78
                java.lang.Object r7 = r6.getKey()     // Catch: java.lang.Throwable -> L84
                int r4 = r6.b()     // Catch: java.lang.Throwable -> L84
                if (r4 != r14) goto L7f
                if (r7 == 0) goto L7f
                com.google.common.cache.k<K, V> r4 = r12.f12551a     // Catch: java.lang.Throwable -> L84
                com.google.common.base.Equivalence<java.lang.Object> r4 = r4.f12460e     // Catch: java.lang.Throwable -> L84
                boolean r4 = r4.d(r13, r7)     // Catch: java.lang.Throwable -> L84
                if (r4 == 0) goto L7f
                com.google.common.cache.k$b0 r10 = r6.a()     // Catch: java.lang.Throwable -> L84
                java.lang.Object r9 = r10.get()     // Catch: java.lang.Throwable -> L84
                com.google.common.cache.k<K, V> r13 = r12.f12551a     // Catch: java.lang.Throwable -> L84
                com.google.common.base.Equivalence<java.lang.Object> r13 = r13.f12461f     // Catch: java.lang.Throwable -> L84
                boolean r13 = r13.d(r15, r9)     // Catch: java.lang.Throwable -> L84
                if (r13 == 0) goto L4d
                com.google.common.cache.RemovalCause r13 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: java.lang.Throwable -> L84
                goto L57
            L4d:
                if (r9 != 0) goto L78
                boolean r13 = r10.isActive()     // Catch: java.lang.Throwable -> L84
                if (r13 == 0) goto L78
                com.google.common.cache.RemovalCause r13 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> L84
            L57:
                int r15 = r12.f12554d     // Catch: java.lang.Throwable -> L84
                int r15 = r15 + r2
                r12.f12554d = r15     // Catch: java.lang.Throwable -> L84
                r4 = r12
                r8 = r14
                r11 = r13
                com.google.common.cache.q r14 = r4.X(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L84
                int r15 = r12.f12552b     // Catch: java.lang.Throwable -> L84
                int r15 = r15 - r2
                r0.set(r1, r14)     // Catch: java.lang.Throwable -> L84
                r12.f12552b = r15     // Catch: java.lang.Throwable -> L84
                com.google.common.cache.RemovalCause r14 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: java.lang.Throwable -> L84
                if (r13 != r14) goto L70
                goto L71
            L70:
                r2 = 0
            L71:
                r12.unlock()
                r12.H()
                return r2
            L78:
                r12.unlock()
                r12.H()
                return r3
            L7f:
                com.google.common.cache.q r6 = r6.c()     // Catch: java.lang.Throwable -> L84
                goto L1f
            L84:
                r13 = move-exception
                r12.unlock()
                r12.H()
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.k.s.S(java.lang.Object, int, java.lang.Object):boolean");
        }

        void T(com.google.common.cache.q<K, V> qVar) {
            m(qVar.getKey(), qVar.b(), qVar.a().get(), qVar.a().c(), RemovalCause.COLLECTED);
            this.f12562l.remove(qVar);
            this.f12563m.remove(qVar);
        }

        boolean U(com.google.common.cache.q<K, V> qVar, int i9, RemovalCause removalCause) {
            AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
            int length = (atomicReferenceArray.length() - 1) & i9;
            com.google.common.cache.q<K, V> qVar2 = atomicReferenceArray.get(length);
            for (com.google.common.cache.q<K, V> qVar3 = qVar2; qVar3 != null; qVar3 = qVar3.c()) {
                if (qVar3 == qVar) {
                    this.f12554d++;
                    atomicReferenceArray.set(length, X(qVar2, qVar3, qVar3.getKey(), i9, qVar3.a().get(), qVar3.a(), removalCause));
                    this.f12552b--;
                    return true;
                }
            }
            return false;
        }

        com.google.common.cache.q<K, V> V(com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
            int i9 = this.f12552b;
            com.google.common.cache.q<K, V> c10 = qVar2.c();
            while (qVar != qVar2) {
                com.google.common.cache.q<K, V> h10 = h(qVar, c10);
                if (h10 != null) {
                    c10 = h10;
                } else {
                    T(qVar);
                    i9--;
                }
                qVar = qVar.c();
            }
            this.f12552b = i9;
            return c10;
        }

        boolean W(K k10, int i9, n<K, V> nVar) {
            lock();
            try {
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
                int length = (atomicReferenceArray.length() - 1) & i9;
                com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(length);
                com.google.common.cache.q<K, V> qVar2 = qVar;
                while (true) {
                    if (qVar2 == null) {
                        break;
                    }
                    K key = qVar2.getKey();
                    if (qVar2.b() == i9 && key != null && this.f12551a.f12460e.d(k10, key)) {
                        if (qVar2.a() == nVar) {
                            if (nVar.isActive()) {
                                qVar2.i(nVar.i());
                            } else {
                                atomicReferenceArray.set(length, V(qVar, qVar2));
                            }
                            return true;
                        }
                    } else {
                        qVar2 = qVar2.c();
                    }
                }
                return false;
            } finally {
                unlock();
                H();
            }
        }

        com.google.common.cache.q<K, V> X(com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2, K k10, int i9, V v10, b0<K, V> b0Var, RemovalCause removalCause) {
            m(k10, i9, v10, b0Var.c(), removalCause);
            this.f12562l.remove(qVar2);
            this.f12563m.remove(qVar2);
            if (b0Var.isLoading()) {
                b0Var.b(null);
                return qVar;
            }
            return V(qVar, qVar2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0072, code lost:
            return null;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        V Y(K r18, int r19, V r20) {
            /*
                r17 = this;
                r9 = r17
                r0 = r19
                r17.lock()
                com.google.common.cache.k<K, V> r1 = r9.f12551a     // Catch: java.lang.Throwable -> La7
                com.google.common.base.z r1 = r1.f12471p     // Catch: java.lang.Throwable -> La7
                long r7 = r1.a()     // Catch: java.lang.Throwable -> La7
                r9.I(r7)     // Catch: java.lang.Throwable -> La7
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.q<K, V>> r10 = r9.f12556f     // Catch: java.lang.Throwable -> La7
                int r1 = r10.length()     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + (-1)
                r11 = r0 & r1
                java.lang.Object r1 = r10.get(r11)     // Catch: java.lang.Throwable -> La7
                r2 = r1
                com.google.common.cache.q r2 = (com.google.common.cache.q) r2     // Catch: java.lang.Throwable -> La7
                r12 = r2
            L24:
                r13 = 0
                if (r12 == 0) goto L6c
                java.lang.Object r4 = r12.getKey()     // Catch: java.lang.Throwable -> La7
                int r1 = r12.b()     // Catch: java.lang.Throwable -> La7
                if (r1 != r0) goto L9f
                if (r4 == 0) goto L9f
                com.google.common.cache.k<K, V> r1 = r9.f12551a     // Catch: java.lang.Throwable -> La7
                com.google.common.base.Equivalence<java.lang.Object> r1 = r1.f12460e     // Catch: java.lang.Throwable -> La7
                r14 = r18
                boolean r1 = r1.d(r14, r4)     // Catch: java.lang.Throwable -> La7
                if (r1 == 0) goto La1
                com.google.common.cache.k$b0 r15 = r12.a()     // Catch: java.lang.Throwable -> La7
                java.lang.Object r16 = r15.get()     // Catch: java.lang.Throwable -> La7
                if (r16 != 0) goto L73
                boolean r1 = r15.isActive()     // Catch: java.lang.Throwable -> La7
                if (r1 == 0) goto L6c
                int r1 = r9.f12554d     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + 1
                r9.f12554d = r1     // Catch: java.lang.Throwable -> La7
                com.google.common.cache.RemovalCause r8 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> La7
                r1 = r17
                r3 = r12
                r5 = r19
                r6 = r16
                r7 = r15
                com.google.common.cache.q r0 = r1.X(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> La7
                int r1 = r9.f12552b     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + (-1)
                r10.set(r11, r0)     // Catch: java.lang.Throwable -> La7
                r9.f12552b = r1     // Catch: java.lang.Throwable -> La7
            L6c:
                r17.unlock()
                r17.H()
                return r13
            L73:
                int r1 = r9.f12554d     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + 1
                r9.f12554d = r1     // Catch: java.lang.Throwable -> La7
                int r5 = r15.c()     // Catch: java.lang.Throwable -> La7
                com.google.common.cache.RemovalCause r6 = com.google.common.cache.RemovalCause.REPLACED     // Catch: java.lang.Throwable -> La7
                r1 = r17
                r2 = r18
                r3 = r19
                r4 = r16
                r1.m(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> La7
                r1 = r17
                r2 = r12
                r3 = r18
                r4 = r20
                r5 = r7
                r1.d0(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> La7
                r9.n(r12)     // Catch: java.lang.Throwable -> La7
                r17.unlock()
                r17.H()
                return r16
            L9f:
                r14 = r18
            La1:
                com.google.common.cache.q r12 = r12.c()     // Catch: java.lang.Throwable -> La7
                goto L24
            La7:
                r0 = move-exception
                r17.unlock()
                r17.H()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.k.s.Y(java.lang.Object, int, java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean Z(K r18, int r19, V r20, V r21) {
            /*
                r17 = this;
                r9 = r17
                r0 = r19
                r17.lock()
                com.google.common.cache.k<K, V> r1 = r9.f12551a     // Catch: java.lang.Throwable -> Lb5
                com.google.common.base.z r1 = r1.f12471p     // Catch: java.lang.Throwable -> Lb5
                long r7 = r1.a()     // Catch: java.lang.Throwable -> Lb5
                r9.I(r7)     // Catch: java.lang.Throwable -> Lb5
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.q<K, V>> r10 = r9.f12556f     // Catch: java.lang.Throwable -> Lb5
                int r1 = r10.length()     // Catch: java.lang.Throwable -> Lb5
                r11 = 1
                int r1 = r1 - r11
                r12 = r0 & r1
                java.lang.Object r1 = r10.get(r12)     // Catch: java.lang.Throwable -> Lb5
                r2 = r1
                com.google.common.cache.q r2 = (com.google.common.cache.q) r2     // Catch: java.lang.Throwable -> Lb5
                r13 = r2
            L24:
                r14 = 0
                if (r13 == 0) goto L69
                java.lang.Object r4 = r13.getKey()     // Catch: java.lang.Throwable -> Lb5
                int r1 = r13.b()     // Catch: java.lang.Throwable -> Lb5
                if (r1 != r0) goto Lab
                if (r4 == 0) goto Lab
                com.google.common.cache.k<K, V> r1 = r9.f12551a     // Catch: java.lang.Throwable -> Lb5
                com.google.common.base.Equivalence<java.lang.Object> r1 = r1.f12460e     // Catch: java.lang.Throwable -> Lb5
                r15 = r18
                boolean r1 = r1.d(r15, r4)     // Catch: java.lang.Throwable -> Lb5
                if (r1 == 0) goto Lad
                com.google.common.cache.k$b0 r16 = r13.a()     // Catch: java.lang.Throwable -> Lb5
                java.lang.Object r6 = r16.get()     // Catch: java.lang.Throwable -> Lb5
                if (r6 != 0) goto L70
                boolean r1 = r16.isActive()     // Catch: java.lang.Throwable -> Lb5
                if (r1 == 0) goto L69
                int r1 = r9.f12554d     // Catch: java.lang.Throwable -> Lb5
                int r1 = r1 + r11
                r9.f12554d = r1     // Catch: java.lang.Throwable -> Lb5
                com.google.common.cache.RemovalCause r8 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> Lb5
                r1 = r17
                r3 = r13
                r5 = r19
                r7 = r16
                com.google.common.cache.q r0 = r1.X(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lb5
                int r1 = r9.f12552b     // Catch: java.lang.Throwable -> Lb5
                int r1 = r1 - r11
                r10.set(r12, r0)     // Catch: java.lang.Throwable -> Lb5
                r9.f12552b = r1     // Catch: java.lang.Throwable -> Lb5
            L69:
                r17.unlock()
                r17.H()
                return r14
            L70:
                com.google.common.cache.k<K, V> r1 = r9.f12551a     // Catch: java.lang.Throwable -> Lb5
                com.google.common.base.Equivalence<java.lang.Object> r1 = r1.f12461f     // Catch: java.lang.Throwable -> Lb5
                r3 = r20
                boolean r1 = r1.d(r3, r6)     // Catch: java.lang.Throwable -> Lb5
                if (r1 == 0) goto La7
                int r1 = r9.f12554d     // Catch: java.lang.Throwable -> Lb5
                int r1 = r1 + r11
                r9.f12554d = r1     // Catch: java.lang.Throwable -> Lb5
                int r5 = r16.c()     // Catch: java.lang.Throwable -> Lb5
                com.google.common.cache.RemovalCause r10 = com.google.common.cache.RemovalCause.REPLACED     // Catch: java.lang.Throwable -> Lb5
                r1 = r17
                r2 = r18
                r3 = r19
                r4 = r6
                r6 = r10
                r1.m(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> Lb5
                r1 = r17
                r2 = r13
                r3 = r18
                r4 = r21
                r5 = r7
                r1.d0(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lb5
                r9.n(r13)     // Catch: java.lang.Throwable -> Lb5
                r17.unlock()
                r17.H()
                return r11
            La7:
                r9.N(r13, r7)     // Catch: java.lang.Throwable -> Lb5
                goto L69
            Lab:
                r15 = r18
            Lad:
                r3 = r20
                com.google.common.cache.q r13 = r13.c()     // Catch: java.lang.Throwable -> Lb5
                goto L24
            Lb5:
                r0 = move-exception
                r17.unlock()
                r17.H()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.k.s.Z(java.lang.Object, int, java.lang.Object, java.lang.Object):boolean");
        }

        void a() {
            a0(this.f12551a.f12471p.a());
            b0();
        }

        void a0(long j10) {
            if (tryLock()) {
                try {
                    k();
                    p(j10);
                    this.f12561k.set(0);
                } finally {
                    unlock();
                }
            }
        }

        void b() {
            RemovalCause removalCause;
            if (this.f12552b != 0) {
                lock();
                try {
                    I(this.f12551a.f12471p.a());
                    AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
                    for (int i9 = 0; i9 < atomicReferenceArray.length(); i9++) {
                        for (com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(i9); qVar != null; qVar = qVar.c()) {
                            if (qVar.a().isActive()) {
                                K key = qVar.getKey();
                                V v10 = qVar.a().get();
                                if (key != null && v10 != null) {
                                    removalCause = RemovalCause.EXPLICIT;
                                    m(key, qVar.b(), v10, qVar.a().c(), removalCause);
                                }
                                removalCause = RemovalCause.COLLECTED;
                                m(key, qVar.b(), v10, qVar.a().c(), removalCause);
                            }
                        }
                    }
                    for (int i10 = 0; i10 < atomicReferenceArray.length(); i10++) {
                        atomicReferenceArray.set(i10, null);
                    }
                    d();
                    this.f12562l.clear();
                    this.f12563m.clear();
                    this.f12561k.set(0);
                    this.f12554d++;
                    this.f12552b = 0;
                } finally {
                    unlock();
                    H();
                }
            }
        }

        void b0() {
            if (isHeldByCurrentThread()) {
                return;
            }
            this.f12551a.z();
        }

        void c() {
            do {
            } while (this.f12558h.poll() != null);
        }

        V c0(com.google.common.cache.q<K, V> qVar, K k10, int i9, V v10, long j10, CacheLoader<? super K, V> cacheLoader) {
            V Q;
            return (!this.f12551a.F() || j10 - qVar.j() <= this.f12551a.f12468m || qVar.a().isLoading() || (Q = Q(k10, i9, cacheLoader, true)) == null) ? v10 : Q;
        }

        void d() {
            if (this.f12551a.N()) {
                c();
            }
            if (this.f12551a.O()) {
                e();
            }
        }

        void d0(com.google.common.cache.q<K, V> qVar, K k10, V v10, long j10) {
            b0<K, V> a10 = qVar.a();
            int a11 = this.f12551a.f12465j.a(k10, v10);
            com.google.common.base.o.A(a11 >= 0, "Weights must be non-negative");
            qVar.i(this.f12551a.f12463h.c(this, qVar, v10, a11));
            P(qVar, a11, j10);
            a10.b(v10);
        }

        void e() {
            do {
            } while (this.f12559i.poll() != null);
        }

        boolean e0(K k10, int i9, n<K, V> nVar, V v10) {
            lock();
            try {
                long a10 = this.f12551a.f12471p.a();
                I(a10);
                int i10 = this.f12552b + 1;
                if (i10 > this.f12555e) {
                    o();
                    i10 = this.f12552b + 1;
                }
                int i11 = i10;
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
                int length = i9 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(length);
                com.google.common.cache.q<K, V> qVar2 = qVar;
                while (true) {
                    if (qVar2 != null) {
                        K key = qVar2.getKey();
                        if (qVar2.b() == i9 && key != null && this.f12551a.f12460e.d(k10, key)) {
                            b0<K, V> a11 = qVar2.a();
                            V v11 = a11.get();
                            if (nVar != a11 && (v11 != null || a11 == k.f12454x)) {
                                m(k10, i9, v10, 0, RemovalCause.REPLACED);
                                return false;
                            }
                            this.f12554d++;
                            if (nVar.isActive()) {
                                m(k10, i9, v11, nVar.c(), v11 == null ? RemovalCause.COLLECTED : RemovalCause.REPLACED);
                                i11--;
                            }
                            d0(qVar2, k10, v10, a10);
                            this.f12552b = i11;
                            n(qVar2);
                        } else {
                            qVar2 = qVar2.c();
                        }
                    } else {
                        this.f12554d++;
                        com.google.common.cache.q<K, V> E = E(k10, i9, qVar);
                        d0(E, k10, v10, a10);
                        atomicReferenceArray.set(length, E);
                        this.f12552b = i11;
                        n(E);
                        break;
                    }
                }
                return true;
            } finally {
                unlock();
                H();
            }
        }

        V f(K k10, int i9, BiFunction<? super K, ? super V, ? extends V> biFunction) {
            int i10;
            b0<K, V> b0Var;
            boolean z10;
            BiFunction<? super K, ? super V, ? extends V> biFunction2;
            boolean z11;
            lock();
            try {
                long a10 = this.f12551a.f12471p.a();
                I(a10);
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
                int length = i9 & (atomicReferenceArray.length() - 1);
                com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(length);
                com.google.common.cache.q<K, V> qVar2 = qVar;
                while (true) {
                    if (qVar2 == null) {
                        i10 = 0;
                        b0Var = null;
                        z10 = true;
                        break;
                    }
                    K key = qVar2.getKey();
                    if (qVar2.b() == i9 && key != null && this.f12551a.f12460e.d(k10, key)) {
                        b0<K, V> a11 = qVar2.a();
                        if (this.f12551a.q(qVar2, a10)) {
                            i10 = 0;
                            m(key, i9, a11.get(), a11.c(), RemovalCause.EXPIRED);
                        } else {
                            i10 = 0;
                        }
                        this.f12562l.remove(qVar2);
                        this.f12563m.remove(qVar2);
                        b0Var = a11;
                        z10 = false;
                    } else {
                        qVar2 = qVar2.c();
                    }
                }
                n<K, V> fVar = new f<>(b0Var);
                if (qVar2 == null) {
                    qVar2 = E(k10, i9, qVar);
                    qVar2.i(fVar);
                    atomicReferenceArray.set(length, qVar2);
                    biFunction2 = biFunction;
                    z11 = true;
                } else {
                    qVar2.i(fVar);
                    biFunction2 = biFunction;
                    z11 = z10;
                }
                V f10 = fVar.f(k10, biFunction2);
                if (f10 != null) {
                    if (b0Var != null && f10 == b0Var.get()) {
                        fVar.k(f10);
                        qVar2.i(b0Var);
                        P(qVar2, i10, a10);
                        return f10;
                    }
                    try {
                        return s(k10, i9, fVar, com.google.common.util.concurrent.y.d(f10));
                    } catch (ExecutionException unused) {
                        throw new AssertionError("impossible; Futures.immediateFuture can't throw");
                    }
                }
                if (!z11 && !b0Var.isLoading()) {
                    U(qVar2, i9, RemovalCause.EXPLICIT);
                    return null;
                }
                W(k10, i9, fVar);
                return null;
            } finally {
                unlock();
                H();
            }
        }

        void f0() {
            if (tryLock()) {
                try {
                    k();
                } finally {
                    unlock();
                }
            }
        }

        boolean g(Object obj, int i9) {
            try {
                if (this.f12552b != 0) {
                    com.google.common.cache.q<K, V> v10 = v(obj, i9, this.f12551a.f12471p.a());
                    if (v10 == null) {
                        return false;
                    }
                    return v10.a().get() != null;
                }
                return false;
            } finally {
                G();
            }
        }

        void g0(long j10) {
            if (tryLock()) {
                try {
                    p(j10);
                } finally {
                    unlock();
                }
            }
        }

        com.google.common.cache.q<K, V> h(com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
            if (qVar.getKey() == null) {
                return null;
            }
            b0<K, V> a10 = qVar.a();
            V v10 = a10.get();
            if (v10 == null && a10.isActive()) {
                return null;
            }
            com.google.common.cache.q<K, V> c10 = this.f12551a.f12472q.c(this, qVar, qVar2);
            c10.i(a10.d(this.f12559i, v10, c10));
            return c10;
        }

        V h0(com.google.common.cache.q<K, V> qVar, K k10, b0<K, V> b0Var) throws ExecutionException {
            if (b0Var.isLoading()) {
                com.google.common.base.o.D(!Thread.holdsLock(qVar), "Recursive load of: %s", k10);
                try {
                    V e10 = b0Var.e();
                    if (e10 != null) {
                        O(qVar, this.f12551a.f12471p.a());
                        return e10;
                    }
                    String valueOf = String.valueOf(k10);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 35);
                    sb2.append("CacheLoader returned null for key ");
                    sb2.append(valueOf);
                    sb2.append(".");
                    throw new CacheLoader.InvalidCacheLoadException(sb2.toString());
                } finally {
                    this.f12564n.b(1);
                }
            }
            throw new AssertionError();
        }

        void i() {
            int i9 = 0;
            do {
                Reference<? extends K> poll = this.f12558h.poll();
                if (poll == null) {
                    return;
                }
                this.f12551a.A((com.google.common.cache.q) poll);
                i9++;
            } while (i9 != 16);
        }

        void j() {
            while (true) {
                com.google.common.cache.q<K, V> poll = this.f12560j.poll();
                if (poll == null) {
                    return;
                }
                if (this.f12563m.contains(poll)) {
                    this.f12563m.add(poll);
                }
            }
        }

        void k() {
            if (this.f12551a.N()) {
                i();
            }
            if (this.f12551a.O()) {
                l();
            }
        }

        void l() {
            int i9 = 0;
            do {
                Reference<? extends V> poll = this.f12559i.poll();
                if (poll == null) {
                    return;
                }
                this.f12551a.B((b0) poll);
                i9++;
            } while (i9 != 16);
        }

        void m(K k10, int i9, V v10, int i10, RemovalCause removalCause) {
            this.f12553c -= i10;
            if (removalCause.wasEvicted()) {
                this.f12564n.c();
            }
            if (this.f12551a.f12469n != k.f12455y) {
                this.f12551a.f12469n.offer(RemovalNotification.create(k10, v10, removalCause));
            }
        }

        void n(com.google.common.cache.q<K, V> qVar) {
            if (this.f12551a.j()) {
                j();
                if (qVar.a().c() > this.f12557g && !U(qVar, qVar.b(), RemovalCause.SIZE)) {
                    throw new AssertionError();
                }
                while (this.f12553c > this.f12557g) {
                    com.google.common.cache.q<K, V> x10 = x();
                    if (!U(x10, x10.b(), RemovalCause.SIZE)) {
                        throw new AssertionError();
                    }
                }
            }
        }

        void o() {
            AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i9 = this.f12552b;
            AtomicReferenceArray<com.google.common.cache.q<K, V>> F = F(length << 1);
            this.f12555e = (F.length() * 3) / 4;
            int length2 = F.length() - 1;
            for (int i10 = 0; i10 < length; i10++) {
                com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(i10);
                if (qVar != null) {
                    com.google.common.cache.q<K, V> c10 = qVar.c();
                    int b10 = qVar.b() & length2;
                    if (c10 == null) {
                        F.set(b10, qVar);
                    } else {
                        com.google.common.cache.q<K, V> qVar2 = qVar;
                        while (c10 != null) {
                            int b11 = c10.b() & length2;
                            if (b11 != b10) {
                                qVar2 = c10;
                                b10 = b11;
                            }
                            c10 = c10.c();
                        }
                        F.set(b10, qVar2);
                        while (qVar != qVar2) {
                            int b12 = qVar.b() & length2;
                            com.google.common.cache.q<K, V> h10 = h(qVar, F.get(b12));
                            if (h10 != null) {
                                F.set(b12, h10);
                            } else {
                                T(qVar);
                                i9--;
                            }
                            qVar = qVar.c();
                        }
                    }
                }
            }
            this.f12556f = F;
            this.f12552b = i9;
        }

        void p(long j10) {
            com.google.common.cache.q<K, V> peek;
            com.google.common.cache.q<K, V> peek2;
            j();
            do {
                peek = this.f12562l.peek();
                if (peek == null || !this.f12551a.q(peek, j10)) {
                    do {
                        peek2 = this.f12563m.peek();
                        if (peek2 == null || !this.f12551a.q(peek2, j10)) {
                            return;
                        }
                    } while (U(peek2, peek2.b(), RemovalCause.EXPIRED));
                    throw new AssertionError();
                }
            } while (U(peek, peek.b(), RemovalCause.EXPIRED));
            throw new AssertionError();
        }

        V q(Object obj, int i9) {
            try {
                if (this.f12552b != 0) {
                    long a10 = this.f12551a.f12471p.a();
                    com.google.common.cache.q<K, V> v10 = v(obj, i9, a10);
                    if (v10 == null) {
                        return null;
                    }
                    V v11 = v10.a().get();
                    if (v11 != null) {
                        O(v10, a10);
                        return c0(v10, v10.getKey(), i9, v11, a10, this.f12551a.f12474s);
                    }
                    f0();
                }
                return null;
            } finally {
                G();
            }
        }

        V r(K k10, int i9, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            com.google.common.cache.q<K, V> t10;
            com.google.common.base.o.s(k10);
            com.google.common.base.o.s(cacheLoader);
            try {
                try {
                    if (this.f12552b != 0 && (t10 = t(k10, i9)) != null) {
                        long a10 = this.f12551a.f12471p.a();
                        V w6 = w(t10, a10);
                        if (w6 != null) {
                            O(t10, a10);
                            this.f12564n.a(1);
                            return c0(t10, k10, i9, w6, a10, cacheLoader);
                        }
                        b0<K, V> a11 = t10.a();
                        if (a11.isLoading()) {
                            return h0(t10, k10, a11);
                        }
                    }
                    return D(k10, i9, cacheLoader);
                } catch (ExecutionException e10) {
                    Throwable cause = e10.getCause();
                    if (!(cause instanceof Error)) {
                        if (cause instanceof RuntimeException) {
                            throw new UncheckedExecutionException(cause);
                        }
                        throw e10;
                    }
                    throw new ExecutionError((Error) cause);
                }
            } finally {
                G();
            }
        }

        V s(K k10, int i9, n<K, V> nVar, com.google.common.util.concurrent.d0<V> d0Var) throws ExecutionException {
            V v10;
            try {
                v10 = (V) n0.a(d0Var);
                try {
                    if (v10 != null) {
                        this.f12564n.e(nVar.g());
                        e0(k10, i9, nVar, v10);
                        return v10;
                    }
                    String valueOf = String.valueOf(k10);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 35);
                    sb2.append("CacheLoader returned null for key ");
                    sb2.append(valueOf);
                    sb2.append(".");
                    throw new CacheLoader.InvalidCacheLoadException(sb2.toString());
                } catch (Throwable th2) {
                    th = th2;
                    if (v10 == null) {
                        this.f12564n.d(nVar.g());
                        W(k10, i9, nVar);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                v10 = null;
            }
        }

        com.google.common.cache.q<K, V> t(Object obj, int i9) {
            for (com.google.common.cache.q<K, V> u10 = u(i9); u10 != null; u10 = u10.c()) {
                if (u10.b() == i9) {
                    K key = u10.getKey();
                    if (key == null) {
                        f0();
                    } else if (this.f12551a.f12460e.d(obj, key)) {
                        return u10;
                    }
                }
            }
            return null;
        }

        com.google.common.cache.q<K, V> u(int i9) {
            AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = this.f12556f;
            return atomicReferenceArray.get(i9 & (atomicReferenceArray.length() - 1));
        }

        com.google.common.cache.q<K, V> v(Object obj, int i9, long j10) {
            com.google.common.cache.q<K, V> t10 = t(obj, i9);
            if (t10 == null) {
                return null;
            }
            if (this.f12551a.q(t10, j10)) {
                g0(j10);
                return null;
            }
            return t10;
        }

        V w(com.google.common.cache.q<K, V> qVar, long j10) {
            if (qVar.getKey() == null) {
                f0();
                return null;
            }
            V v10 = qVar.a().get();
            if (v10 == null) {
                f0();
                return null;
            } else if (this.f12551a.q(qVar, j10)) {
                g0(j10);
                return null;
            } else {
                return v10;
            }
        }

        com.google.common.cache.q<K, V> x() {
            for (com.google.common.cache.q<K, V> qVar : this.f12563m) {
                if (qVar.a().c() > 0) {
                    return qVar;
                }
            }
            throw new AssertionError();
        }

        void z(AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray) {
            this.f12555e = (atomicReferenceArray.length() * 3) / 4;
            if (!this.f12551a.h()) {
                int i9 = this.f12555e;
                if (i9 == this.f12557g) {
                    this.f12555e = i9 + 1;
                }
            }
            this.f12556f = atomicReferenceArray;
        }
    }

    /* loaded from: classes2.dex */
    static class t<K, V> extends SoftReference<V> implements b0<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final com.google.common.cache.q<K, V> f12570a;

        t(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar) {
            super(v10, referenceQueue);
            this.f12570a = qVar;
        }

        @Override // com.google.common.cache.k.b0
        public com.google.common.cache.q<K, V> a() {
            return this.f12570a;
        }

        @Override // com.google.common.cache.k.b0
        public void b(V v10) {
        }

        public int c() {
            return 1;
        }

        public b0<K, V> d(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar) {
            return new t(referenceQueue, v10, qVar);
        }

        @Override // com.google.common.cache.k.b0
        public V e() {
            return get();
        }

        @Override // com.google.common.cache.k.b0
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.k.b0
        public boolean isLoading() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class u {

        /* renamed from: a  reason: collision with root package name */
        public static final u f12571a = new a("STRONG", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final u f12572b = new b("SOFT", 1);

        /* renamed from: c  reason: collision with root package name */
        public static final u f12573c = new c("WEAK", 2);

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ u[] f12574d = a();

        /* loaded from: classes2.dex */
        enum a extends u {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.u
            Equivalence<Object> b() {
                return Equivalence.c();
            }

            @Override // com.google.common.cache.k.u
            <K, V> b0<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, V v10, int i9) {
                if (i9 == 1) {
                    return new y(v10);
                }
                return new j0(v10, i9);
            }
        }

        /* loaded from: classes2.dex */
        enum b extends u {
            b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.u
            Equivalence<Object> b() {
                return Equivalence.f();
            }

            @Override // com.google.common.cache.k.u
            <K, V> b0<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, V v10, int i9) {
                if (i9 == 1) {
                    return new t(sVar.f12559i, v10, qVar);
                }
                return new i0(sVar.f12559i, v10, qVar, i9);
            }
        }

        /* loaded from: classes2.dex */
        enum c extends u {
            c(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.cache.k.u
            Equivalence<Object> b() {
                return Equivalence.f();
            }

            @Override // com.google.common.cache.k.u
            <K, V> b0<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, V v10, int i9) {
                if (i9 == 1) {
                    return new g0(sVar.f12559i, v10, qVar);
                }
                return new k0(sVar.f12559i, v10, qVar, i9);
            }
        }

        private u(String str, int i9) {
        }

        private static /* synthetic */ u[] a() {
            return new u[]{f12571a, f12572b, f12573c};
        }

        public static u valueOf(String str) {
            return (u) Enum.valueOf(u.class, str);
        }

        public static u[] values() {
            return (u[]) f12574d.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Equivalence<Object> b();

        abstract <K, V> b0<K, V> c(s<K, V> sVar, com.google.common.cache.q<K, V> qVar, V v10, int i9);

        /* synthetic */ u(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    /* loaded from: classes2.dex */
    static final class v<K, V> extends x<K, V> {

        /* renamed from: e  reason: collision with root package name */
        volatile long f12575e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12576f;

        /* renamed from: g  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12577g;

        v(K k10, int i9, com.google.common.cache.q<K, V> qVar) {
            super(k10, i9, qVar);
            this.f12575e = Long.MAX_VALUE;
            this.f12576f = k.w();
            this.f12577g = k.w();
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public com.google.common.cache.q<K, V> d() {
            return this.f12577g;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public com.google.common.cache.q<K, V> f() {
            return this.f12576f;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void g(com.google.common.cache.q<K, V> qVar) {
            this.f12577g = qVar;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void k(long j10) {
            this.f12575e = j10;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public long l() {
            return this.f12575e;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void o(com.google.common.cache.q<K, V> qVar) {
            this.f12576f = qVar;
        }
    }

    /* loaded from: classes2.dex */
    static final class w<K, V> extends x<K, V> {

        /* renamed from: e  reason: collision with root package name */
        volatile long f12578e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12579f;

        /* renamed from: g  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12580g;

        /* renamed from: h  reason: collision with root package name */
        volatile long f12581h;

        /* renamed from: i  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12582i;

        /* renamed from: j  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12583j;

        w(K k10, int i9, com.google.common.cache.q<K, V> qVar) {
            super(k10, i9, qVar);
            this.f12578e = Long.MAX_VALUE;
            this.f12579f = k.w();
            this.f12580g = k.w();
            this.f12581h = Long.MAX_VALUE;
            this.f12582i = k.w();
            this.f12583j = k.w();
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public com.google.common.cache.q<K, V> d() {
            return this.f12580g;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public com.google.common.cache.q<K, V> e() {
            return this.f12582i;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public com.google.common.cache.q<K, V> f() {
            return this.f12579f;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void g(com.google.common.cache.q<K, V> qVar) {
            this.f12580g = qVar;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public com.google.common.cache.q<K, V> h() {
            return this.f12583j;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public long j() {
            return this.f12581h;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void k(long j10) {
            this.f12578e = j10;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public long l() {
            return this.f12578e;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void m(long j10) {
            this.f12581h = j10;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void o(com.google.common.cache.q<K, V> qVar) {
            this.f12579f = qVar;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void p(com.google.common.cache.q<K, V> qVar) {
            this.f12582i = qVar;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void q(com.google.common.cache.q<K, V> qVar) {
            this.f12583j = qVar;
        }
    }

    /* loaded from: classes2.dex */
    static class x<K, V> extends d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f12584a;

        /* renamed from: b  reason: collision with root package name */
        final int f12585b;

        /* renamed from: c  reason: collision with root package name */
        final com.google.common.cache.q<K, V> f12586c;

        /* renamed from: d  reason: collision with root package name */
        volatile b0<K, V> f12587d = k.K();

        x(K k10, int i9, com.google.common.cache.q<K, V> qVar) {
            this.f12584a = k10;
            this.f12585b = i9;
            this.f12586c = qVar;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public b0<K, V> a() {
            return this.f12587d;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public int b() {
            return this.f12585b;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public com.google.common.cache.q<K, V> c() {
            return this.f12586c;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public K getKey() {
            return this.f12584a;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void i(b0<K, V> b0Var) {
            this.f12587d = b0Var;
        }
    }

    /* loaded from: classes2.dex */
    static class y<K, V> implements b0<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final V f12588a;

        y(V v10) {
            this.f12588a = v10;
        }

        @Override // com.google.common.cache.k.b0
        public com.google.common.cache.q<K, V> a() {
            return null;
        }

        @Override // com.google.common.cache.k.b0
        public void b(V v10) {
        }

        @Override // com.google.common.cache.k.b0
        public int c() {
            return 1;
        }

        @Override // com.google.common.cache.k.b0
        public b0<K, V> d(ReferenceQueue<V> referenceQueue, V v10, com.google.common.cache.q<K, V> qVar) {
            return this;
        }

        @Override // com.google.common.cache.k.b0
        public V e() {
            return get();
        }

        @Override // com.google.common.cache.k.b0
        public V get() {
            return this.f12588a;
        }

        @Override // com.google.common.cache.k.b0
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.k.b0
        public boolean isLoading() {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    static final class z<K, V> extends x<K, V> {

        /* renamed from: e  reason: collision with root package name */
        volatile long f12589e;

        /* renamed from: f  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12590f;

        /* renamed from: g  reason: collision with root package name */
        com.google.common.cache.q<K, V> f12591g;

        z(K k10, int i9, com.google.common.cache.q<K, V> qVar) {
            super(k10, i9, qVar);
            this.f12589e = Long.MAX_VALUE;
            this.f12590f = k.w();
            this.f12591g = k.w();
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public com.google.common.cache.q<K, V> e() {
            return this.f12590f;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public com.google.common.cache.q<K, V> h() {
            return this.f12591g;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public long j() {
            return this.f12589e;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void m(long j10) {
            this.f12589e = j10;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void p(com.google.common.cache.q<K, V> qVar) {
            this.f12590f = qVar;
        }

        @Override // com.google.common.cache.k.d, com.google.common.cache.q
        public void q(com.google.common.cache.q<K, V> qVar) {
            this.f12591g = qVar;
        }
    }

    k(com.google.common.cache.d<? super K, ? super V> dVar, CacheLoader<? super K, V> cacheLoader) {
        Queue<RemovalNotification<K, V>> concurrentLinkedQueue;
        this.f12459d = Math.min(dVar.h(), 65536);
        u m10 = dVar.m();
        this.f12462g = m10;
        this.f12463h = dVar.t();
        this.f12460e = dVar.l();
        this.f12461f = dVar.s();
        long n9 = dVar.n();
        this.f12464i = n9;
        this.f12465j = (com.google.common.cache.t<K, V>) dVar.u();
        this.f12466k = dVar.i();
        this.f12467l = dVar.j();
        this.f12468m = dVar.o();
        com.google.common.cache.r<K, V> rVar = (com.google.common.cache.r<K, V>) dVar.p();
        this.f12470o = rVar;
        if (rVar == d.EnumC0103d.INSTANCE) {
            concurrentLinkedQueue = i();
        } else {
            concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        }
        this.f12469n = concurrentLinkedQueue;
        this.f12471p = dVar.r(D());
        this.f12472q = g.e(m10, L(), P());
        this.f12473r = dVar.q().get();
        this.f12474s = cacheLoader;
        int min = Math.min(dVar.k(), (int) BasicMeasure.EXACTLY);
        if (j() && !h()) {
            min = (int) Math.min(min, n9);
        }
        int i9 = 0;
        int i10 = 1;
        int i11 = 1;
        int i12 = 0;
        while (i11 < this.f12459d && (!j() || i11 * 20 <= this.f12464i)) {
            i12++;
            i11 <<= 1;
        }
        this.f12457b = 32 - i12;
        this.f12456a = i11 - 1;
        this.f12458c = v(i11);
        int i13 = min / i11;
        while (i10 < (i13 * i11 < min ? i13 + 1 : i13)) {
            i10 <<= 1;
        }
        if (j()) {
            long j10 = this.f12464i;
            long j11 = i11;
            long j12 = (j10 / j11) + 1;
            long j13 = j10 % j11;
            while (true) {
                s<K, V>[] sVarArr = this.f12458c;
                if (i9 >= sVarArr.length) {
                    return;
                }
                if (i9 == j13) {
                    j12--;
                }
                sVarArr[i9] = g(i10, j12, dVar.q().get());
                i9++;
            }
        } else {
            while (true) {
                s<K, V>[] sVarArr2 = this.f12458c;
                if (i9 >= sVarArr2.length) {
                    return;
                }
                sVarArr2[i9] = g(i10, -1L, dVar.q().get());
                i9++;
            }
        }
    }

    static int G(int i9) {
        int i10 = i9 + ((i9 << 15) ^ (-12931));
        int i11 = i10 ^ (i10 >>> 10);
        int i12 = i11 + (i11 << 3);
        int i13 = i12 ^ (i12 >>> 6);
        int i14 = i13 + (i13 << 2) + (i13 << 14);
        return i14 ^ (i14 >>> 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> J(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        p5.a(arrayList, collection.iterator());
        return arrayList;
    }

    static <K, V> b0<K, V> K() {
        return (b0<K, V>) f12454x;
    }

    static <K, V> void e(com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
        qVar.o(qVar2);
        qVar2.g(qVar);
    }

    static <K, V> void f(com.google.common.cache.q<K, V> qVar, com.google.common.cache.q<K, V> qVar2) {
        qVar.p(qVar2);
        qVar2.q(qVar);
    }

    static <E> Queue<E> i() {
        return (Queue<E>) f12455y;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object r(Function function, Object obj, Object obj2, Object obj3) {
        return obj3 == null ? function.apply(obj) : obj3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object s(BiFunction biFunction, Object obj, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        return biFunction.apply(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object t(Object obj, BiFunction biFunction, Object obj2, Object obj3) {
        return obj3 == null ? obj : biFunction.apply(obj3, obj);
    }

    static <K, V> com.google.common.cache.q<K, V> w() {
        return r.INSTANCE;
    }

    static <K, V> void x(com.google.common.cache.q<K, V> qVar) {
        com.google.common.cache.q<K, V> w6 = w();
        qVar.o(w6);
        qVar.g(w6);
    }

    static <K, V> void y(com.google.common.cache.q<K, V> qVar) {
        com.google.common.cache.q<K, V> w6 = w();
        qVar.p(w6);
        qVar.q(w6);
    }

    void A(com.google.common.cache.q<K, V> qVar) {
        int b10 = qVar.b();
        I(b10).K(qVar, b10);
    }

    void B(b0<K, V> b0Var) {
        com.google.common.cache.q<K, V> a10 = b0Var.a();
        int b10 = a10.b();
        I(b10).L(a10.getKey(), b10, b0Var);
    }

    boolean C() {
        return k();
    }

    boolean D() {
        return E() || C();
    }

    boolean E() {
        return l() || F();
    }

    boolean F() {
        return this.f12468m > 0;
    }

    boolean H(BiPredicate<? super K, ? super V> biPredicate) {
        com.google.common.base.o.s(biPredicate);
        boolean z10 = false;
        for (K k10 : keySet()) {
            while (true) {
                V v10 = get(k10);
                if (v10 != null && biPredicate.test(k10, v10)) {
                    if (remove(k10, v10)) {
                        z10 = true;
                        break;
                    }
                }
            }
        }
        return z10;
    }

    s<K, V> I(int i9) {
        return this.f12458c[(i9 >>> this.f12457b) & this.f12456a];
    }

    boolean L() {
        return M() || C();
    }

    boolean M() {
        return k() || j();
    }

    boolean N() {
        return this.f12462g != u.f12571a;
    }

    boolean O() {
        return this.f12463h != u.f12571a;
    }

    boolean P() {
        return Q() || E();
    }

    boolean Q() {
        return l();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (s<K, V> sVar : this.f12458c) {
            sVar.b();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V compute(K k10, BiFunction<? super K, ? super V, ? extends V> biFunction) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(biFunction);
        int p10 = p(k10);
        return I(p10).f(k10, p10, biFunction);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V computeIfAbsent(final K k10, final Function<? super K, ? extends V> function) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(function);
        return compute(k10, new BiFunction() { // from class: com.google.common.cache.j
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object r10;
                r10 = k.r(function, k10, obj, obj2);
                return r10;
            }
        });
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V computeIfPresent(K k10, final BiFunction<? super K, ? super V, ? extends V> biFunction) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(biFunction);
        return compute(k10, new BiFunction() { // from class: com.google.common.cache.i
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object s10;
                s10 = k.s(biFunction, obj, obj2);
                return s10;
            }
        });
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int p10 = p(obj);
        return I(p10).g(obj, p10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        if (obj == null) {
            return false;
        }
        long a10 = this.f12471p.a();
        s<K, V>[] sVarArr = this.f12458c;
        long j10 = -1;
        int i9 = 0;
        while (i9 < 3) {
            long j11 = 0;
            int length = sVarArr.length;
            int i10 = 0;
            while (i10 < length) {
                s<K, V> sVar = sVarArr[i10];
                int i11 = sVar.f12552b;
                AtomicReferenceArray<com.google.common.cache.q<K, V>> atomicReferenceArray = sVar.f12556f;
                for (int i12 = 0; i12 < atomicReferenceArray.length(); i12++) {
                    com.google.common.cache.q<K, V> qVar = atomicReferenceArray.get(i12);
                    while (qVar != null) {
                        s<K, V>[] sVarArr2 = sVarArr;
                        V w6 = sVar.w(qVar, a10);
                        long j12 = a10;
                        if (w6 != null && this.f12461f.d(obj, w6)) {
                            return true;
                        }
                        qVar = qVar.c();
                        sVarArr = sVarArr2;
                        a10 = j12;
                    }
                }
                j11 += sVar.f12554d;
                i10++;
                a10 = a10;
            }
            long j13 = a10;
            s<K, V>[] sVarArr3 = sVarArr;
            if (j11 == j10) {
                return false;
            }
            i9++;
            j10 = j11;
            sVarArr = sVarArr3;
            a10 = j13;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f12477v;
        if (set != null) {
            return set;
        }
        i iVar = new i();
        this.f12477v = iVar;
        return iVar;
    }

    s<K, V> g(int i9, long j10, com.google.common.cache.b bVar) {
        return new s<>(this, i9, j10, bVar);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int p10 = p(obj);
        return I(p10).q(obj, p10);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V getOrDefault(Object obj, V v10) {
        V v11 = get(obj);
        return v11 != null ? v11 : v10;
    }

    boolean h() {
        return this.f12465j != d.e.INSTANCE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        s<K, V>[] sVarArr = this.f12458c;
        long j10 = 0;
        for (int i9 = 0; i9 < sVarArr.length; i9++) {
            if (sVarArr[i9].f12552b != 0) {
                return false;
            }
            j10 += sVarArr[i9].f12554d;
        }
        if (j10 != 0) {
            for (int i10 = 0; i10 < sVarArr.length; i10++) {
                if (sVarArr[i10].f12552b != 0) {
                    return false;
                }
                j10 -= sVarArr[i10].f12554d;
            }
            return j10 == 0;
        }
        return true;
    }

    boolean j() {
        return this.f12464i >= 0;
    }

    boolean k() {
        return this.f12466k > 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f12475t;
        if (set != null) {
            return set;
        }
        l lVar = new l();
        this.f12475t = lVar;
        return lVar;
    }

    boolean l() {
        return this.f12467l > 0;
    }

    V m(K k10, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        int p10 = p(com.google.common.base.o.s(k10));
        return I(p10).r(k10, p10, cacheLoader);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V merge(K k10, final V v10, final BiFunction<? super V, ? super V, ? extends V> biFunction) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(v10);
        com.google.common.base.o.s(biFunction);
        return compute(k10, new BiFunction() { // from class: com.google.common.cache.h
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object t10;
                t10 = k.t(v10, biFunction, obj, obj2);
                return t10;
            }
        });
    }

    V n(com.google.common.cache.q<K, V> qVar, long j10) {
        V v10;
        if (qVar.getKey() == null || (v10 = qVar.a().get()) == null || q(qVar, j10)) {
            return null;
        }
        return v10;
    }

    V o(K k10) throws ExecutionException {
        return m(k10, this.f12474s);
    }

    int p(Object obj) {
        return G(this.f12460e.e(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(v10);
        int p10 = p(k10);
        return I(p10).J(k10, p10, v10, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k10, V v10) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(v10);
        int p10 = p(k10);
        return I(p10).J(k10, p10, v10, true);
    }

    boolean q(com.google.common.cache.q<K, V> qVar, long j10) {
        com.google.common.base.o.s(qVar);
        if (!k() || j10 - qVar.l() < this.f12466k) {
            return l() && j10 - qVar.j() >= this.f12467l;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int p10 = p(obj);
        return I(p10).R(obj, p10);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k10, V v10, V v11) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(v11);
        if (v10 == null) {
            return false;
        }
        int p10 = p(k10);
        return I(p10).Z(k10, p10, v10, v11);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return com.google.common.primitives.f.i(u());
    }

    long u() {
        long j10 = 0;
        for (s<K, V> sVar : this.f12458c) {
            j10 += sVar.f12552b;
        }
        return j10;
    }

    final s<K, V>[] v(int i9) {
        return new s[i9];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f12476u;
        if (collection != null) {
            return collection;
        }
        c0 c0Var = new c0();
        this.f12476u = c0Var;
        return c0Var;
    }

    void z() {
        while (true) {
            RemovalNotification<K, V> poll = this.f12469n.poll();
            if (poll == null) {
                return;
            }
            try {
                this.f12470o.a(poll);
            } catch (Throwable th2) {
                f12453w.log(Level.WARNING, "Exception thrown by removal listener", th2);
            }
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int p10 = p(obj);
        return I(p10).S(obj, p10, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k10, V v10) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(v10);
        int p10 = p(k10);
        return I(p10).Y(k10, p10, v10);
    }
}
