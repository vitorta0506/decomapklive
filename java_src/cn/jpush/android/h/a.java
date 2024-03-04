package cn.jpush.android.h;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.e.c;
import cn.jpush.android.f.e;
import cn.jpush.android.i.b;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class a {
    public static void a(Context context, String str, c cVar) {
        if (TextUtils.isEmpty(str)) {
            b.g("PushPlatformManager", "appId is empty");
            if (cVar != null) {
                cVar.a(new cn.jpush.android.e.b(e.f3074b, "", "appId is empty"));
            }
        } else if (str.length() != 24) {
            b.g("PushPlatformManager", "Invalid appId : " + str + ", Please check your appId again!");
            if (cVar != null) {
                cVar.a(new cn.jpush.android.e.b(e.f3074b, "", "Invalid appId"));
            }
        } else {
            try {
                String b10 = cn.jpush.android.a.b.b(context);
                if (!TextUtils.isEmpty(b10)) {
                    b.d("PushPlatformManager", "has register,token:" + b10);
                    if (cVar != null) {
                        cVar.a(new cn.jpush.android.e.b(0, b10, "has register"));
                        return;
                    }
                    return;
                }
                cn.jpush.android.f.c.f3061b = str;
                b.b("PushPlatformManager", "register: appId - " + str);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("JPUSH_APPKEY", str);
                jSONObject.put("FIRST_REQUESTA", cn.jpush.android.a.b.c(context));
                cn.jpush.android.a.b.d(context);
                long a10 = cn.jpush.android.f.c.a();
                cn.jpush.android.f.a.a(new cn.jpush.android.f.b("ups.register", a10), cVar);
                cn.jpush.android.f.c.a(context, "ups.register", a10, jSONObject);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }
}
