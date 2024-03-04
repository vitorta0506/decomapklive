package q;

import java.util.Map;
/* loaded from: classes.dex */
public class c {
    public static boolean a(Map<?, ?> map) {
        return map == null || map.isEmpty();
    }

    public static boolean b(Map<?, ?> map) {
        return !a(map);
    }
}
