package g0;

import androidx.annotation.Nullable;
import g0.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
class g<K extends l, V> {

    /* renamed from: a  reason: collision with root package name */
    private final a<K, V> f39852a = new a<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<K, a<K, V>> f39853b = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f39854a;

        /* renamed from: b  reason: collision with root package name */
        private List<V> f39855b;

        /* renamed from: c  reason: collision with root package name */
        a<K, V> f39856c;

        /* renamed from: d  reason: collision with root package name */
        a<K, V> f39857d;

        a() {
            this(null);
        }

        public void a(V v10) {
            if (this.f39855b == null) {
                this.f39855b = new ArrayList();
            }
            this.f39855b.add(v10);
        }

        @Nullable
        public V b() {
            int c10 = c();
            if (c10 > 0) {
                return this.f39855b.remove(c10 - 1);
            }
            return null;
        }

        public int c() {
            List<V> list = this.f39855b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        a(K k10) {
            this.f39857d = this;
            this.f39856c = this;
            this.f39854a = k10;
        }
    }

    private void b(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f39852a;
        aVar.f39857d = aVar2;
        aVar.f39856c = aVar2.f39856c;
        g(aVar);
    }

    private void c(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f39852a;
        aVar.f39857d = aVar2.f39857d;
        aVar.f39856c = aVar2;
        g(aVar);
    }

    private static <K, V> void e(a<K, V> aVar) {
        a<K, V> aVar2 = aVar.f39857d;
        aVar2.f39856c = aVar.f39856c;
        aVar.f39856c.f39857d = aVar2;
    }

    private static <K, V> void g(a<K, V> aVar) {
        aVar.f39856c.f39857d = aVar;
        aVar.f39857d.f39856c = aVar;
    }

    @Nullable
    public V a(K k10) {
        a<K, V> aVar = this.f39853b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            this.f39853b.put(k10, aVar);
        } else {
            k10.a();
        }
        b(aVar);
        return aVar.b();
    }

    public void d(K k10, V v10) {
        a<K, V> aVar = this.f39853b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            c(aVar);
            this.f39853b.put(k10, aVar);
        } else {
            k10.a();
        }
        aVar.a(v10);
    }

    @Nullable
    public V f() {
        for (a aVar = this.f39852a.f39857d; !aVar.equals(this.f39852a); aVar = aVar.f39857d) {
            V v10 = (V) aVar.b();
            if (v10 != null) {
                return v10;
            }
            e(aVar);
            this.f39853b.remove(aVar.f39854a);
            ((l) aVar.f39854a).a();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("GroupedLinkedMap( ");
        boolean z10 = false;
        for (a aVar = this.f39852a.f39856c; !aVar.equals(this.f39852a); aVar = aVar.f39856c) {
            z10 = true;
            sb2.append('{');
            sb2.append(aVar.f39854a);
            sb2.append(':');
            sb2.append(aVar.c());
            sb2.append("}, ");
        }
        if (z10) {
            sb2.delete(sb2.length() - 2, sb2.length());
        }
        sb2.append(" )");
        return sb2.toString();
    }
}
