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
import tg.b;
/* loaded from: classes5.dex */
public class a<V> implements tg.b<V> {

    /* renamed from: j  reason: collision with root package name */
    private static final Object f58151j = new Object();

    /* renamed from: a  reason: collision with root package name */
    private int f58152a;

    /* renamed from: b  reason: collision with root package name */
    private final float f58153b;

    /* renamed from: c  reason: collision with root package name */
    private char[] f58154c;

    /* renamed from: d  reason: collision with root package name */
    private V[] f58155d;

    /* renamed from: e  reason: collision with root package name */
    private int f58156e;

    /* renamed from: f  reason: collision with root package name */
    private int f58157f;

    /* renamed from: g  reason: collision with root package name */
    private final Set<Character> f58158g;

    /* renamed from: h  reason: collision with root package name */
    private final Set<Map.Entry<Character, V>> f58159h;

    /* renamed from: i  reason: collision with root package name */
    private final Iterable<b.a<V>> f58160i;

    /* renamed from: tg.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0651a implements Iterable<b.a<V>> {
        C0651a() {
        }

        @Override // java.lang.Iterable
        public Iterator<b.a<V>> iterator() {
            return new g(a.this, null);
        }
    }

    /* loaded from: classes5.dex */
    class b extends AbstractCollection<V> {

        /* renamed from: tg.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0652a implements Iterator<V> {

            /* renamed from: a  reason: collision with root package name */
            final a<V>.g f58163a;

            C0652a() {
                this.f58163a = new g(a.this, null);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f58163a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                return this.f58163a.next().value();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f58163a.remove();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C0652a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a.this.f58156e;
        }
    }

    /* loaded from: classes5.dex */
    private final class c extends AbstractSet<Map.Entry<Character, V>> {
        private c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Character, V>> iterator() {
            return new f(a.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a.this.size();
        }

        /* synthetic */ c(a aVar, C0651a c0651a) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private final class d extends AbstractSet<Character> {

        /* renamed from: tg.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0653a implements Iterator<Character> {

            /* renamed from: a  reason: collision with root package name */
            private final Iterator<Map.Entry<Character, V>> f58167a;

            C0653a() {
                this.f58167a = a.this.f58159h.iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Character next() {
                return this.f58167a.next().getKey();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f58167a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f58167a.remove();
            }
        }

        private d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return a.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Character> iterator() {
            return new C0653a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return a.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            Iterator<b.a<V>> it = a.this.entries().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Character.valueOf(it.next().key()))) {
                    z10 = true;
                    it.remove();
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a.this.size();
        }

        /* synthetic */ d(a aVar, C0651a c0651a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class e implements Map.Entry<Character, V> {

        /* renamed from: a  reason: collision with root package name */
        private final int f58169a;

        e(int i9) {
            this.f58169a = i9;
        }

        private void b() {
            if (a.this.f58155d[this.f58169a] == null) {
                throw new IllegalStateException("The map entry has been removed");
            }
        }

        @Override // java.util.Map.Entry
        /* renamed from: a */
        public Character getKey() {
            b();
            return Character.valueOf(a.this.f58154c[this.f58169a]);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            b();
            return (V) a.v(a.this.f58155d[this.f58169a]);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            b();
            V v11 = (V) a.v(a.this.f58155d[this.f58169a]);
            a.this.f58155d[this.f58169a] = a.w(v10);
            return v11;
        }
    }

    public a() {
        this(8, 0.5f);
    }

    private int h(int i9) {
        return Math.min(i9 - 1, (int) (i9 * this.f58153b));
    }

    private void j() {
        int i9 = this.f58156e + 1;
        this.f58156e = i9;
        if (i9 > this.f58152a) {
            char[] cArr = this.f58154c;
            if (cArr.length != Integer.MAX_VALUE) {
                s(cArr.length << 1);
                return;
            }
            throw new IllegalStateException("Max capacity reached at size=" + this.f58156e);
        }
    }

    private static int k(char c10) {
        return c10;
    }

    private int l(char c10) {
        return k(c10) & this.f58157f;
    }

    private int m(char c10) {
        int l10 = l(c10);
        int i9 = l10;
        while (this.f58155d[i9] != null) {
            if (c10 == this.f58154c[i9]) {
                return i9;
            }
            i9 = p(i9);
            if (i9 == l10) {
                return -1;
            }
        }
        return -1;
    }

    private char o(Object obj) {
        return ((Character) obj).charValue();
    }

    private int p(int i9) {
        return (i9 + 1) & this.f58157f;
    }

    private void s(int i9) {
        V[] vArr;
        char[] cArr = this.f58154c;
        V[] vArr2 = this.f58155d;
        this.f58154c = new char[i9];
        this.f58155d = (V[]) new Object[i9];
        this.f58152a = h(i9);
        this.f58157f = i9 - 1;
        for (int i10 = 0; i10 < vArr2.length; i10++) {
            V v10 = vArr2[i10];
            if (v10 != null) {
                char c10 = cArr[i10];
                int l10 = l(c10);
                while (true) {
                    vArr = this.f58155d;
                    if (vArr[l10] == null) {
                        break;
                    }
                    l10 = p(l10);
                }
                this.f58154c[l10] = c10;
                vArr[l10] = v10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u(int i9) {
        this.f58156e--;
        this.f58154c[i9] = 0;
        this.f58155d[i9] = null;
        int p10 = p(i9);
        V v10 = this.f58155d[p10];
        int i10 = i9;
        while (v10 != null) {
            char c10 = this.f58154c[p10];
            int l10 = l(c10);
            if ((p10 < l10 && (l10 <= i10 || i10 <= p10)) || (l10 <= i10 && i10 <= p10)) {
                char[] cArr = this.f58154c;
                cArr[i10] = c10;
                V[] vArr = this.f58155d;
                vArr[i10] = v10;
                cArr[p10] = 0;
                vArr[p10] = null;
                i10 = p10;
            }
            V[] vArr2 = this.f58155d;
            p10 = p(p10);
            v10 = vArr2[p10];
        }
        return i10 != i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T v(T t10) {
        if (t10 == f58151j) {
            return null;
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T w(T t10) {
        return t10 == null ? (T) f58151j : t10;
    }

    @Override // java.util.Map
    public void clear() {
        Arrays.fill(this.f58154c, (char) 0);
        Arrays.fill(this.f58155d, (Object) null);
        this.f58156e = 0;
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return i(o(obj));
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        V[] vArr;
        Object w6 = w(obj);
        for (V v10 : this.f58155d) {
            if (v10 != null && v10.equals(w6)) {
                return true;
            }
        }
        return false;
    }

    public Iterable<b.a<V>> entries() {
        return this.f58160i;
    }

    @Override // java.util.Map
    public Set<Map.Entry<Character, V>> entrySet() {
        return this.f58159h;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tg.b)) {
            return false;
        }
        tg.b bVar = (tg.b) obj;
        if (this.f58156e != bVar.size()) {
            return false;
        }
        int i9 = 0;
        while (true) {
            V[] vArr = this.f58155d;
            if (i9 >= vArr.length) {
                return true;
            }
            V v10 = vArr[i9];
            if (v10 != null) {
                Object u02 = bVar.u0(this.f58154c[i9]);
                if (v10 == f58151j) {
                    if (u02 != null) {
                        return false;
                    }
                } else if (!v10.equals(u02)) {
                    return false;
                }
            }
            i9++;
        }
    }

    @Override // java.util.Map
    public V get(Object obj) {
        return u0(o(obj));
    }

    @Override // java.util.Map
    public int hashCode() {
        int i9 = this.f58156e;
        for (char c10 : this.f58154c) {
            i9 ^= k(c10);
        }
        return i9;
    }

    public boolean i(char c10) {
        return m(c10) >= 0;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f58156e == 0;
    }

    @Override // java.util.Map
    public Set<Character> keySet() {
        return this.f58158g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String n(char c10) {
        return Character.toString(c10);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends Character, ? extends V> map) {
        if (map instanceof a) {
            a aVar = (a) map;
            int i9 = 0;
            while (true) {
                V[] vArr = aVar.f58155d;
                if (i9 >= vArr.length) {
                    return;
                }
                V v10 = vArr[i9];
                if (v10 != null) {
                    q(aVar.f58154c[i9], v10);
                }
                i9++;
            }
        } else {
            for (Map.Entry<? extends Character, ? extends V> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    public V q(char c10, V v10) {
        int l10 = l(c10);
        int i9 = l10;
        do {
            Object[] objArr = this.f58155d;
            if (objArr[i9] == null) {
                this.f58154c[i9] = c10;
                objArr[i9] = w(v10);
                j();
                return null;
            } else if (this.f58154c[i9] == c10) {
                Object obj = objArr[i9];
                objArr[i9] = w(v10);
                return (V) v(obj);
            } else {
                i9 = p(i9);
            }
        } while (i9 != l10);
        throw new IllegalStateException("Unable to insert");
    }

    @Override // java.util.Map
    /* renamed from: r */
    public V put(Character ch2, V v10) {
        return q(o(ch2), v10);
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        return t(o(obj));
    }

    @Override // java.util.Map
    public int size() {
        return this.f58156e;
    }

    public V t(char c10) {
        int m10 = m(c10);
        if (m10 == -1) {
            return null;
        }
        V v10 = this.f58155d[m10];
        u(m10);
        return (V) v(v10);
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f58156e * 4);
        sb2.append('{');
        boolean z10 = true;
        int i9 = 0;
        while (true) {
            V[] vArr = this.f58155d;
            if (i9 < vArr.length) {
                V v10 = vArr[i9];
                if (v10 != null) {
                    if (!z10) {
                        sb2.append(", ");
                    }
                    sb2.append(n(this.f58154c[i9]));
                    sb2.append('=');
                    sb2.append(v10 == this ? "(this Map)" : v(v10));
                    z10 = false;
                }
                i9++;
            } else {
                sb2.append('}');
                return sb2.toString();
            }
        }
    }

    @Override // tg.b
    public V u0(char c10) {
        int m10 = m(c10);
        if (m10 == -1) {
            return null;
        }
        return (V) v(this.f58155d[m10]);
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return new b();
    }

    /* loaded from: classes5.dex */
    private final class f implements Iterator<Map.Entry<Character, V>> {

        /* renamed from: a  reason: collision with root package name */
        private final a<V>.g f58171a;

        private f() {
            this.f58171a = new g(a.this, null);
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<Character, V> next() {
            if (hasNext()) {
                this.f58171a.next();
                return new e(((g) this.f58171a).f58175c);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f58171a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f58171a.remove();
        }

        /* synthetic */ f(a aVar, C0651a c0651a) {
            this();
        }
    }

    public a(int i9) {
        this(i9, 0.5f);
    }

    public a(int i9, float f10) {
        this.f58158g = new d(this, null);
        this.f58159h = new c(this, null);
        this.f58160i = new C0651a();
        if (f10 > 0.0f && f10 <= 1.0f) {
            this.f58153b = f10;
            int d10 = o.d(i9);
            this.f58157f = d10 - 1;
            this.f58154c = new char[d10];
            this.f58155d = (V[]) new Object[d10];
            this.f58152a = h(d10);
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and <= 1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class g implements Iterator<b.a<V>>, b.a<V> {

        /* renamed from: a  reason: collision with root package name */
        private int f58173a;

        /* renamed from: b  reason: collision with root package name */
        private int f58174b;

        /* renamed from: c  reason: collision with root package name */
        private int f58175c;

        private g() {
            this.f58173a = -1;
            this.f58174b = -1;
            this.f58175c = -1;
        }

        private void c() {
            do {
                int i9 = this.f58174b + 1;
                this.f58174b = i9;
                if (i9 == a.this.f58155d.length) {
                    return;
                }
            } while (a.this.f58155d[this.f58174b] == null);
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public b.a<V> next() {
            if (hasNext()) {
                this.f58173a = this.f58174b;
                c();
                this.f58175c = this.f58173a;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f58174b == -1) {
                c();
            }
            return this.f58174b != a.this.f58155d.length;
        }

        @Override // tg.b.a
        public char key() {
            return a.this.f58154c[this.f58175c];
        }

        @Override // java.util.Iterator
        public void remove() {
            int i9 = this.f58173a;
            if (i9 != -1) {
                if (a.this.u(i9)) {
                    this.f58174b = this.f58173a;
                }
                this.f58173a = -1;
                return;
            }
            throw new IllegalStateException("next must be called before each remove.");
        }

        @Override // tg.b.a
        public V value() {
            return (V) a.v(a.this.f58155d[this.f58175c]);
        }

        /* synthetic */ g(a aVar, C0651a c0651a) {
            this();
        }
    }
}
