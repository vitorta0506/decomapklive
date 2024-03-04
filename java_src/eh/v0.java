package eh;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
final class v0 {

    /* renamed from: b  reason: collision with root package name */
    private static v0 f39353b;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, u0> f39354a = new HashMap();

    private v0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized v0 b() {
        v0 v0Var;
        synchronized (v0.class) {
            if (f39353b == null) {
                f39353b = c().d(c2.f38703a);
            }
            v0Var = f39353b;
        }
        return v0Var;
    }

    static v0 c() {
        return new v0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0 a(String str) {
        return this.f39354a.get(str);
    }

    v0 d(u0... u0VarArr) {
        for (u0 u0Var : u0VarArr) {
            for (String str : u0Var.a()) {
                this.f39354a.put(str, u0Var);
            }
        }
        return this;
    }
}
