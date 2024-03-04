package g0;

import android.util.Log;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* loaded from: classes.dex */
public final class i implements g0.b {

    /* renamed from: a  reason: collision with root package name */
    private final g<a, Object> f39858a = new g<>();

    /* renamed from: b  reason: collision with root package name */
    private final b f39859b = new b();

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f39860c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, g0.a<?>> f39861d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final int f39862e;

    /* renamed from: f  reason: collision with root package name */
    private int f39863f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements l {

        /* renamed from: a  reason: collision with root package name */
        private final b f39864a;

        /* renamed from: b  reason: collision with root package name */
        int f39865b;

        /* renamed from: c  reason: collision with root package name */
        private Class<?> f39866c;

        a(b bVar) {
            this.f39864a = bVar;
        }

        @Override // g0.l
        public void a() {
            this.f39864a.c(this);
        }

        void b(int i9, Class<?> cls) {
            this.f39865b = i9;
            this.f39866c = cls;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f39865b == aVar.f39865b && this.f39866c == aVar.f39866c;
            }
            return false;
        }

        public int hashCode() {
            int i9 = this.f39865b * 31;
            Class<?> cls = this.f39866c;
            return i9 + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.f39865b + "array=" + this.f39866c + '}';
        }
    }

    /* loaded from: classes.dex */
    private static final class b extends c<a> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // g0.c
        /* renamed from: d */
        public a a() {
            return new a(this);
        }

        a e(int i9, Class<?> cls) {
            a b10 = b();
            b10.b(i9, cls);
            return b10;
        }
    }

    public i(int i9) {
        this.f39862e = i9;
    }

    private void e(int i9, Class<?> cls) {
        NavigableMap<Integer, Integer> l10 = l(cls);
        Integer num = (Integer) l10.get(Integer.valueOf(i9));
        if (num != null) {
            if (num.intValue() == 1) {
                l10.remove(Integer.valueOf(i9));
                return;
            } else {
                l10.put(Integer.valueOf(i9), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i9 + ", this: " + this);
    }

    private void f() {
        g(this.f39862e);
    }

    private void g(int i9) {
        while (this.f39863f > i9) {
            Object f10 = this.f39858a.f();
            v0.j.d(f10);
            g0.a h10 = h(f10);
            this.f39863f -= h10.b(f10) * h10.a();
            e(h10.b(f10), f10.getClass());
            if (Log.isLoggable(h10.getTag(), 2)) {
                Log.v(h10.getTag(), "evicted: " + h10.b(f10));
            }
        }
    }

    private <T> g0.a<T> h(T t10) {
        return i(t10.getClass());
    }

    private <T> g0.a<T> i(Class<T> cls) {
        h hVar = (g0.a<T>) this.f39861d.get(cls);
        if (hVar == null) {
            if (cls.equals(int[].class)) {
                hVar = new h();
            } else if (cls.equals(byte[].class)) {
                hVar = new f();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.f39861d.put(cls, hVar);
        }
        return hVar;
    }

    @Nullable
    private <T> T j(a aVar) {
        return (T) this.f39858a.a(aVar);
    }

    private <T> T k(a aVar, Class<T> cls) {
        g0.a<T> i9 = i(cls);
        T t10 = (T) j(aVar);
        if (t10 != null) {
            this.f39863f -= i9.b(t10) * i9.a();
            e(i9.b(t10), cls);
        }
        if (t10 == null) {
            if (Log.isLoggable(i9.getTag(), 2)) {
                Log.v(i9.getTag(), "Allocated " + aVar.f39865b + " bytes");
            }
            return i9.newArray(aVar.f39865b);
        }
        return t10;
    }

    private NavigableMap<Integer, Integer> l(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f39860c.get(cls);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f39860c.put(cls, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    private boolean m() {
        int i9 = this.f39863f;
        return i9 == 0 || this.f39862e / i9 >= 2;
    }

    private boolean n(int i9) {
        return i9 <= this.f39862e / 2;
    }

    private boolean o(int i9, Integer num) {
        return num != null && (m() || num.intValue() <= i9 * 8);
    }

    @Override // g0.b
    public synchronized void a(int i9) {
        try {
            if (i9 >= 40) {
                b();
            } else if (i9 >= 20 || i9 == 15) {
                g(this.f39862e / 2);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // g0.b
    public synchronized void b() {
        g(0);
    }

    @Override // g0.b
    public synchronized <T> T c(int i9, Class<T> cls) {
        a e10;
        Integer ceilingKey = l(cls).ceilingKey(Integer.valueOf(i9));
        if (o(i9, ceilingKey)) {
            e10 = this.f39859b.e(ceilingKey.intValue(), cls);
        } else {
            e10 = this.f39859b.e(i9, cls);
        }
        return (T) k(e10, cls);
    }

    @Override // g0.b
    public synchronized <T> T d(int i9, Class<T> cls) {
        return (T) k(this.f39859b.e(i9, cls), cls);
    }

    @Override // g0.b
    public synchronized <T> void put(T t10) {
        Class<?> cls = t10.getClass();
        g0.a<T> i9 = i(cls);
        int b10 = i9.b(t10);
        int a10 = i9.a() * b10;
        if (n(a10)) {
            a e10 = this.f39859b.e(b10, cls);
            this.f39858a.d(e10, t10);
            NavigableMap<Integer, Integer> l10 = l(cls);
            Integer num = (Integer) l10.get(Integer.valueOf(e10.f39865b));
            Integer valueOf = Integer.valueOf(e10.f39865b);
            int i10 = 1;
            if (num != null) {
                i10 = 1 + num.intValue();
            }
            l10.put(valueOf, Integer.valueOf(i10));
            this.f39863f += a10;
            f();
        }
    }
}
