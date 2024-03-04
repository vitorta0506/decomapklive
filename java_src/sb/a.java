package sb;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import rb.e;
@Deprecated
/* loaded from: classes4.dex */
public abstract class a implements e {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, a> f57842a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f57843b = new Object();

    public static a d(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return e(context, context.getPackageName());
    }

    public static a e(Context context, String str) {
        a aVar;
        synchronized (f57843b) {
            Map<String, a> map = f57842a;
            aVar = map.get(str);
            if (aVar == null) {
                aVar = new tb.e(context, str);
                map.put(str, aVar);
            }
        }
        return aVar;
    }
}
