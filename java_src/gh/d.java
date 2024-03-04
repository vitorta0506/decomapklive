package gh;

import com.google.common.base.o;
import java.util.LinkedHashMap;
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static d f40078b;

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<String, c> f40079a = new LinkedHashMap<>();

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (f40078b == null) {
                d dVar2 = new d();
                f40078b = dVar2;
                dVar2.b(new g());
            }
            dVar = f40078b;
        }
        return dVar;
    }

    public synchronized void b(c cVar) {
        o.t(cVar, "certificateProviderProvider");
        this.f40079a.put(cVar.getName(), cVar);
    }
}
