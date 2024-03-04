package com.google.common.collect;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.google.common.base.Equivalence;
import com.google.common.collect.c6.i;
import com.google.common.collect.c6.n;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class c6<K, V, E extends i<K, V, E>, S extends n<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {

    /* renamed from: j  reason: collision with root package name */
    static final b0<Object, Object, e> f12954j = new a();
    private static final long serialVersionUID = 5;

    /* renamed from: a  reason: collision with root package name */
    final transient int f12955a;

    /* renamed from: b  reason: collision with root package name */
    final transient int f12956b;

    /* renamed from: c  reason: collision with root package name */
    final transient n<K, V, E, S>[] f12957c;

    /* renamed from: d  reason: collision with root package name */
    final int f12958d;

    /* renamed from: e  reason: collision with root package name */
    final Equivalence<Object> f12959e;

    /* renamed from: f  reason: collision with root package name */
    final transient j<K, V, E, S> f12960f;

    /* renamed from: g  reason: collision with root package name */
    transient Set<K> f12961g;

    /* renamed from: h  reason: collision with root package name */
    transient Collection<V> f12962h;

    /* renamed from: i  reason: collision with root package name */
    transient Set<Map.Entry<K, V>> f12963i;

    /* loaded from: classes2.dex */
    class a implements b0<Object, Object, e> {
        a() {
        }

        @Override // com.google.common.collect.c6.b0
        /* renamed from: c */
        public b0<Object, Object, e> b(ReferenceQueue<Object> referenceQueue, e eVar) {
            return this;
        }

        @Override // com.google.common.collect.c6.b0
        public void clear() {
        }

        @Override // com.google.common.collect.c6.b0
        /* renamed from: d */
        public e a() {
            return null;
        }

        @Override // com.google.common.collect.c6.b0
        public Object get() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface a0<K, V, E extends i<K, V, E>> extends i<K, V, E> {
        b0<K, V, E> a();
    }

    /* loaded from: classes2.dex */
    static abstract class b<K, V> extends r3<K, V> implements Serializable {
        private static final long serialVersionUID = 3;

        /* renamed from: a  reason: collision with root package name */
        final p f12964a;

        /* renamed from: b  reason: collision with root package name */
        final p f12965b;

        /* renamed from: c  reason: collision with root package name */
        final Equivalence<Object> f12966c;

        /* renamed from: d  reason: collision with root package name */
        final Equivalence<Object> f12967d;

        /* renamed from: e  reason: collision with root package name */
        final int f12968e;

        /* renamed from: f  reason: collision with root package name */
        transient ConcurrentMap<K, V> f12969f;

        b(p pVar, p pVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i9, ConcurrentMap<K, V> concurrentMap) {
            this.f12964a = pVar;
            this.f12965b = pVar2;
            this.f12966c = equivalence;
            this.f12967d = equivalence2;
            this.f12968e = i9;
            this.f12969f = concurrentMap;
        }

        b6 A0(ObjectInputStream objectInputStream) throws IOException {
            return new b6().g(objectInputStream.readInt()).j(this.f12964a).k(this.f12965b).h(this.f12966c).a(this.f12968e);
        }

        void C0(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.f12969f.size());
            for (Map.Entry<K, V> entry : this.f12969f.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.t3, com.google.common.collect.w3
        /* renamed from: w0 */
        public ConcurrentMap<K, V> delegate() {
            return this.f12969f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void y0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject == null) {
                    return;
                }
                this.f12969f.put(readObject, objectInputStream.readObject());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface b0<K, V, E extends i<K, V, E>> {
        E a();

        b0<K, V, E> b(ReferenceQueue<V> referenceQueue, E e10);

        void clear();

        V get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class c<K, V, E extends i<K, V, E>> implements i<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final K f12970a;

        /* renamed from: b  reason: collision with root package name */
        final int f12971b;

        /* renamed from: c  reason: collision with root package name */
        final E f12972c;

        c(K k10, int i9, E e10) {
            this.f12970a = k10;
            this.f12971b = i9;
            this.f12972c = e10;
        }

        @Override // com.google.common.collect.c6.i
        public int b() {
            return this.f12971b;
        }

        @Override // com.google.common.collect.c6.i
        public E c() {
            return this.f12972c;
        }

        @Override // com.google.common.collect.c6.i
        public K getKey() {
            return this.f12970a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c0<K, V, E extends i<K, V, E>> extends WeakReference<V> implements b0<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final E f12973a;

        c0(ReferenceQueue<V> referenceQueue, V v10, E e10) {
            super(v10, referenceQueue);
            this.f12973a = e10;
        }

        @Override // com.google.common.collect.c6.b0
        public E a() {
            return this.f12973a;
        }

        @Override // com.google.common.collect.c6.b0
        public b0<K, V, E> b(ReferenceQueue<V> referenceQueue, E e10) {
            return new c0(referenceQueue, get(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class d<K, V, E extends i<K, V, E>> extends WeakReference<K> implements i<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final int f12974a;

        /* renamed from: b  reason: collision with root package name */
        final E f12975b;

        d(ReferenceQueue<K> referenceQueue, K k10, int i9, E e10) {
            super(k10, referenceQueue);
            this.f12974a = i9;
            this.f12975b = e10;
        }

        @Override // com.google.common.collect.c6.i
        public int b() {
            return this.f12974a;
        }

        @Override // com.google.common.collect.c6.i
        public E c() {
            return this.f12975b;
        }

        @Override // com.google.common.collect.c6.i
        public K getKey() {
            return get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class d0 extends com.google.common.collect.n<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f12976a;

        /* renamed from: b  reason: collision with root package name */
        V f12977b;

        d0(K k10, V v10) {
            this.f12976a = k10;
            this.f12977b = v10;
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f12976a.equals(entry.getKey()) && this.f12977b.equals(entry.getValue());
            }
            return false;
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public K getKey() {
            return this.f12976a;
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public V getValue() {
            return this.f12977b;
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public int hashCode() {
            return this.f12976a.hashCode() ^ this.f12977b.hashCode();
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = (V) c6.this.put(this.f12976a, v10);
            this.f12977b = v10;
            return v11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class e implements i<Object, Object, e> {
        private e() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.c6.i
        public int b() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.c6.i
        /* renamed from: d */
        public e c() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.c6.i
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.c6.i
        public Object getValue() {
            throw new AssertionError();
        }
    }

    /* loaded from: classes2.dex */
    final class f extends c6<K, V, E, S>.h<Map.Entry<K, V>> {
        f(c6 c6Var) {
            super();
        }

        @Override // java.util.Iterator
        /* renamed from: f */
        public Map.Entry<K, V> next() {
            return c();
        }
    }

    /* loaded from: classes2.dex */
    final class g extends m<Map.Entry<K, V>> {
        g() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            c6.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = c6.this.get(key)) != null && c6.this.m().d(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return c6.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(c6.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && c6.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return c6.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public abstract class h<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f12980a;

        /* renamed from: b  reason: collision with root package name */
        int f12981b = -1;

        /* renamed from: c  reason: collision with root package name */
        n<K, V, E, S> f12982c;

        /* renamed from: d  reason: collision with root package name */
        AtomicReferenceArray<E> f12983d;

        /* renamed from: e  reason: collision with root package name */
        E f12984e;

        /* renamed from: f  reason: collision with root package name */
        c6<K, V, E, S>.d0 f12985f;

        /* renamed from: g  reason: collision with root package name */
        c6<K, V, E, S>.d0 f12986g;

        h() {
            this.f12980a = c6.this.f12957c.length - 1;
            a();
        }

        final void a() {
            this.f12985f = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i9 = this.f12980a;
                if (i9 < 0) {
                    return;
                }
                n<K, V, E, S>[] nVarArr = c6.this.f12957c;
                this.f12980a = i9 - 1;
                n<K, V, E, S> nVar = nVarArr[i9];
                this.f12982c = nVar;
                if (nVar.f12990b != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f12982c.f12993e;
                    this.f12983d = atomicReferenceArray;
                    this.f12981b = atomicReferenceArray.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        boolean b(E e10) {
            boolean z10;
            try {
                Object key = e10.getKey();
                Object d10 = c6.this.d(e10);
                if (d10 != null) {
                    this.f12985f = new d0(key, d10);
                    z10 = true;
                } else {
                    z10 = false;
                }
                return z10;
            } finally {
                this.f12982c.r();
            }
        }

        c6<K, V, E, S>.d0 c() {
            c6<K, V, E, S>.d0 d0Var = this.f12985f;
            if (d0Var != null) {
                this.f12986g = d0Var;
                a();
                return this.f12986g;
            }
            throw new NoSuchElementException();
        }

        boolean d() {
            E e10 = this.f12984e;
            if (e10 == null) {
                return false;
            }
            while (true) {
                this.f12984e = (E) e10.c();
                E e11 = this.f12984e;
                if (e11 == null) {
                    return false;
                }
                if (b(e11)) {
                    return true;
                }
                e10 = this.f12984e;
            }
        }

        boolean e() {
            while (true) {
                int i9 = this.f12981b;
                if (i9 < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f12983d;
                this.f12981b = i9 - 1;
                E e10 = atomicReferenceArray.get(i9);
                this.f12984e = e10;
                if (e10 != null && (b(e10) || d())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12985f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            p2.e(this.f12986g != null);
            c6.this.remove(this.f12986g.getKey());
            this.f12986g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface i<K, V, E extends i<K, V, E>> {
        int b();

        E c();

        K getKey();

        V getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface j<K, V, E extends i<K, V, E>, S extends n<K, V, E, S>> {
        E a(S s10, E e10, E e11);

        p b();

        void c(S s10, E e10, V v10);

        E d(S s10, K k10, int i9, E e10);

        p e();

        S f(c6<K, V, E, S> c6Var, int i9, int i10);
    }

    /* loaded from: classes2.dex */
    final class k extends c6<K, V, E, S>.h<K> {
        k(c6 c6Var) {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return c().getKey();
        }
    }

    /* loaded from: classes2.dex */
    final class l extends m<K> {
        l() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            c6.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return c6.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return c6.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new k(c6.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return c6.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return c6.this.size();
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class m<E> extends AbstractSet<E> {
        private m() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return c6.k(this).toArray();
        }

        /* synthetic */ m(a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) c6.k(this).toArray(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class n<K, V, E extends i<K, V, E>, S extends n<K, V, E, S>> extends ReentrantLock {

        /* renamed from: a  reason: collision with root package name */
        final c6<K, V, E, S> f12989a;

        /* renamed from: b  reason: collision with root package name */
        volatile int f12990b;

        /* renamed from: c  reason: collision with root package name */
        int f12991c;

        /* renamed from: d  reason: collision with root package name */
        int f12992d;

        /* renamed from: e  reason: collision with root package name */
        volatile AtomicReferenceArray<E> f12993e;

        /* renamed from: f  reason: collision with root package name */
        final int f12994f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f12995g = new AtomicInteger();

        n(c6<K, V, E, S> c6Var, int i9, int i10) {
            this.f12989a = c6Var;
            this.f12994f = i10;
            m(q(i9));
        }

        static <K, V, E extends i<K, V, E>> boolean n(E e10) {
            return e10.getValue() == null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        V A(K k10, int i9, V v10) {
            lock();
            try {
                s();
                AtomicReferenceArray<E> atomicReferenceArray = this.f12993e;
                int length = (atomicReferenceArray.length() - 1) & i9;
                E e10 = atomicReferenceArray.get(length);
                for (i iVar = e10; iVar != null; iVar = iVar.c()) {
                    Object key = iVar.getKey();
                    if (iVar.b() == i9 && key != null && this.f12989a.f12959e.d(k10, key)) {
                        V v11 = (V) iVar.getValue();
                        if (v11 == null) {
                            if (n(iVar)) {
                                this.f12991c++;
                                atomicReferenceArray.set(length, z(e10, iVar));
                                this.f12990b--;
                            }
                            return null;
                        }
                        this.f12991c++;
                        F(iVar, v10);
                        return v11;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean B(K k10, int i9, V v10, V v11) {
            lock();
            try {
                s();
                AtomicReferenceArray<E> atomicReferenceArray = this.f12993e;
                int length = (atomicReferenceArray.length() - 1) & i9;
                E e10 = atomicReferenceArray.get(length);
                for (i iVar = e10; iVar != null; iVar = iVar.c()) {
                    Object key = iVar.getKey();
                    if (iVar.b() == i9 && key != null && this.f12989a.f12959e.d(k10, key)) {
                        Object value = iVar.getValue();
                        if (value == null) {
                            if (n(iVar)) {
                                this.f12991c++;
                                atomicReferenceArray.set(length, z(e10, iVar));
                                this.f12990b--;
                            }
                            return false;
                        } else if (this.f12989a.m().d(v10, value)) {
                            this.f12991c++;
                            F(iVar, v11);
                            return true;
                        } else {
                            return false;
                        }
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        void C() {
            D();
        }

        void D() {
            if (tryLock()) {
                try {
                    p();
                    this.f12995g.set(0);
                } finally {
                    unlock();
                }
            }
        }

        abstract S E();

        void F(E e10, V v10) {
            this.f12989a.f12960f.c(E(), e10, v10);
        }

        void G() {
            if (tryLock()) {
                try {
                    p();
                } finally {
                    unlock();
                }
            }
        }

        void a() {
            if (this.f12990b != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f12993e;
                    for (int i9 = 0; i9 < atomicReferenceArray.length(); i9++) {
                        atomicReferenceArray.set(i9, null);
                    }
                    o();
                    this.f12995g.set(0);
                    this.f12991c++;
                    this.f12990b = 0;
                } finally {
                    unlock();
                }
            }
        }

        <T> void b(ReferenceQueue<T> referenceQueue) {
            do {
            } while (referenceQueue.poll() != null);
        }

        boolean c(Object obj, int i9) {
            try {
                boolean z10 = false;
                if (this.f12990b != 0) {
                    E k10 = k(obj, i9);
                    if (k10 != null) {
                        if (k10.getValue() != null) {
                            z10 = true;
                        }
                    }
                    return z10;
                }
                return false;
            } finally {
                r();
            }
        }

        E d(E e10, E e11) {
            return this.f12989a.f12960f.a(E(), e10, e11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        void e(ReferenceQueue<K> referenceQueue) {
            int i9 = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.f12989a.g((i) poll);
                i9++;
            } while (i9 != 16);
        }

        void f(ReferenceQueue<V> referenceQueue) {
            int i9 = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.f12989a.h((b0) poll);
                i9++;
            } while (i9 != 16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        void g() {
            AtomicReferenceArray<E> atomicReferenceArray = this.f12993e;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i9 = this.f12990b;
            AtomicReferenceArray<E> atomicReferenceArray2 = (AtomicReferenceArray<E>) q(length << 1);
            this.f12992d = (atomicReferenceArray2.length() * 3) / 4;
            int length2 = atomicReferenceArray2.length() - 1;
            for (int i10 = 0; i10 < length; i10++) {
                E e10 = atomicReferenceArray.get(i10);
                if (e10 != null) {
                    i c10 = e10.c();
                    int b10 = e10.b() & length2;
                    if (c10 == null) {
                        atomicReferenceArray2.set(b10, e10);
                    } else {
                        i iVar = e10;
                        while (c10 != null) {
                            int b11 = c10.b() & length2;
                            if (b11 != b10) {
                                iVar = c10;
                                b10 = b11;
                            }
                            c10 = c10.c();
                        }
                        atomicReferenceArray2.set(b10, iVar);
                        while (e10 != iVar) {
                            int b12 = e10.b() & length2;
                            i d10 = d(e10, (i) atomicReferenceArray2.get(b12));
                            if (d10 != null) {
                                atomicReferenceArray2.set(b12, d10);
                            } else {
                                i9--;
                            }
                            e10 = e10.c();
                        }
                    }
                }
            }
            this.f12993e = atomicReferenceArray2;
            this.f12990b = i9;
        }

        V h(Object obj, int i9) {
            try {
                E k10 = k(obj, i9);
                if (k10 == null) {
                    return null;
                }
                V v10 = (V) k10.getValue();
                if (v10 == null) {
                    G();
                }
                return v10;
            } finally {
                r();
            }
        }

        E i(Object obj, int i9) {
            if (this.f12990b != 0) {
                for (E j10 = j(i9); j10 != null; j10 = (E) j10.c()) {
                    if (j10.b() == i9) {
                        Object key = j10.getKey();
                        if (key == null) {
                            G();
                        } else if (this.f12989a.f12959e.d(obj, key)) {
                            return j10;
                        }
                    }
                }
                return null;
            }
            return null;
        }

        E j(int i9) {
            AtomicReferenceArray<E> atomicReferenceArray = this.f12993e;
            return atomicReferenceArray.get(i9 & (atomicReferenceArray.length() - 1));
        }

        E k(Object obj, int i9) {
            return i(obj, i9);
        }

        V l(E e10) {
            if (e10.getKey() == null) {
                G();
                return null;
            }
            V v10 = (V) e10.getValue();
            if (v10 == null) {
                G();
                return null;
            }
            return v10;
        }

        void m(AtomicReferenceArray<E> atomicReferenceArray) {
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.f12992d = length;
            if (length == this.f12994f) {
                this.f12992d = length + 1;
            }
            this.f12993e = atomicReferenceArray;
        }

        void o() {
        }

        void p() {
        }

        AtomicReferenceArray<E> q(int i9) {
            return new AtomicReferenceArray<>(i9);
        }

        void r() {
            if ((this.f12995g.incrementAndGet() & 63) == 0) {
                C();
            }
        }

        void s() {
            D();
        }

        /* JADX WARN: Multi-variable type inference failed */
        V t(K k10, int i9, V v10, boolean z10) {
            lock();
            try {
                s();
                int i10 = this.f12990b + 1;
                if (i10 > this.f12992d) {
                    g();
                    i10 = this.f12990b + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f12993e;
                int length = (atomicReferenceArray.length() - 1) & i9;
                E e10 = atomicReferenceArray.get(length);
                for (i iVar = e10; iVar != null; iVar = iVar.c()) {
                    Object key = iVar.getKey();
                    if (iVar.b() == i9 && key != null && this.f12989a.f12959e.d(k10, key)) {
                        V v11 = (V) iVar.getValue();
                        if (v11 == null) {
                            this.f12991c++;
                            F(iVar, v10);
                            this.f12990b = this.f12990b;
                            return null;
                        } else if (z10) {
                            return v11;
                        } else {
                            this.f12991c++;
                            F(iVar, v10);
                            return v11;
                        }
                    }
                }
                this.f12991c++;
                E d10 = this.f12989a.f12960f.d(E(), k10, i9, e10);
                F(d10, v10);
                atomicReferenceArray.set(length, d10);
                this.f12990b = i10;
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean u(E e10, int i9) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f12993e;
                int length = i9 & (atomicReferenceArray.length() - 1);
                E e11 = atomicReferenceArray.get(length);
                for (i iVar = e11; iVar != null; iVar = iVar.c()) {
                    if (iVar == e10) {
                        this.f12991c++;
                        atomicReferenceArray.set(length, z(e11, iVar));
                        this.f12990b--;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean v(K k10, int i9, b0<K, V, E> b0Var) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f12993e;
                int length = (atomicReferenceArray.length() - 1) & i9;
                E e10 = atomicReferenceArray.get(length);
                for (i iVar = e10; iVar != null; iVar = iVar.c()) {
                    Object key = iVar.getKey();
                    if (iVar.b() == i9 && key != null && this.f12989a.f12959e.d(k10, key)) {
                        if (((a0) iVar).a() == b0Var) {
                            this.f12991c++;
                            atomicReferenceArray.set(length, z(e10, iVar));
                            this.f12990b--;
                            return true;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        V w(Object obj, int i9) {
            lock();
            try {
                s();
                AtomicReferenceArray<E> atomicReferenceArray = this.f12993e;
                int length = (atomicReferenceArray.length() - 1) & i9;
                E e10 = atomicReferenceArray.get(length);
                for (i iVar = e10; iVar != null; iVar = iVar.c()) {
                    Object key = iVar.getKey();
                    if (iVar.b() == i9 && key != null && this.f12989a.f12959e.d(obj, key)) {
                        V v10 = (V) iVar.getValue();
                        if (v10 == null && !n(iVar)) {
                            return null;
                        }
                        this.f12991c++;
                        atomicReferenceArray.set(length, z(e10, iVar));
                        this.f12990b--;
                        return v10;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
            if (r8.f12989a.m().d(r11, r4.getValue()) == false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
            if (n(r4) == false) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
            r8.f12991c++;
            r0.set(r1, z(r3, r4));
            r8.f12990b--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
            return false;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean x(java.lang.Object r9, int r10, java.lang.Object r11) {
            /*
                r8 = this;
                r8.lock()
                r8.s()     // Catch: java.lang.Throwable -> L69
                java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.c6$i<K, V, E>> r0 = r8.f12993e     // Catch: java.lang.Throwable -> L69
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L69
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r10
                java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.c6$i r3 = (com.google.common.collect.c6.i) r3     // Catch: java.lang.Throwable -> L69
                r4 = r3
            L16:
                r5 = 0
                if (r4 == 0) goto L65
                java.lang.Object r6 = r4.getKey()     // Catch: java.lang.Throwable -> L69
                int r7 = r4.b()     // Catch: java.lang.Throwable -> L69
                if (r7 != r10) goto L60
                if (r6 == 0) goto L60
                com.google.common.collect.c6<K, V, E extends com.google.common.collect.c6$i<K, V, E>, S extends com.google.common.collect.c6$n<K, V, E, S>> r7 = r8.f12989a     // Catch: java.lang.Throwable -> L69
                com.google.common.base.Equivalence<java.lang.Object> r7 = r7.f12959e     // Catch: java.lang.Throwable -> L69
                boolean r6 = r7.d(r9, r6)     // Catch: java.lang.Throwable -> L69
                if (r6 == 0) goto L60
                java.lang.Object r9 = r4.getValue()     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.c6<K, V, E extends com.google.common.collect.c6$i<K, V, E>, S extends com.google.common.collect.c6$n<K, V, E, S>> r10 = r8.f12989a     // Catch: java.lang.Throwable -> L69
                com.google.common.base.Equivalence r10 = r10.m()     // Catch: java.lang.Throwable -> L69
                boolean r9 = r10.d(r11, r9)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L41
                r5 = 1
                goto L47
            L41:
                boolean r9 = n(r4)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L5c
            L47:
                int r9 = r8.f12991c     // Catch: java.lang.Throwable -> L69
                int r9 = r9 + r2
                r8.f12991c = r9     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.c6$i r9 = r8.z(r3, r4)     // Catch: java.lang.Throwable -> L69
                int r10 = r8.f12990b     // Catch: java.lang.Throwable -> L69
                int r10 = r10 - r2
                r0.set(r1, r9)     // Catch: java.lang.Throwable -> L69
                r8.f12990b = r10     // Catch: java.lang.Throwable -> L69
                r8.unlock()
                return r5
            L5c:
                r8.unlock()
                return r5
            L60:
                com.google.common.collect.c6$i r4 = r4.c()     // Catch: java.lang.Throwable -> L69
                goto L16
            L65:
                r8.unlock()
                return r5
            L69:
                r9 = move-exception
                r8.unlock()
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.c6.n.x(java.lang.Object, int, java.lang.Object):boolean");
        }

        E z(E e10, E e11) {
            int i9 = this.f12990b;
            E e12 = (E) e11.c();
            while (e10 != e11) {
                E d10 = d(e10, e12);
                if (d10 != null) {
                    e12 = d10;
                } else {
                    i9--;
                }
                e10 = (E) e10.c();
            }
            this.f12990b = i9;
            return e12;
        }
    }

    /* loaded from: classes2.dex */
    private static final class o<K, V> extends b<K, V> {
        private static final long serialVersionUID = 3;

        o(p pVar, p pVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i9, ConcurrentMap<K, V> concurrentMap) {
            super(pVar, pVar2, equivalence, equivalence2, i9, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f12969f = A0(objectInputStream).i();
            y0(objectInputStream);
        }

        private Object readResolve() {
            return this.f12969f;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            C0(objectOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class p {

        /* renamed from: a  reason: collision with root package name */
        public static final p f12996a = new a("STRONG", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final p f12997b = new b("WEAK", 1);

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ p[] f12998c = a();

        /* loaded from: classes2.dex */
        enum a extends p {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.collect.c6.p
            Equivalence<Object> b() {
                return Equivalence.c();
            }
        }

        /* loaded from: classes2.dex */
        enum b extends p {
            b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.collect.c6.p
            Equivalence<Object> b() {
                return Equivalence.f();
            }
        }

        private p(String str, int i9) {
        }

        private static /* synthetic */ p[] a() {
            return new p[]{f12996a, f12997b};
        }

        public static p valueOf(String str) {
            return (p) Enum.valueOf(p.class, str);
        }

        public static p[] values() {
            return (p[]) f12998c.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Equivalence<Object> b();

        /* synthetic */ p(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class q<K, V> extends c<K, V, q<K, V>> {

        /* renamed from: d  reason: collision with root package name */
        private volatile V f12999d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public static final class a<K, V> implements j<K, V, q<K, V>, r<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f13000a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f13000a;
            }

            @Override // com.google.common.collect.c6.j
            public p b() {
                return p.f12996a;
            }

            @Override // com.google.common.collect.c6.j
            public p e() {
                return p.f12996a;
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: g */
            public q<K, V> a(r<K, V> rVar, q<K, V> qVar, q<K, V> qVar2) {
                return qVar.d(qVar2);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: i */
            public q<K, V> d(r<K, V> rVar, K k10, int i9, q<K, V> qVar) {
                return new q<>(k10, i9, qVar);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: j */
            public r<K, V> f(c6<K, V, q<K, V>, r<K, V>> c6Var, int i9, int i10) {
                return new r<>(c6Var, i9, i10);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: k */
            public void c(r<K, V> rVar, q<K, V> qVar, V v10) {
                qVar.e(v10);
            }
        }

        q(K k10, int i9, q<K, V> qVar) {
            super(k10, i9, qVar);
            this.f12999d = null;
        }

        q<K, V> d(q<K, V> qVar) {
            q<K, V> qVar2 = new q<>(this.f12970a, this.f12971b, qVar);
            qVar2.f12999d = this.f12999d;
            return qVar2;
        }

        void e(V v10) {
            this.f12999d = v10;
        }

        @Override // com.google.common.collect.c6.i
        public V getValue() {
            return this.f12999d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class r<K, V> extends n<K, V, q<K, V>, r<K, V>> {
        r(c6<K, V, q<K, V>, r<K, V>> c6Var, int i9, int i10) {
            super(c6Var, i9, i10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c6.n
        /* renamed from: H */
        public r<K, V> E() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class s<K, V> extends c<K, V, s<K, V>> implements a0<K, V, s<K, V>> {

        /* renamed from: d  reason: collision with root package name */
        private volatile b0<K, V, s<K, V>> f13001d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public static final class a<K, V> implements j<K, V, s<K, V>, t<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f13002a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f13002a;
            }

            @Override // com.google.common.collect.c6.j
            public p b() {
                return p.f12997b;
            }

            @Override // com.google.common.collect.c6.j
            public p e() {
                return p.f12996a;
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: g */
            public s<K, V> a(t<K, V> tVar, s<K, V> sVar, s<K, V> sVar2) {
                if (n.n(sVar)) {
                    return null;
                }
                return sVar.d(((t) tVar).f13003h, sVar2);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: i */
            public s<K, V> d(t<K, V> tVar, K k10, int i9, s<K, V> sVar) {
                return new s<>(k10, i9, sVar);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: j */
            public t<K, V> f(c6<K, V, s<K, V>, t<K, V>> c6Var, int i9, int i10) {
                return new t<>(c6Var, i9, i10);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: k */
            public void c(t<K, V> tVar, s<K, V> sVar, V v10) {
                sVar.e(v10, ((t) tVar).f13003h);
            }
        }

        s(K k10, int i9, s<K, V> sVar) {
            super(k10, i9, sVar);
            this.f13001d = c6.l();
        }

        @Override // com.google.common.collect.c6.a0
        public b0<K, V, s<K, V>> a() {
            return this.f13001d;
        }

        s<K, V> d(ReferenceQueue<V> referenceQueue, s<K, V> sVar) {
            s<K, V> sVar2 = new s<>(this.f12970a, this.f12971b, sVar);
            sVar2.f13001d = this.f13001d.b(referenceQueue, sVar2);
            return sVar2;
        }

        void e(V v10, ReferenceQueue<V> referenceQueue) {
            b0<K, V, s<K, V>> b0Var = this.f13001d;
            this.f13001d = new c0(referenceQueue, v10, this);
            b0Var.clear();
        }

        @Override // com.google.common.collect.c6.i
        public V getValue() {
            return this.f13001d.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class t<K, V> extends n<K, V, s<K, V>, t<K, V>> {

        /* renamed from: h  reason: collision with root package name */
        private final ReferenceQueue<V> f13003h;

        t(c6<K, V, s<K, V>, t<K, V>> c6Var, int i9, int i10) {
            super(c6Var, i9, i10);
            this.f13003h = new ReferenceQueue<>();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c6.n
        /* renamed from: I */
        public t<K, V> E() {
            return this;
        }

        @Override // com.google.common.collect.c6.n
        void o() {
            b((ReferenceQueue<V>) this.f13003h);
        }

        @Override // com.google.common.collect.c6.n
        void p() {
            f(this.f13003h);
        }
    }

    /* loaded from: classes2.dex */
    final class u extends c6<K, V, E, S>.h<V> {
        u(c6 c6Var) {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return c().getValue();
        }
    }

    /* loaded from: classes2.dex */
    final class v extends AbstractCollection<V> {
        v() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            c6.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return c6.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return c6.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new u(c6.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return c6.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return c6.k(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) c6.k(this).toArray(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class w<K, V> extends d<K, V, w<K, V>> {

        /* renamed from: c  reason: collision with root package name */
        private volatile V f13005c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public static final class a<K, V> implements j<K, V, w<K, V>, x<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f13006a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f13006a;
            }

            @Override // com.google.common.collect.c6.j
            public p b() {
                return p.f12996a;
            }

            @Override // com.google.common.collect.c6.j
            public p e() {
                return p.f12997b;
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: g */
            public w<K, V> a(x<K, V> xVar, w<K, V> wVar, w<K, V> wVar2) {
                if (wVar.getKey() == null) {
                    return null;
                }
                return wVar.d(((x) xVar).f13007h, wVar2);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: i */
            public w<K, V> d(x<K, V> xVar, K k10, int i9, w<K, V> wVar) {
                return new w<>(((x) xVar).f13007h, k10, i9, wVar);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: j */
            public x<K, V> f(c6<K, V, w<K, V>, x<K, V>> c6Var, int i9, int i10) {
                return new x<>(c6Var, i9, i10);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: k */
            public void c(x<K, V> xVar, w<K, V> wVar, V v10) {
                wVar.e(v10);
            }
        }

        w(ReferenceQueue<K> referenceQueue, K k10, int i9, w<K, V> wVar) {
            super(referenceQueue, k10, i9, wVar);
            this.f13005c = null;
        }

        w<K, V> d(ReferenceQueue<K> referenceQueue, w<K, V> wVar) {
            w<K, V> wVar2 = new w<>(referenceQueue, getKey(), this.f12974a, wVar);
            wVar2.e(this.f13005c);
            return wVar2;
        }

        void e(V v10) {
            this.f13005c = v10;
        }

        @Override // com.google.common.collect.c6.i
        public V getValue() {
            return this.f13005c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class x<K, V> extends n<K, V, w<K, V>, x<K, V>> {

        /* renamed from: h  reason: collision with root package name */
        private final ReferenceQueue<K> f13007h;

        x(c6<K, V, w<K, V>, x<K, V>> c6Var, int i9, int i10) {
            super(c6Var, i9, i10);
            this.f13007h = new ReferenceQueue<>();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c6.n
        /* renamed from: I */
        public x<K, V> E() {
            return this;
        }

        @Override // com.google.common.collect.c6.n
        void o() {
            b((ReferenceQueue<K>) this.f13007h);
        }

        @Override // com.google.common.collect.c6.n
        void p() {
            e(this.f13007h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class y<K, V> extends d<K, V, y<K, V>> implements a0<K, V, y<K, V>> {

        /* renamed from: c  reason: collision with root package name */
        private volatile b0<K, V, y<K, V>> f13008c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public static final class a<K, V> implements j<K, V, y<K, V>, z<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f13009a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f13009a;
            }

            @Override // com.google.common.collect.c6.j
            public p b() {
                return p.f12997b;
            }

            @Override // com.google.common.collect.c6.j
            public p e() {
                return p.f12997b;
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: g */
            public y<K, V> a(z<K, V> zVar, y<K, V> yVar, y<K, V> yVar2) {
                if (yVar.getKey() == null || n.n(yVar)) {
                    return null;
                }
                return yVar.d(((z) zVar).f13010h, ((z) zVar).f13011i, yVar2);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: i */
            public y<K, V> d(z<K, V> zVar, K k10, int i9, y<K, V> yVar) {
                return new y<>(((z) zVar).f13010h, k10, i9, yVar);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: j */
            public z<K, V> f(c6<K, V, y<K, V>, z<K, V>> c6Var, int i9, int i10) {
                return new z<>(c6Var, i9, i10);
            }

            @Override // com.google.common.collect.c6.j
            /* renamed from: k */
            public void c(z<K, V> zVar, y<K, V> yVar, V v10) {
                yVar.e(v10, ((z) zVar).f13011i);
            }
        }

        y(ReferenceQueue<K> referenceQueue, K k10, int i9, y<K, V> yVar) {
            super(referenceQueue, k10, i9, yVar);
            this.f13008c = c6.l();
        }

        @Override // com.google.common.collect.c6.a0
        public b0<K, V, y<K, V>> a() {
            return this.f13008c;
        }

        y<K, V> d(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, y<K, V> yVar) {
            y<K, V> yVar2 = new y<>(referenceQueue, getKey(), this.f12974a, yVar);
            yVar2.f13008c = this.f13008c.b(referenceQueue2, yVar2);
            return yVar2;
        }

        void e(V v10, ReferenceQueue<V> referenceQueue) {
            b0<K, V, y<K, V>> b0Var = this.f13008c;
            this.f13008c = new c0(referenceQueue, v10, this);
            b0Var.clear();
        }

        @Override // com.google.common.collect.c6.i
        public V getValue() {
            return this.f13008c.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class z<K, V> extends n<K, V, y<K, V>, z<K, V>> {

        /* renamed from: h  reason: collision with root package name */
        private final ReferenceQueue<K> f13010h;

        /* renamed from: i  reason: collision with root package name */
        private final ReferenceQueue<V> f13011i;

        z(c6<K, V, y<K, V>, z<K, V>> c6Var, int i9, int i10) {
            super(c6Var, i9, i10);
            this.f13010h = new ReferenceQueue<>();
            this.f13011i = new ReferenceQueue<>();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.c6.n
        /* renamed from: J */
        public z<K, V> E() {
            return this;
        }

        @Override // com.google.common.collect.c6.n
        void o() {
            b((ReferenceQueue<K>) this.f13010h);
        }

        @Override // com.google.common.collect.c6.n
        void p() {
            e(this.f13010h);
            f(this.f13011i);
        }
    }

    private c6(b6 b6Var, j<K, V, E, S> jVar) {
        this.f12958d = Math.min(b6Var.b(), 65536);
        this.f12959e = b6Var.d();
        this.f12960f = jVar;
        int min = Math.min(b6Var.c(), (int) BasicMeasure.EXACTLY);
        int i9 = 0;
        int i10 = 1;
        int i11 = 1;
        int i12 = 0;
        while (i11 < this.f12958d) {
            i12++;
            i11 <<= 1;
        }
        this.f12956b = 32 - i12;
        this.f12955a = i11 - 1;
        this.f12957c = f(i11);
        int i13 = min / i11;
        while (i10 < (i11 * i13 < min ? i13 + 1 : i13)) {
            i10 <<= 1;
        }
        while (true) {
            n<K, V, E, S>[] nVarArr = this.f12957c;
            if (i9 >= nVarArr.length) {
                return;
            }
            nVarArr[i9] = c(i10, -1);
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> c6<K, V, ? extends i<K, V, ?>, ?> b(b6 b6Var) {
        p e10 = b6Var.e();
        p pVar = p.f12996a;
        if (e10 == pVar && b6Var.f() == pVar) {
            return new c6<>(b6Var, q.a.h());
        }
        if (b6Var.e() == pVar && b6Var.f() == p.f12997b) {
            return new c6<>(b6Var, s.a.h());
        }
        p e11 = b6Var.e();
        p pVar2 = p.f12997b;
        if (e11 == pVar2 && b6Var.f() == pVar) {
            return new c6<>(b6Var, w.a.h());
        }
        if (b6Var.e() == pVar2 && b6Var.f() == pVar2) {
            return new c6<>(b6Var, y.a.h());
        }
        throw new AssertionError();
    }

    static int i(int i9) {
        int i10 = i9 + ((i9 << 15) ^ (-12931));
        int i11 = i10 ^ (i10 >>> 10);
        int i12 = i11 + (i11 << 3);
        int i13 = i12 ^ (i12 >>> 6);
        int i14 = i13 + (i13 << 2) + (i13 << 14);
        return i14 ^ (i14 >>> 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> k(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        p5.a(arrayList, collection.iterator());
        return arrayList;
    }

    static <K, V, E extends i<K, V, E>> b0<K, V, E> l() {
        return (b0<K, V, E>) f12954j;
    }

    n<K, V, E, S> c(int i9, int i10) {
        return (S) this.f12960f.f(this, i9, i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (n<K, V, E, S> nVar : this.f12957c) {
            nVar.a();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int e10 = e(obj);
        return j(e10).c(obj, e10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        if (obj == null) {
            return false;
        }
        n<K, V, E, S>[] nVarArr = this.f12957c;
        long j10 = -1;
        int i9 = 0;
        while (i9 < 3) {
            long j11 = 0;
            for (z zVar : nVarArr) {
                int i10 = zVar.f12990b;
                AtomicReferenceArray<E> atomicReferenceArray = zVar.f12993e;
                for (int i11 = 0; i11 < atomicReferenceArray.length(); i11++) {
                    for (E e10 = atomicReferenceArray.get(i11); e10 != null; e10 = e10.c()) {
                        Object l10 = zVar.l(e10);
                        if (l10 != null && m().d(obj, l10)) {
                            return true;
                        }
                    }
                }
                j11 += zVar.f12991c;
            }
            if (j11 == j10) {
                return false;
            }
            i9++;
            j10 = j11;
        }
        return false;
    }

    V d(E e10) {
        if (e10.getKey() == null) {
            return null;
        }
        return (V) e10.getValue();
    }

    int e(Object obj) {
        return i(this.f12959e.e(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f12963i;
        if (set != null) {
            return set;
        }
        g gVar = new g();
        this.f12963i = gVar;
        return gVar;
    }

    final n<K, V, E, S>[] f(int i9) {
        return new n[i9];
    }

    void g(E e10) {
        int b10 = e10.b();
        j(b10).u(e10, b10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int e10 = e(obj);
        return j(e10).h(obj, e10);
    }

    void h(b0<K, V, E> b0Var) {
        E a10 = b0Var.a();
        int b10 = a10.b();
        j(b10).v((K) a10.getKey(), b10, b0Var);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        n<K, V, E, S>[] nVarArr = this.f12957c;
        long j10 = 0;
        for (int i9 = 0; i9 < nVarArr.length; i9++) {
            if (nVarArr[i9].f12990b != 0) {
                return false;
            }
            j10 += nVarArr[i9].f12991c;
        }
        if (j10 != 0) {
            for (int i10 = 0; i10 < nVarArr.length; i10++) {
                if (nVarArr[i10].f12990b != 0) {
                    return false;
                }
                j10 -= nVarArr[i10].f12991c;
            }
            return j10 == 0;
        }
        return true;
    }

    n<K, V, E, S> j(int i9) {
        return this.f12957c[(i9 >>> this.f12956b) & this.f12955a];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f12961g;
        if (set != null) {
            return set;
        }
        l lVar = new l();
        this.f12961g = lVar;
        return lVar;
    }

    Equivalence<Object> m() {
        return this.f12960f.b().b();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(v10);
        int e10 = e(k10);
        return j(e10).t(k10, e10, v10, false);
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
        int e10 = e(k10);
        return j(e10).t(k10, e10, v10, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int e10 = e(obj);
        return j(e10).w(obj, e10);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k10, V v10, V v11) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(v11);
        if (v10 == null) {
            return false;
        }
        int e10 = e(k10);
        return j(e10).B(k10, e10, v10, v11);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j10 = 0;
        for (n<K, V, E, S> nVar : this.f12957c) {
            j10 += nVar.f12990b;
        }
        return com.google.common.primitives.f.i(j10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f12962h;
        if (collection != null) {
            return collection;
        }
        v vVar = new v();
        this.f12962h = vVar;
        return vVar;
    }

    Object writeReplace() {
        return new o(this.f12960f.e(), this.f12960f.b(), this.f12959e, this.f12960f.b().b(), this.f12958d, this);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int e10 = e(obj);
        return j(e10).x(obj, e10, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k10, V v10) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(v10);
        int e10 = e(k10);
        return j(e10).A(k10, e10, v10);
    }
}
