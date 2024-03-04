package com.xiaomi.push.service;

import android.content.Context;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.xiaomi.push.df;
import com.xiaomi.push.dt;
import com.xiaomi.push.f3;
import com.xiaomi.push.service.XMPushService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class w0 implements XMPushService.n {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f37379a = Log.isLoggable("UNDatas", 3);

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Integer, Map<String, List<String>>> f37380b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static Context f37381c;

    public w0(Context context) {
        f37381c = context;
    }

    private static dt c(String str, String str2, String str3, String str4) {
        dt dtVar = new dt();
        if (str3 != null) {
            dtVar.c(str3);
        }
        if (str != null) {
            dtVar.b(str);
        }
        if (str2 != null) {
            dtVar.a(str2);
        }
        if (str4 != null) {
            dtVar.d(str4);
        }
        dtVar.a(false);
        return dtVar;
    }

    private static void d(Context context, dt dtVar) {
        if (f37379a) {
            tf.c.s("UNDatas upload message notification:" + dtVar);
        }
        f3.b(context).g(new x0(dtVar));
    }

    private static void e() {
        HashMap hashMap = new HashMap();
        hashMap.putAll(f37380b);
        if (hashMap.size() > 0) {
            for (Integer num : hashMap.keySet()) {
                Map map = (Map) hashMap.get(num);
                if (map != null && map.size() > 0) {
                    StringBuilder sb2 = new StringBuilder();
                    for (String str : map.keySet()) {
                        sb2.append(str);
                        sb2.append(CertificateUtil.DELIMITER);
                        List list = (List) map.get(str);
                        if (!sf.k.b(list)) {
                            for (int i9 = 0; i9 < list.size(); i9++) {
                                if (i9 != 0) {
                                    sb2.append(",");
                                }
                                sb2.append((String) list.get(i9));
                            }
                        }
                        sb2.append(";");
                    }
                    dt c10 = c(null, x.a(), df.NotificationRemoved.f42a, null);
                    c10.a("removed_reason", String.valueOf(num));
                    c10.a("all_delete_msgId_appId", sb2.toString());
                    tf.c.s("UNDatas upload all removed messages reason: " + num + " allIds: " + sb2.toString());
                    d(f37381c, c10);
                }
                f37380b.remove(num);
            }
        }
    }

    @Override // com.xiaomi.push.service.XMPushService.n
    public void a() {
        Map<Integer, Map<String, List<String>>> map = f37380b;
        if (map.size() > 0) {
            synchronized (map) {
                e();
            }
        }
    }
}
