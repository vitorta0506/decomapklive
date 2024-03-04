package tb;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class c extends rb.c {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, rb.c> f58091b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f58092c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static String f58093d;

    /* renamed from: a  reason: collision with root package name */
    private sb.a f58094a;

    private c(Context context, String str) {
        this.f58094a = sb.a.e(context, str);
    }

    public static rb.c a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        String packageName = context.getPackageName();
        f58093d = packageName;
        return b(context, packageName);
    }

    public static rb.c b(Context context, String str) {
        rb.c cVar;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("packageName can not be empty");
        }
        synchronized (f58092c) {
            Map<String, rb.c> map = f58091b;
            cVar = map.get(str);
            if (cVar == null) {
                map.put(str, new c(context, str));
            }
        }
        return cVar;
    }
}
