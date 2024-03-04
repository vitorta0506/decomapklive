package com.google.common.collect;

import com.google.common.collect.d6;
import com.google.common.collect.n8;
import com.google.common.collect.q8;
import com.google.common.collect.w7;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Function;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class n8<R, C, V> extends y<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final Map<R, Map<C, V>> backingMap;
    private transient Set<C> columnKeySet;
    private transient n8<R, C, V>.f columnMap;
    final com.google.common.base.w<? extends Map<C, V>> factory;
    private transient Map<R, Map<C, V>> rowMap;

    /* loaded from: classes2.dex */
    private class b implements Iterator<q8.a<R, C, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<Map.Entry<R, Map<C, V>>> f13286a;

        /* renamed from: b  reason: collision with root package name */
        Map.Entry<R, Map<C, V>> f13287b;

        /* renamed from: c  reason: collision with root package name */
        Iterator<Map.Entry<C, V>> f13288c;

        private b() {
            this.f13286a = n8.this.backingMap.entrySet().iterator();
            this.f13288c = p5.k();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public q8.a<R, C, V> next() {
            if (!this.f13288c.hasNext()) {
                Map.Entry<R, Map<C, V>> next = this.f13286a.next();
                this.f13287b = next;
                this.f13288c = next.getValue().entrySet().iterator();
            }
            Objects.requireNonNull(this.f13287b);
            Map.Entry<C, V> next2 = this.f13288c.next();
            return a9.b(this.f13287b.getKey(), next2.getKey(), next2.getValue());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13286a.hasNext() || this.f13288c.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f13288c.remove();
            Map.Entry<R, Map<C, V>> entry = this.f13287b;
            Objects.requireNonNull(entry);
            if (entry.getValue().isEmpty()) {
                this.f13286a.remove();
                this.f13287b = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c extends d6.n<R, V> {

        /* renamed from: d  reason: collision with root package name */
        final C f13290d;

        /* loaded from: classes2.dex */
        private class a extends w7.f<Map.Entry<R, V>> {
            private a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                c.this.d(com.google.common.base.r.b());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return n8.this.containsMapping(entry.getKey(), c.this.f13290d, entry.getValue());
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                c cVar = c.this;
                return !n8.this.containsColumn(cVar.f13290d);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, V>> iterator() {
                return new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return n8.this.removeMapping(entry.getKey(), c.this.f13290d, entry.getValue());
                }
                return false;
            }

            @Override // com.google.common.collect.w7.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return c.this.d(com.google.common.base.r.i(com.google.common.base.r.g(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                int i9 = 0;
                for (Map<C, V> map : n8.this.backingMap.values()) {
                    if (map.containsKey(c.this.f13290d)) {
                        i9++;
                    }
                }
                return i9;
            }
        }

        /* loaded from: classes2.dex */
        private class b extends com.google.common.collect.c<Map.Entry<R, V>> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<Map.Entry<R, Map<C, V>>> f13293c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes2.dex */
            public class a extends n<R, V> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Map.Entry f13295a;

                a(Map.Entry entry) {
                    this.f13295a = entry;
                }

                @Override // com.google.common.collect.n, java.util.Map.Entry
                public R getKey() {
                    return (R) this.f13295a.getKey();
                }

                @Override // com.google.common.collect.n, java.util.Map.Entry
                public V getValue() {
                    return (V) ((Map) this.f13295a.getValue()).get(c.this.f13290d);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.common.collect.n, java.util.Map.Entry
                public V setValue(V v10) {
                    return (V) w6.a(((Map) this.f13295a.getValue()).put(c.this.f13290d, com.google.common.base.o.s(v10)));
                }
            }

            private b() {
                this.f13293c = n8.this.backingMap.entrySet().iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<R, V> a() {
                while (this.f13293c.hasNext()) {
                    Map.Entry<R, Map<C, V>> next = this.f13293c.next();
                    if (next.getValue().containsKey(c.this.f13290d)) {
                        return new a(next);
                    }
                }
                return b();
            }
        }

        /* renamed from: com.google.common.collect.n8$c$c  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private class C0118c extends d6.j<R, V> {
            C0118c() {
                super(c.this);
            }

            @Override // com.google.common.collect.d6.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                c cVar = c.this;
                return n8.this.contains(obj, cVar.f13290d);
            }

            @Override // com.google.common.collect.d6.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                c cVar = c.this;
                return n8.this.remove(obj, cVar.f13290d) != null;
            }

            @Override // com.google.common.collect.w7.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return c.this.d(d6.l(com.google.common.base.r.i(com.google.common.base.r.g(collection))));
            }
        }

        /* loaded from: classes2.dex */
        private class d extends d6.m<R, V> {
            d() {
                super(c.this);
            }

            @Override // com.google.common.collect.d6.m, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                return obj != null && c.this.d(d6.B(com.google.common.base.r.f(obj)));
            }

            @Override // com.google.common.collect.d6.m, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return c.this.d(d6.B(com.google.common.base.r.g(collection)));
            }

            @Override // com.google.common.collect.d6.m, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return c.this.d(d6.B(com.google.common.base.r.i(com.google.common.base.r.g(collection))));
            }
        }

        c(C c10) {
            this.f13290d = (C) com.google.common.base.o.s(c10);
        }

        @Override // com.google.common.collect.d6.n
        Set<Map.Entry<R, V>> a() {
            return new a();
        }

        @Override // com.google.common.collect.d6.n
        Set<R> b() {
            return new C0118c();
        }

        @Override // com.google.common.collect.d6.n
        Collection<V> c() {
            return new d();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return n8.this.contains(obj, this.f13290d);
        }

        boolean d(com.google.common.base.q<? super Map.Entry<R, V>> qVar) {
            Iterator<Map.Entry<R, Map<C, V>>> it = n8.this.backingMap.entrySet().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v10 = value.get(this.f13290d);
                if (v10 != null && qVar.apply(d6.g(next.getKey(), v10))) {
                    value.remove(this.f13290d);
                    z10 = true;
                    if (value.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z10;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            return (V) n8.this.get(obj, this.f13290d);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(R r10, V v10) {
            return (V) n8.this.put(r10, this.f13290d, v10);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            return (V) n8.this.remove(obj, this.f13290d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d extends com.google.common.collect.c<C> {

        /* renamed from: c  reason: collision with root package name */
        final Map<C, V> f13299c;

        /* renamed from: d  reason: collision with root package name */
        final Iterator<Map<C, V>> f13300d;

        /* renamed from: e  reason: collision with root package name */
        Iterator<Map.Entry<C, V>> f13301e;

        private d() {
            this.f13299c = n8.this.factory.get();
            this.f13300d = n8.this.backingMap.values().iterator();
            this.f13301e = p5.i();
        }

        @Override // com.google.common.collect.c
        protected C a() {
            while (true) {
                if (this.f13301e.hasNext()) {
                    Map.Entry<C, V> next = this.f13301e.next();
                    if (!this.f13299c.containsKey(next.getKey())) {
                        this.f13299c.put(next.getKey(), next.getValue());
                        return next.getKey();
                    }
                } else if (this.f13300d.hasNext()) {
                    this.f13301e = this.f13300d.next().entrySet().iterator();
                } else {
                    return b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e extends n8<R, C, V>.i<C> {
        private e() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return n8.this.containsColumn(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<C> iterator() {
            return n8.this.createColumnKeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z10 = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = n8.this.backingMap.values().iterator();
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().remove(obj)) {
                    z10 = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z10;
        }

        @Override // com.google.common.collect.w7.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            com.google.common.base.o.s(collection);
            Iterator<Map<C, V>> it = n8.this.backingMap.values().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (p5.w(next.keySet().iterator(), collection)) {
                    z10 = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z10;
        }

        @Override // com.google.common.collect.w7.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            com.google.common.base.o.s(collection);
            Iterator<Map<C, V>> it = n8.this.backingMap.values().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().retainAll(collection)) {
                    z10 = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return p5.A(iterator());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class f extends d6.n<C, Map<R, V>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends n8<R, C, V>.i<Map.Entry<C, Map<R, V>>> {

            /* renamed from: com.google.common.collect.n8$f$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0119a implements com.google.common.base.h<C, Map<R, V>> {
                C0119a() {
                }

                @Override // com.google.common.base.h, java.util.function.Function
                /* renamed from: a */
                public Map<R, V> apply(C c10) {
                    return n8.this.column(c10);
                }
            }

            a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (n8.this.containsColumn(entry.getKey())) {
                        Map<R, V> map = f.this.get(entry.getKey());
                        Objects.requireNonNull(map);
                        return map.equals(entry.getValue());
                    }
                    return false;
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                return d6.a(n8.this.columnKeySet(), new C0119a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (contains(obj) && (obj instanceof Map.Entry)) {
                    n8.this.removeColumn(((Map.Entry) obj).getKey());
                    return true;
                }
                return false;
            }

            @Override // com.google.common.collect.w7.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                com.google.common.base.o.s(collection);
                return w7.p(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.w7.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                com.google.common.base.o.s(collection);
                Iterator it = z5.i(n8.this.columnKeySet().iterator()).iterator();
                boolean z10 = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(d6.g(next, n8.this.column(next)))) {
                        n8.this.removeColumn(next);
                        z10 = true;
                    }
                }
                return z10;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return n8.this.columnKeySet().size();
            }
        }

        /* loaded from: classes2.dex */
        private class b extends d6.m<C, Map<R, V>> {
            b() {
                super(f.this);
            }

            @Override // com.google.common.collect.d6.m, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                for (Map.Entry<C, Map<R, V>> entry : f.this.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        n8.this.removeColumn(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.d6.m, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                com.google.common.base.o.s(collection);
                Iterator it = z5.i(n8.this.columnKeySet().iterator()).iterator();
                boolean z10 = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (collection.contains(n8.this.column(next))) {
                        n8.this.removeColumn(next);
                        z10 = true;
                    }
                }
                return z10;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.d6.m, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                com.google.common.base.o.s(collection);
                Iterator it = z5.i(n8.this.columnKeySet().iterator()).iterator();
                boolean z10 = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(n8.this.column(next))) {
                        n8.this.removeColumn(next);
                        z10 = true;
                    }
                }
                return z10;
            }
        }

        private f() {
        }

        @Override // com.google.common.collect.d6.n
        public Set<Map.Entry<C, Map<R, V>>> a() {
            return new a();
        }

        @Override // com.google.common.collect.d6.n
        Collection<Map<R, V>> c() {
            return new b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return n8.this.containsColumn(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Map<R, V> get(Object obj) {
            if (n8.this.containsColumn(obj)) {
                n8 n8Var = n8.this;
                Objects.requireNonNull(obj);
                return n8Var.column(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Map<R, V> remove(Object obj) {
            if (n8.this.containsColumn(obj)) {
                return n8.this.removeColumn(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.d6.n, java.util.AbstractMap, java.util.Map
        public Set<C> keySet() {
            return n8.this.columnKeySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g extends d6.i<C, V> {

        /* renamed from: a  reason: collision with root package name */
        final R f13308a;

        /* renamed from: b  reason: collision with root package name */
        Map<C, V> f13309b;

        /* loaded from: classes2.dex */
        class a implements Iterator<Map.Entry<C, V>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterator f13311a;

            a(Iterator it) {
                this.f13311a = it;
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<C, V> next() {
                return g.this.d((Map.Entry) this.f13311a.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f13311a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f13311a.remove();
                g.this.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class b extends u3<C, V> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Map.Entry f13313a;

            b(g gVar, Map.Entry entry) {
                this.f13313a = entry;
            }

            @Override // com.google.common.collect.u3, java.util.Map.Entry
            public boolean equals(Object obj) {
                return standardEquals(obj);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.u3, java.util.Map.Entry
            public V setValue(V v10) {
                return (V) super.setValue(com.google.common.base.o.s(v10));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.w3
            /* renamed from: w0 */
            public Map.Entry<C, V> delegate() {
                return this.f13313a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(R r10) {
            this.f13308a = (R) com.google.common.base.o.s(r10);
        }

        Map<C, V> a() {
            return n8.this.backingMap.get(this.f13308a);
        }

        void b() {
            c();
            Map<C, V> map = this.f13309b;
            if (map == null || !map.isEmpty()) {
                return;
            }
            n8.this.backingMap.remove(this.f13308a);
            this.f13309b = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void c() {
            Map<C, V> map = this.f13309b;
            if (map == null || (map.isEmpty() && n8.this.backingMap.containsKey(this.f13308a))) {
                this.f13309b = a();
            }
        }

        @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
        public void clear() {
            c();
            Map<C, V> map = this.f13309b;
            if (map != null) {
                map.clear();
            }
            b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map<C, V> map;
            c();
            return (obj == null || (map = this.f13309b) == null || !d6.s(map, obj)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map.Entry<C, V> d(Map.Entry<C, V> entry) {
            return new b(this, entry);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.i
        public Iterator<Map.Entry<C, V>> entryIterator() {
            c();
            Map<C, V> map = this.f13309b;
            if (map == null) {
                return p5.k();
            }
            return new a(map.entrySet().iterator());
        }

        @Override // com.google.common.collect.d6.i
        Spliterator<Map.Entry<C, V>> entrySpliterator() {
            c();
            Map<C, V> map = this.f13309b;
            if (map == null) {
                return Spliterators.emptySpliterator();
            }
            return s2.e(map.entrySet().spliterator(), new Function() { // from class: com.google.common.collect.o8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return n8.g.this.d((Map.Entry) obj);
                }
            });
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Map<C, V> map;
            c();
            if (obj == null || (map = this.f13309b) == null) {
                return null;
            }
            return (V) d6.t(map, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(C c10, V v10) {
            com.google.common.base.o.s(c10);
            com.google.common.base.o.s(v10);
            Map<C, V> map = this.f13309b;
            if (map != null && !map.isEmpty()) {
                return this.f13309b.put(c10, v10);
            }
            return (V) n8.this.put(this.f13308a, c10, v10);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            c();
            Map<C, V> map = this.f13309b;
            if (map == null) {
                return null;
            }
            V v10 = (V) d6.u(map, obj);
            b();
            return v10;
        }

        @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
        public int size() {
            c();
            Map<C, V> map = this.f13309b;
            if (map == null) {
                return 0;
            }
            return map.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h extends d6.n<R, Map<C, V>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends n8<R, C, V>.i<Map.Entry<R, Map<C, V>>> {

            /* renamed from: com.google.common.collect.n8$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0120a implements com.google.common.base.h<R, Map<C, V>> {
                C0120a() {
                }

                @Override // com.google.common.base.h, java.util.function.Function
                /* renamed from: a */
                public Map<C, V> apply(R r10) {
                    return n8.this.row(r10);
                }
            }

            a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return entry.getKey() != null && (entry.getValue() instanceof Map) && c3.c(n8.this.backingMap.entrySet(), entry);
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return d6.a(n8.this.backingMap.keySet(), new C0120a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return entry.getKey() != null && (entry.getValue() instanceof Map) && n8.this.backingMap.entrySet().remove(entry);
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return n8.this.backingMap.size();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public h() {
        }

        @Override // com.google.common.collect.d6.n
        protected Set<Map.Entry<R, Map<C, V>>> a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return n8.this.containsRow(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Map<C, V> get(Object obj) {
            if (n8.this.containsRow(obj)) {
                n8 n8Var = n8.this;
                Objects.requireNonNull(obj);
                return n8Var.row(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Map<C, V> remove(Object obj) {
            if (obj == null) {
                return null;
            }
            return n8.this.backingMap.remove(obj);
        }
    }

    /* loaded from: classes2.dex */
    private abstract class i<T> extends w7.f<T> {
        private i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            n8.this.backingMap.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return n8.this.backingMap.isEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n8(Map<R, Map<C, V>> map, com.google.common.base.w<? extends Map<C, V>> wVar) {
        this.backingMap = map;
        this.factory = wVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean containsMapping(Object obj, Object obj2, Object obj3) {
        return obj3 != null && obj3.equals(get(obj, obj2));
    }

    private Map<C, V> getOrCreate(R r10) {
        Map<C, V> map = this.backingMap.get(r10);
        if (map == null) {
            Map<C, V> map2 = this.factory.get();
            this.backingMap.put(r10, map2);
            return map2;
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ q8.a lambda$cellSpliterator$0(Map.Entry entry, Map.Entry entry2) {
        return a9.b(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator lambda$cellSpliterator$1(final Map.Entry entry) {
        return s2.e(((Map) entry.getValue()).entrySet().spliterator(), new Function() { // from class: com.google.common.collect.l8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                q8.a lambda$cellSpliterator$0;
                lambda$cellSpliterator$0 = n8.lambda$cellSpliterator$0(entry, (Map.Entry) obj);
                return lambda$cellSpliterator$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<R, V> removeColumn(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.backingMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V remove = next.getValue().remove(obj);
            if (remove != null) {
                linkedHashMap.put(next.getKey(), remove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeMapping(Object obj, Object obj2, Object obj3) {
        if (containsMapping(obj, obj2, obj3)) {
            remove(obj, obj2);
            return true;
        }
        return false;
    }

    @Override // com.google.common.collect.y
    Iterator<q8.a<R, C, V>> cellIterator() {
        return new b();
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public Set<q8.a<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.y
    Spliterator<q8.a<R, C, V>> cellSpliterator() {
        return s2.b(this.backingMap.entrySet().spliterator(), new Function() { // from class: com.google.common.collect.m8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator lambda$cellSpliterator$1;
                lambda$cellSpliterator$1 = n8.lambda$cellSpliterator$1((Map.Entry) obj);
                return lambda$cellSpliterator$1;
            }
        }, 65, size());
    }

    @Override // com.google.common.collect.y
    public void clear() {
        this.backingMap.clear();
    }

    public Map<R, V> column(C c10) {
        return new c(c10);
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public Set<C> columnKeySet() {
        Set<C> set = this.columnKeySet;
        if (set == null) {
            e eVar = new e();
            this.columnKeySet = eVar;
            return eVar;
        }
        return set;
    }

    @Override // com.google.common.collect.q8
    public Map<C, Map<R, V>> columnMap() {
        n8<R, C, V>.f fVar = this.columnMap;
        if (fVar == null) {
            n8<R, C, V>.f fVar2 = new f();
            this.columnMap = fVar2;
            return fVar2;
        }
        return fVar;
    }

    @Override // com.google.common.collect.y
    public boolean contains(Object obj, Object obj2) {
        return (obj == null || obj2 == null || !super.contains(obj, obj2)) ? false : true;
    }

    @Override // com.google.common.collect.y
    public boolean containsColumn(Object obj) {
        if (obj == null) {
            return false;
        }
        for (Map<C, V> map : this.backingMap.values()) {
            if (d6.s(map, obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.y
    public boolean containsRow(Object obj) {
        return obj != null && d6.s(this.backingMap, obj);
    }

    @Override // com.google.common.collect.y
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    Iterator<C> createColumnKeyIterator() {
        return new d();
    }

    Map<R, Map<C, V>> createRowMap() {
        return new h();
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public V get(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.get(obj, obj2);
    }

    @Override // com.google.common.collect.y
    public boolean isEmpty() {
        return this.backingMap.isEmpty();
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public V put(R r10, C c10, V v10) {
        com.google.common.base.o.s(r10);
        com.google.common.base.o.s(c10);
        com.google.common.base.o.s(v10);
        return getOrCreate(r10).put(c10, v10);
    }

    @Override // com.google.common.collect.y
    public V remove(Object obj, Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) d6.t(this.backingMap, obj)) == null) {
            return null;
        }
        V v10 = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.backingMap.remove(obj);
        }
        return v10;
    }

    @Override // com.google.common.collect.q8
    public Map<C, V> row(R r10) {
        return new g(r10);
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.q8
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.rowMap;
        if (map == null) {
            Map<R, Map<C, V>> createRowMap = createRowMap();
            this.rowMap = createRowMap;
            return createRowMap;
        }
        return map;
    }

    @Override // com.google.common.collect.q8
    public int size() {
        int i9 = 0;
        for (Map<C, V> map : this.backingMap.values()) {
            i9 += map.size();
        }
        return i9;
    }

    @Override // com.google.common.collect.y
    public Collection<V> values() {
        return super.values();
    }
}
