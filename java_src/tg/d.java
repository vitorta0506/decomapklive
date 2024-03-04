package tg;

import io.grpc.netty.shaded.io.netty.util.internal.o;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import tg.e;
/* loaded from: classes5.dex */
public class d<V> implements tg.e<V> {

    /* renamed from: j  reason: collision with root package name */
    private static final Object f58178j = new Object();

    /* renamed from: a  reason: collision with root package name */
    private int f58179a;

    /* renamed from: b  reason: collision with root package name */
    private final float f58180b;

    /* renamed from: c  reason: collision with root package name */
    private int[] f58181c;

    /* renamed from: d  reason: collision with root package name */
    private V[] f58182d;

    /* renamed from: e  reason: collision with root package name */
    private int f58183e;

    /* renamed from: f  reason: collision with root package name */
    private int f58184f;

    /* renamed from: g  reason: collision with root package name */
    private final Set<Integer> f58185g;

    /* renamed from: h  reason: collision with root package name */
    private final Set<Map.Entry<Integer, V>> f58186h;

    /* renamed from: i  reason: collision with root package name */
    private final Iterable<e.a<V>> f58187i;

    /* loaded from: classes5.dex */
    class a implements Iterable<e.a<V>> {
        a() {
        }

        @Override // java.lang.Iterable
        public Iterator<e.a<V>> iterator() {
            return new g(d.this, null);
        }
    }

    /* loaded from: classes5.dex */
    class b extends AbstractCollection<V> {

        /* loaded from: classes5.dex */
        class a implements Iterator<V> {

            /* renamed from: a  reason: collision with root package name */
            final d<V>.g f58190a;

            a() {
                this.f58190a = new g(d.this, null);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f58190a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                return this.f58190a.next().value();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f58190a.remove();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return d.this.f58183e;
        }
    }

    /* loaded from: classes5.dex */
    private final class c extends AbstractSet<Map.Entry<Integer, V>> {
        private c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Integer, V>> iterator() {
            return new f(d.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return d.this.size();
        }

        /* synthetic */ c(d dVar, a aVar) {
            this();
        }
    }

    /* renamed from: tg.d$d  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private final class C0654d extends AbstractSet<Integer> {

        /* renamed from: tg.d$d$a */
        /* loaded from: classes5.dex */
        class a implements Iterator<Integer> {

            /* renamed from: a  reason: collision with root package name */
            private final Iterator<Map.Entry<Integer, V>> f58194a;

            a() {
                this.f58194a = d.this.f58186h.iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Integer next() {
                return this.f58194a.next().getKey();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f58194a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f58194a.remove();
            }
        }

        private C0654d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            d.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return d.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Integer> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return d.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            Iterator<e.a<V>> it = d.this.entries().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Integer.valueOf(it.next().key()))) {
                    z10 = true;
                    it.remove();
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return d.this.size();
        }

        /* synthetic */ C0654d(d dVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class e implements Map.Entry<Integer, V> {

        /* renamed from: a  reason: collision with root package name */
        private final int f58196a;

        e(int i9) {
            this.f58196a = i9;
        }

        private void b() {
            if (d.this.f58182d[this.f58196a] == null) {
                throw new IllegalStateException("The map entry has been removed");
            }
        }

        @Override // java.util.Map.Entry
        /* renamed from: a */
        public Integer getKey() {
            b();
            return Integer.valueOf(d.this.f58181c[this.f58196a]);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            b();
            return (V) d.t(d.this.f58182d[this.f58196a]);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            b();
            V v11 = (V) d.t(d.this.f58182d[this.f58196a]);
            d.this.f58182d[this.f58196a] = d.u(v10);
            return v11;
        }
    }

    public d() {
        this(8, 0.5f);
    }

    private int h(int i9) {
        return Math.min(i9 - 1, (int) (i9 * this.f58180b));
    }

    private void j() {
        int i9 = this.f58183e + 1;
        this.f58183e = i9;
        if (i9 > this.f58179a) {
            int[] iArr = this.f58181c;
            if (iArr.length != Integer.MAX_VALUE) {
                r(iArr.length << 1);
                return;
            }
            throw new IllegalStateException("Max capacity reached at size=" + this.f58183e);
        }
    }

    private static int k(int i9) {
        return i9;
    }

    private int l(int i9) {
        return k(i9) & this.f58184f;
    }

    private int m(int i9) {
        int l10 = l(i9);
        int i10 = l10;
        while (this.f58182d[i10] != null) {
            if (i9 == this.f58181c[i10]) {
                return i10;
            }
            i10 = p(i10);
            if (i10 == l10) {
                return -1;
            }
        }
        return -1;
    }

    private int o(Object obj) {
        return ((Integer) obj).intValue();
    }

    private int p(int i9) {
        return (i9 + 1) & this.f58184f;
    }

    private void r(int i9) {
        V[] vArr;
        int[] iArr = this.f58181c;
        V[] vArr2 = this.f58182d;
        this.f58181c = new int[i9];
        this.f58182d = (V[]) new Object[i9];
        this.f58179a = h(i9);
        this.f58184f = i9 - 1;
        for (int i10 = 0; i10 < vArr2.length; i10++) {
            V v10 = vArr2[i10];
            if (v10 != null) {
                int i11 = iArr[i10];
                int l10 = l(i11);
                while (true) {
                    vArr = this.f58182d;
                    if (vArr[l10] == null) {
                        break;
                    }
                    l10 = p(l10);
                }
                this.f58181c[l10] = i11;
                vArr[l10] = v10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s(int i9) {
        this.f58183e--;
        this.f58181c[i9] = 0;
        this.f58182d[i9] = null;
        int p10 = p(i9);
        V v10 = this.f58182d[p10];
        int i10 = i9;
        while (v10 != null) {
            int i11 = this.f58181c[p10];
            int l10 = l(i11);
            if ((p10 < l10 && (l10 <= i10 || i10 <= p10)) || (l10 <= i10 && i10 <= p10)) {
                int[] iArr = this.f58181c;
                iArr[i10] = i11;
                V[] vArr = this.f58182d;
                vArr[i10] = v10;
                iArr[p10] = 0;
                vArr[p10] = null;
                i10 = p10;
            }
            V[] vArr2 = this.f58182d;
            p10 = p(p10);
            v10 = vArr2[p10];
        }
        return i10 != i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T t(T t10) {
        if (t10 == f58178j) {
            return null;
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T u(T t10) {
        return t10 == null ? (T) f58178j : t10;
    }

    @Override // java.util.Map
    public void clear() {
        Arrays.fill(this.f58181c, 0);
        Arrays.fill(this.f58182d, (Object) null);
        this.f58183e = 0;
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return i(o(obj));
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        V[] vArr;
        Object u10 = u(obj);
        for (V v10 : this.f58182d) {
            if (v10 != null && v10.equals(u10)) {
                return true;
            }
        }
        return false;
    }

    @Override // tg.e
    public Iterable<e.a<V>> entries() {
        return this.f58187i;
    }

    @Override // java.util.Map
    public Set<Map.Entry<Integer, V>> entrySet() {
        return this.f58186h;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tg.e)) {
            return false;
        }
        tg.e eVar = (tg.e) obj;
        if (this.f58183e != eVar.size()) {
            return false;
        }
        int i9 = 0;
        while (true) {
            V[] vArr = this.f58182d;
            if (i9 >= vArr.length) {
                return true;
            }
            V v10 = vArr[i9];
            if (v10 != null) {
                Object obj2 = eVar.get(this.f58181c[i9]);
                if (v10 == f58178j) {
                    if (obj2 != null) {
                        return false;
                    }
                } else if (!v10.equals(obj2)) {
                    return false;
                }
            }
            i9++;
        }
    }

    @Override // tg.e
    public V get(int i9) {
        int m10 = m(i9);
        if (m10 == -1) {
            return null;
        }
        return (V) t(this.f58182d[m10]);
    }

    @Override // java.util.Map
    public int hashCode() {
        int i9 = this.f58183e;
        for (int i10 : this.f58181c) {
            i9 ^= k(i10);
        }
        return i9;
    }

    public boolean i(int i9) {
        return m(i9) >= 0;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f58183e == 0;
    }

    @Override // java.util.Map
    public Set<Integer> keySet() {
        return this.f58185g;
    }

    protected String n(int i9) {
        return Integer.toString(i9);
    }

    @Override // tg.e
    public V n0(int i9, V v10) {
        int l10 = l(i9);
        int i10 = l10;
        do {
            Object[] objArr = this.f58182d;
            if (objArr[i10] == null) {
                this.f58181c[i10] = i9;
                objArr[i10] = u(v10);
                j();
                return null;
            } else if (this.f58181c[i10] == i9) {
                Object obj = objArr[i10];
                objArr[i10] = u(v10);
                return (V) t(obj);
            } else {
                i10 = p(i10);
            }
        } while (i10 != l10);
        throw new IllegalStateException("Unable to insert");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends Integer, ? extends V> map) {
        if (map instanceof d) {
            d dVar = (d) map;
            int i9 = 0;
            while (true) {
                V[] vArr = dVar.f58182d;
                if (i9 >= vArr.length) {
                    return;
                }
                V v10 = vArr[i9];
                if (v10 != null) {
                    n0(dVar.f58181c[i9], v10);
                }
                i9++;
            }
        } else {
            for (Map.Entry<? extends Integer, ? extends V> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    @Override // java.util.Map
    /* renamed from: q */
    public V put(Integer num, V v10) {
        return n0(o(num), v10);
    }

    @Override // tg.e
    public V remove(int i9) {
        int m10 = m(i9);
        if (m10 == -1) {
            return null;
        }
        V v10 = this.f58182d[m10];
        s(m10);
        return (V) t(v10);
    }

    @Override // java.util.Map
    public int size() {
        return this.f58183e;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f58183e * 4);
        sb2.append('{');
        boolean z10 = true;
        int i9 = 0;
        while (true) {
            V[] vArr = this.f58182d;
            if (i9 < vArr.length) {
                V v10 = vArr[i9];
                if (v10 != null) {
                    if (!z10) {
                        sb2.append(", ");
                    }
                    sb2.append(n(this.f58181c[i9]));
                    sb2.append('=');
                    sb2.append(v10 == this ? "(this Map)" : t(v10));
                    z10 = false;
                }
                i9++;
            } else {
                sb2.append('}');
                return sb2.toString();
            }
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return new b();
    }

    /* loaded from: classes5.dex */
    private final class f implements Iterator<Map.Entry<Integer, V>> {

        /* renamed from: a  reason: collision with root package name */
        private final d<V>.g f58198a;

        private f() {
            this.f58198a = new g(d.this, null);
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<Integer, V> next() {
            if (hasNext()) {
                this.f58198a.next();
                return new e(((g) this.f58198a).f58202c);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f58198a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f58198a.remove();
        }

        /* synthetic */ f(d dVar, a aVar) {
            this();
        }
    }

    public d(int i9) {
        this(i9, 0.5f);
    }

    public d(int i9, float f10) {
        this.f58185g = new C0654d(this, null);
        this.f58186h = new c(this, null);
        this.f58187i = new a();
        if (f10 > 0.0f && f10 <= 1.0f) {
            this.f58180b = f10;
            int d10 = o.d(i9);
            this.f58184f = d10 - 1;
            this.f58181c = new int[d10];
            this.f58182d = (V[]) new Object[d10];
            this.f58179a = h(d10);
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and <= 1");
    }

    @Override // java.util.Map
    public V get(Object obj) {
        return get(o(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class g implements Iterator<e.a<V>>, e.a<V> {

        /* renamed from: a  reason: collision with root package name */
        private int f58200a;

        /* renamed from: b  reason: collision with root package name */
        private int f58201b;

        /* renamed from: c  reason: collision with root package name */
        private int f58202c;

        private g() {
            this.f58200a = -1;
            this.f58201b = -1;
            this.f58202c = -1;
        }

        private void c() {
            do {
                int i9 = this.f58201b + 1;
                this.f58201b = i9;
                if (i9 == d.this.f58182d.length) {
                    return;
                }
            } while (d.this.f58182d[this.f58201b] == null);
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public e.a<V> next() {
            if (hasNext()) {
                this.f58200a = this.f58201b;
                c();
                this.f58202c = this.f58200a;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f58201b == -1) {
                c();
            }
            return this.f58201b != d.this.f58182d.length;
        }

        @Override // tg.e.a
        public int key() {
            return d.this.f58181c[this.f58202c];
        }

        @Override // java.util.Iterator
        public void remove() {
            int i9 = this.f58200a;
            if (i9 != -1) {
                if (d.this.s(i9)) {
                    this.f58201b = this.f58200a;
                }
                this.f58200a = -1;
                return;
            }
            throw new IllegalStateException("next must be called before each remove.");
        }

        @Override // tg.e.a
        public V value() {
            return (V) d.t(d.this.f58182d[this.f58202c]);
        }

        /* synthetic */ g(d dVar, a aVar) {
            this();
        }
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        return remove(o(obj));
    }
}
