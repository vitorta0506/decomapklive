package v4;

import android.os.Bundle;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.play.core.internal.g;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Set f58997a = new HashSet(Arrays.asList("app_update", "review"));

    /* renamed from: b  reason: collision with root package name */
    private static final Set f58998b = new HashSet(Arrays.asList(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE, "unity"));

    /* renamed from: c  reason: collision with root package name */
    private static final Map f58999c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private static final g f59000d = new g("PlayCoreVersion");

    public static Bundle a(String str) {
        Bundle bundle = new Bundle();
        Map b10 = b(str);
        bundle.putInt("playcore_version_code", ((Integer) b10.get("java")).intValue());
        if (b10.containsKey(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE)) {
            bundle.putInt("playcore_native_version", ((Integer) b10.get(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE)).intValue());
        }
        if (b10.containsKey("unity")) {
            bundle.putInt("playcore_unity_version", ((Integer) b10.get("unity")).intValue());
        }
        return bundle;
    }

    public static synchronized Map b(String str) {
        Map map;
        synchronized (a.class) {
            Map map2 = f58999c;
            if (!map2.containsKey(str)) {
                HashMap hashMap = new HashMap();
                hashMap.put("java", 11003);
                map2.put(str, hashMap);
            }
            map = (Map) map2.get(str);
        }
        return map;
    }
}
