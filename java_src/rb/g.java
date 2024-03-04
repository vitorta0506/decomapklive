package rb;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, a> f57412a = new HashMap();

    /* loaded from: classes4.dex */
    public interface a {
        String a(e eVar);
    }

    public static Map<String, a> a() {
        return f57412a;
    }

    public static void b(String str, a aVar) {
        f57412a.put(str, aVar);
    }
}
