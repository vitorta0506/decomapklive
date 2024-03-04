package gh;

import ih.c;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f40080c = Logger.getLogger(e.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static e f40081d;

    /* renamed from: a  reason: collision with root package name */
    private final d f40082a;

    /* renamed from: b  reason: collision with root package name */
    private final ih.c<Object, Object> f40083b = new ih.c<>(new b());

    /* loaded from: classes5.dex */
    private final class b implements c.b<Object, Object> {
        private b() {
        }
    }

    public e(d dVar) {
        this.f40082a = dVar;
    }

    public static synchronized e a() {
        e eVar;
        synchronized (e.class) {
            if (f40081d == null) {
                f40081d = new e(d.a());
            }
            eVar = f40081d;
        }
        return eVar;
    }
}
