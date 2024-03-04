package cn.jiguang.bf;

import android.content.Context;
import android.os.Bundle;
import cn.jiguang.api.JCoreManager;
/* loaded from: classes.dex */
public class b {
    public static Bundle a(Context context, int i9, Bundle bundle) {
        Object obj;
        try {
            Bundle bundle2 = new Bundle();
            if (i9 == 4096) {
                if (bundle != null && (obj = bundle.get("arg1")) != null) {
                    JCoreManager.onEvent(context, null, 9, obj.toString(), null, new Object[0]);
                }
                return bundle2;
            } else if (i9 == 4098) {
                JCoreManager.init(context);
                return bundle2;
            } else if (i9 != 36864) {
                return null;
            } else {
                JCoreManager.onEvent(context, null, 52, null, bundle, new Object[0]);
                return null;
            }
        } catch (Throwable th2) {
            d.e("JCoreInterface", "si e:" + th2);
            return null;
        }
    }
}
