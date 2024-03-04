package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.dt;
/* loaded from: classes5.dex */
public class d0 {
    public static void a(Context context, dt dtVar) {
        tf.c.l("need to update local info with: " + dtVar.m1471a());
        String str = dtVar.m1471a().get("accept_time");
        if (str != null) {
            j.L(context);
            String[] split = str.split("-");
            if (split.length == 2) {
                j.d(context, split[0], split[1]);
                if ("00:00".equals(split[0]) && "00:00".equals(split[1])) {
                    n.c(context).j(true);
                } else {
                    n.c(context).j(false);
                }
            }
        }
        String str2 = dtVar.m1471a().get("aliases");
        if (str2 != null) {
            j.P(context);
            if (!"".equals(str2)) {
                for (String str3 : str2.split(",")) {
                    j.f(context, str3);
                }
            }
        }
        String str4 = dtVar.m1471a().get("topics");
        if (str4 != null) {
            j.Q(context);
            if (!"".equals(str4)) {
                for (String str5 : str4.split(",")) {
                    j.i(context, str5);
                }
            }
        }
        String str6 = dtVar.m1471a().get("user_accounts");
        if (str6 != null) {
            j.O(context);
            if ("".equals(str6)) {
                return;
            }
            for (String str7 : str6.split(",")) {
                j.e(context, str7);
            }
        }
    }
}
