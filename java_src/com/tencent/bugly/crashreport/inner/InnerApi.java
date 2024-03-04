package com.tencent.bugly.crashreport.inner;

import com.tencent.bugly.crashreport.crash.d;
import com.tencent.bugly.proguard.x;
import java.util.Map;
/* loaded from: classes4.dex */
public class InnerApi {
    public static void postCocos2dxCrashAsync(int i9, String str, String str2, String str3) {
        if (str == null || str2 == null || str3 == null) {
            x.e("post cocos2d-x fail args null", new Object[0]);
        } else if (i9 != 5 && i9 != 6) {
            x.e("post cocos2d-x fail category illeagle: %d", Integer.valueOf(i9));
        } else {
            x.a("post cocos2d-x crash %s %s", str, str2);
            d.a(Thread.currentThread(), i9, str, str2, str3, null);
        }
    }

    public static void postH5CrashAsync(Thread thread, String str, String str2, String str3, Map<String, String> map) {
        if (str != null && str2 != null && str3 != null) {
            x.a("post h5 crash %s %s", str, str2);
            d.a(thread, 8, str, str2, str3, map);
            return;
        }
        x.e("post h5 fail args null", new Object[0]);
    }

    public static void postU3dCrashAsync(String str, String str2, String str3) {
        if (str == null || str2 == null || str3 == null) {
            x.e("post u3d fail args null", new Object[0]);
        }
        x.a("post u3d crash %s %s", str, str2);
        d.a(Thread.currentThread(), 4, str, str2, str3, null);
    }
}
