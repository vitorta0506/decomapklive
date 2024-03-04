package ih;

import com.google.common.base.o;
import ih.b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public final class c<K, V extends ih.b> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, a<V>> f41362a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final b<K, V> f41363b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class a<V extends ih.b> {

        /* renamed from: a  reason: collision with root package name */
        final V f41364a;

        /* renamed from: b  reason: collision with root package name */
        private int f41365b;

        boolean a() {
            o.A(this.f41365b > 0, "refCount has to be > 0");
            int i9 = this.f41365b - 1;
            this.f41365b = i9;
            return i9 == 0;
        }
    }

    /* loaded from: classes5.dex */
    public interface b<K, V extends ih.b> {
    }

    public c(b<K, V> bVar) {
        o.t(bVar, "valueFactory");
        this.f41363b = bVar;
    }

    private synchronized V b(K k10, V v10) {
        a<V> aVar = this.f41362a.get(k10);
        boolean z10 = true;
        o.m(aVar != null, "No cached instance found for %s", k10);
        if (v10 != aVar.f41364a) {
            z10 = false;
        }
        o.e(z10, "Releasing the wrong instance");
        if (aVar.a()) {
            aVar.f41364a.close();
            this.f41362a.remove(k10);
        }
        return null;
    }

    public V a(K k10, V v10) {
        o.t(k10, "key");
        o.t(v10, "value");
        return b(k10, v10);
    }
}
