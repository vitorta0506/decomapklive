package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.n;
import com.xiaomi.push.bg;
import com.xiaomi.push.dv;
import com.xiaomi.push.eb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, n.a> f36246a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, Long> f36247b = new HashMap();

    public static void a(Context context, dv dvVar) {
        n.a aVar;
        String c10 = dvVar.c();
        if (dvVar.a() == 0 && (aVar = f36246a.get(c10)) != null) {
            aVar.e(dvVar.f233e, dvVar.f234f);
            n.c(context).h(c10, aVar);
        }
        ArrayList arrayList = null;
        if (!TextUtils.isEmpty(dvVar.f233e)) {
            arrayList = new ArrayList();
            arrayList.add(dvVar.f233e);
        }
        m.a(bg.COMMAND_REGISTER.f21a, arrayList, dvVar.f223a, dvVar.f232d, null);
    }

    public static void b(Context context, eb ebVar) {
        m.a(bg.COMMAND_UNREGISTER.f21a, null, ebVar.f299a, ebVar.f307d, null);
        ebVar.a();
    }
}
