package pg;

import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import pg.i;
/* loaded from: classes5.dex */
public class g<K, V, T extends i<K, V, T>> implements i<K, V, T> {

    /* renamed from: a  reason: collision with root package name */
    private final b<K, V>[] f56850a;

    /* renamed from: b  reason: collision with root package name */
    protected final b<K, V> f56851b;

    /* renamed from: c  reason: collision with root package name */
    private final byte f56852c;

    /* renamed from: d  reason: collision with root package name */
    private final o<V> f56853d;

    /* renamed from: e  reason: collision with root package name */
    private final d<K> f56854e;

    /* renamed from: f  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.l<K> f56855f;

    /* renamed from: g  reason: collision with root package name */
    int f56856g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private b<K, V> f56863a;

        private c() {
            this.f56863a = g.this.f56851b;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            b<K, V> bVar = this.f56863a.f56862f;
            this.f56863a = bVar;
            if (bVar != g.this.f56851b) {
                return bVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f56863a.f56862f != g.this.f56851b;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("read only");
        }
    }

    /* loaded from: classes5.dex */
    public interface d<K> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f56865a = new a();

        /* loaded from: classes5.dex */
        static class a implements d {
            a() {
            }

            @Override // pg.g.d
            public void a(Object obj) {
                s.h(obj, "name");
            }
        }

        void a(K k10);
    }

    /* loaded from: classes5.dex */
    private final class e implements Iterator<V> {

        /* renamed from: a  reason: collision with root package name */
        private final K f56866a;

        /* renamed from: b  reason: collision with root package name */
        private final int f56867b;

        /* renamed from: c  reason: collision with root package name */
        private b<K, V> f56868c;

        /* renamed from: d  reason: collision with root package name */
        private b<K, V> f56869d;

        /* renamed from: e  reason: collision with root package name */
        private b<K, V> f56870e;

        e(K k10) {
            this.f56866a = (K) s.h(k10, "name");
            int b10 = g.this.f56855f.b(k10);
            this.f56867b = b10;
            a(g.this.f56850a[g.this.H(b10)]);
        }

        private void a(b<K, V> bVar) {
            while (bVar != null) {
                if (bVar.f56857a == this.f56867b && g.this.f56855f.c(this.f56866a, bVar.f56858b)) {
                    this.f56870e = bVar;
                    return;
                }
                bVar = bVar.f56860d;
            }
            this.f56870e = null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f56870e != null;
        }

        @Override // java.util.Iterator
        public V next() {
            if (hasNext()) {
                b<K, V> bVar = this.f56869d;
                if (bVar != null) {
                    this.f56868c = bVar;
                }
                b<K, V> bVar2 = this.f56870e;
                this.f56869d = bVar2;
                a(bVar2.f56860d);
                return this.f56869d.f56859c;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            b<K, V> bVar = this.f56869d;
            if (bVar != null) {
                this.f56868c = g.this.L(bVar, this.f56868c);
                this.f56869d = null;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public g(io.grpc.netty.shaded.io.netty.util.l<K> lVar, o<V> oVar) {
        this(lVar, oVar, d.f56865a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int H(int i9) {
        return i9 & this.f56852c;
    }

    private V K(int i9, int i10, K k10) {
        b<K, V> bVar = this.f56850a[i10];
        V v10 = null;
        if (bVar == null) {
            return null;
        }
        for (b<K, V> bVar2 = bVar.f56860d; bVar2 != null; bVar2 = bVar.f56860d) {
            if (bVar2.f56857a == i9 && this.f56855f.c(k10, bVar2.f56858b)) {
                v10 = bVar2.f56859c;
                bVar.f56860d = bVar2.f56860d;
                bVar2.b();
                this.f56856g--;
            } else {
                bVar = bVar2;
            }
        }
        b<K, V> bVar3 = this.f56850a[i10];
        if (bVar3.f56857a == i9 && this.f56855f.c(k10, bVar3.f56858b)) {
            if (v10 == null) {
                v10 = bVar3.f56859c;
            }
            this.f56850a[i10] = bVar3.f56860d;
            bVar3.b();
            this.f56856g--;
        }
        return v10;
    }

    private T Q() {
        return this;
    }

    private void m(int i9, int i10, K k10, V v10) {
        b<K, V>[] bVarArr = this.f56850a;
        bVarArr[i10] = J(i9, k10, v10, bVarArr[i10]);
        this.f56856g++;
    }

    public final boolean B(i<K, V, ?> iVar, io.grpc.netty.shaded.io.netty.util.l<V> lVar) {
        if (iVar.size() != size()) {
            return false;
        }
        if (this == iVar) {
            return true;
        }
        for (K k10 : I()) {
            List<V> d02 = iVar.d0(k10);
            List<V> d03 = d0(k10);
            if (d02.size() != d03.size()) {
                return false;
            }
            for (int i9 = 0; i9 < d02.size(); i9++) {
                if (!lVar.c(d02.get(i9), d03.get(i9))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public V F(K k10) {
        int b10 = this.f56855f.b(k10);
        return (V) K(b10, H(b10), s.h(k10, "name"));
    }

    public final int G(io.grpc.netty.shaded.io.netty.util.l<V> lVar) {
        int i9 = -1028477387;
        for (K k10 : I()) {
            i9 = (i9 * 31) + this.f56855f.b(k10);
            List<V> d02 = d0(k10);
            for (int i10 = 0; i10 < d02.size(); i10++) {
                i9 = (i9 * 31) + lVar.b(d02.get(i10));
            }
        }
        return i9;
    }

    public Set<K> I() {
        if (isEmpty()) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(size());
        for (b<K, V> bVar = this.f56851b.f56862f; bVar != this.f56851b; bVar = bVar.f56862f) {
            linkedHashSet.add(bVar.getKey());
        }
        return linkedHashSet;
    }

    protected b<K, V> J(int i9, K k10, V v10, b<K, V> bVar) {
        return new b<>(i9, k10, v10, bVar, this.f56851b);
    }

    b<K, V> L(b<K, V> bVar, b<K, V> bVar2) {
        int H = H(bVar.f56857a);
        b<K, V>[] bVarArr = this.f56850a;
        b<K, V> bVar3 = bVarArr[H];
        if (bVar3 == bVar) {
            bVarArr[H] = bVar.f56860d;
            bVar2 = bVarArr[H];
        } else if (bVar2 == null) {
            for (b<K, V> bVar4 = bVar3.f56860d; bVar4 != null && bVar4 != bVar; bVar4 = bVar4.f56860d) {
                bVar3 = bVar4;
            }
            bVar3.f56860d = bVar.f56860d;
            bVar2 = bVar3;
        } else {
            bVar2.f56860d = bVar.f56860d;
        }
        bVar.b();
        this.f56856g--;
        return bVar2;
    }

    public T M(K k10, V v10) {
        this.f56854e.a(k10);
        s.h(v10, "value");
        int b10 = this.f56855f.b(k10);
        int H = H(b10);
        K(b10, H, k10);
        m(b10, H, k10, v10);
        return Q();
    }

    public T N(i<? extends K, ? extends V, ?> iVar) {
        if (iVar != this) {
            x();
            n(iVar);
        }
        return Q();
    }

    public T O(K k10, Iterable<?> iterable) {
        Object next;
        this.f56854e.a(k10);
        int b10 = this.f56855f.b(k10);
        int H = H(b10);
        K(b10, H, k10);
        Iterator<?> it = iterable.iterator();
        while (it.hasNext() && (next = it.next()) != null) {
            m(b10, H, k10, this.f56853d.a(next));
        }
        return Q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T P(K k10, Object obj) {
        s.h(obj, "value");
        return (T) M(k10, s.h(this.f56853d.a(obj), "convertedValue"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o<V> R() {
        return this.f56853d;
    }

    public Iterator<V> S(K k10) {
        return new e(k10);
    }

    @Override // pg.i
    public T Z0(K k10, V v10) {
        this.f56854e.a(k10);
        s.h(v10, "value");
        int b10 = this.f56855f.b(k10);
        m(b10, H(b10), k10, v10);
        return Q();
    }

    public boolean contains(K k10) {
        return get(k10) != null;
    }

    @Override // pg.i
    public List<V> d0(K k10) {
        s.h(k10, "name");
        LinkedList linkedList = new LinkedList();
        int b10 = this.f56855f.b(k10);
        for (b<K, V> bVar = this.f56850a[H(b10)]; bVar != null; bVar = bVar.f56860d) {
            if (bVar.f56857a == b10 && this.f56855f.c(k10, bVar.f56858b)) {
                linkedList.addFirst(bVar.getValue());
            }
        }
        return linkedList;
    }

    public boolean equals(Object obj) {
        if (obj instanceof i) {
            return B((i) obj, io.grpc.netty.shaded.io.netty.util.l.f45221a);
        }
        return false;
    }

    public T g(i<? extends K, ? extends V, ?> iVar) {
        if (iVar != this) {
            n(iVar);
            return Q();
        }
        throw new IllegalArgumentException("can't add to itself.");
    }

    @Override // pg.i
    public V get(K k10) {
        s.h(k10, "name");
        int b10 = this.f56855f.b(k10);
        V v10 = null;
        for (b<K, V> bVar = this.f56850a[H(b10)]; bVar != null; bVar = bVar.f56860d) {
            if (bVar.f56857a == b10 && this.f56855f.c(k10, bVar.f56858b)) {
                v10 = bVar.f56859c;
            }
        }
        return v10;
    }

    public int hashCode() {
        return G(io.grpc.netty.shaded.io.netty.util.l.f45221a);
    }

    public boolean isEmpty() {
        b<K, V> bVar = this.f56851b;
        return bVar == bVar.f56862f;
    }

    @Override // pg.i, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n(i<? extends K, ? extends V, ?> iVar) {
        if (iVar instanceof g) {
            g gVar = (g) iVar;
            b<K, V> bVar = gVar.f56851b.f56862f;
            if (gVar.f56855f == this.f56855f && gVar.f56854e == this.f56854e) {
                while (bVar != gVar.f56851b) {
                    int i9 = bVar.f56857a;
                    m(i9, H(i9), bVar.f56858b, bVar.f56859c);
                    bVar = bVar.f56862f;
                }
                return;
            }
            while (bVar != gVar.f56851b) {
                Z0(bVar.f56858b, bVar.f56859c);
                bVar = bVar.f56862f;
            }
            return;
        }
        for (Map.Entry<? extends K, ? extends V> entry : iVar) {
            Z0(entry.getKey(), entry.getValue());
        }
    }

    public boolean remove(K k10) {
        return F(k10) != null;
    }

    @Override // pg.i
    public int size() {
        return this.f56856g;
    }

    public String toString() {
        return j.d(getClass(), iterator(), size());
    }

    public T u(K k10, Object obj) {
        return Z0(k10, this.f56853d.a(s.h(obj, "value")));
    }

    public T x() {
        Arrays.fill(this.f56850a, (Object) null);
        b<K, V> bVar = this.f56851b;
        bVar.f56862f = bVar;
        bVar.f56861e = bVar;
        this.f56856g = 0;
        return Q();
    }

    public final boolean y(K k10, V v10, io.grpc.netty.shaded.io.netty.util.l<? super V> lVar) {
        s.h(k10, "name");
        int b10 = this.f56855f.b(k10);
        for (b<K, V> bVar = this.f56850a[H(b10)]; bVar != null; bVar = bVar.f56860d) {
            if (bVar.f56857a == b10 && this.f56855f.c(k10, bVar.f56858b) && lVar.c(v10, (V) bVar.f56859c)) {
                return true;
            }
        }
        return false;
    }

    public g<K, V, T> z() {
        g<K, V, T> gVar = new g<>(this.f56855f, this.f56853d, this.f56854e, this.f56850a.length);
        gVar.n(this);
        return gVar;
    }

    public g(io.grpc.netty.shaded.io.netty.util.l<K> lVar, o<V> oVar, d<K> dVar) {
        this(lVar, oVar, dVar, 16);
    }

    public g(io.grpc.netty.shaded.io.netty.util.l<K> lVar, o<V> oVar, d<K> dVar, int i9) {
        this.f56853d = (o) s.h(oVar, "valueConverter");
        this.f56854e = (d) s.h(dVar, "nameValidator");
        this.f56855f = (io.grpc.netty.shaded.io.netty.util.l) s.h(lVar, "nameHashingStrategy");
        b<K, V>[] bVarArr = new b[io.grpc.netty.shaded.io.netty.util.internal.o.b(Math.max(2, Math.min(i9, 128)))];
        this.f56850a = bVarArr;
        this.f56852c = (byte) (bVarArr.length - 1);
        this.f56851b = new b<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static class b<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        protected final int f56857a;

        /* renamed from: b  reason: collision with root package name */
        protected final K f56858b;

        /* renamed from: c  reason: collision with root package name */
        protected V f56859c;

        /* renamed from: d  reason: collision with root package name */
        protected b<K, V> f56860d;

        /* renamed from: e  reason: collision with root package name */
        protected b<K, V> f56861e;

        /* renamed from: f  reason: collision with root package name */
        protected b<K, V> f56862f;

        b(int i9, K k10, V v10, b<K, V> bVar, b<K, V> bVar2) {
            this.f56857a = i9;
            this.f56858b = k10;
            this.f56859c = v10;
            this.f56860d = bVar;
            this.f56862f = bVar2;
            this.f56861e = bVar2.f56861e;
            a();
        }

        protected final void a() {
            this.f56861e.f56862f = this;
            this.f56862f.f56861e = this;
        }

        protected void b() {
            b<K, V> bVar = this.f56861e;
            bVar.f56862f = this.f56862f;
            this.f56862f.f56861e = bVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (getKey() == null) {
                    if (entry.getKey() != null) {
                        return false;
                    }
                } else if (!getKey().equals(entry.getKey())) {
                    return false;
                }
                if (getValue() == null) {
                    if (entry.getValue() != null) {
                        return false;
                    }
                } else if (!getValue().equals(entry.getValue())) {
                    return false;
                }
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f56858b;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f56859c;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f56858b;
            int hashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f56859c;
            return hashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            s.h(v10, "value");
            V v11 = this.f56859c;
            this.f56859c = v10;
            return v11;
        }

        public final String toString() {
            return this.f56858b.toString() + '=' + this.f56859c.toString();
        }

        b() {
            this.f56857a = -1;
            this.f56858b = null;
            this.f56862f = this;
            this.f56861e = this;
        }
    }
}
