package cn.jpush.android.g;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
/* loaded from: classes.dex */
public final class c {
    public static boolean a(Context context, String str) {
        ServiceInfo[] serviceInfoArr;
        try {
            serviceInfoArr = context.getPackageManager().getPackageInfo(str, 4).services;
        } catch (PackageManager.NameNotFoundException unused) {
            serviceInfoArr = null;
        }
        if (serviceInfoArr == null) {
            cn.jpush.android.i.b.a("ConnectionFactory", "not found service by:" + str);
            return false;
        }
        for (int i9 = 0; i9 < serviceInfoArr.length; i9++) {
            cn.jpush.android.i.b.a("ConnectionFactory", "serviceInfos:" + serviceInfoArr[i9].name);
            if ("cn.jpush.android.service.PushManagerService".equalsIgnoreCase(serviceInfoArr[i9].name)) {
                return true;
            }
        }
        return false;
    }
}
