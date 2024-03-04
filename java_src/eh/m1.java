package eh;

import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class m1 {

    /* renamed from: b  reason: collision with root package name */
    private static m1 f38890b;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, l1> f38891a = new HashMap();

    private m1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized m1 b() {
        m1 m1Var;
        synchronized (m1.class) {
            if (f38890b == null) {
                f38890b = c().d(k1.f38814c, d2.INSTANCE, y1.f39411b);
            }
            m1Var = f38890b;
        }
        return m1Var;
    }

    static m1 c() {
        return new m1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l1 a(String str) {
        return this.f38891a.get(str);
    }

    m1 d(l1... l1VarArr) {
        for (l1 l1Var : l1VarArr) {
            for (String str : l1Var.a()) {
                this.f38891a.put(str, l1Var);
            }
        }
        return this;
    }
}
