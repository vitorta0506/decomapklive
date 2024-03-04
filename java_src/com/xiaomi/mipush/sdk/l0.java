package com.xiaomi.mipush.sdk;

import com.xiaomi.push.db;
import java.util.HashMap;
/* loaded from: classes5.dex */
public class l0 {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<c, a> f36255a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f36256a;

        /* renamed from: b  reason: collision with root package name */
        public String f36257b;

        public a(String str, String str2) {
            this.f36256a = str;
            this.f36257b = str2;
        }
    }

    static {
        d(c.ASSEMBLE_PUSH_HUAWEI, new a("com.xiaomi.assemble.control.HmsPushManager", "newInstance"));
        d(c.ASSEMBLE_PUSH_FCM, new a("com.xiaomi.assemble.control.FCMPushManager", "newInstance"));
        d(c.ASSEMBLE_PUSH_COS, new a("com.xiaomi.assemble.control.COSPushManager", "newInstance"));
        d(c.ASSEMBLE_PUSH_FTOS, new a("com.xiaomi.assemble.control.FTOSPushManager", "newInstance"));
    }

    public static am a(c cVar) {
        int i9 = m0.f36259a[cVar.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        return null;
                    }
                    return am.UPLOAD_FTOS_TOKEN;
                }
                return am.UPLOAD_COS_TOKEN;
            }
            return am.UPLOAD_FCM_TOKEN;
        }
        return am.UPLOAD_HUAWEI_TOKEN;
    }

    public static a b(c cVar) {
        return f36255a.get(cVar);
    }

    public static db c(c cVar) {
        return null;
    }

    private static void d(c cVar, a aVar) {
        if (aVar != null) {
            f36255a.put(cVar, aVar);
        }
    }
}
