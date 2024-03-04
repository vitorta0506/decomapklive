package com.huawei.hms.framework.network.grs;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, c> f27320a = new ConcurrentHashMap(16);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f27321b = new Object();

    public static c a(GrsBaseInfo grsBaseInfo, Context context) {
        synchronized (f27321b) {
            int uniqueCode = grsBaseInfo.uniqueCode();
            Map<String, c> map = f27320a;
            c cVar = map.get(context.getPackageName() + uniqueCode);
            if (cVar == null) {
                c cVar2 = new c(context, grsBaseInfo);
                map.put(context.getPackageName() + uniqueCode, cVar2);
                return cVar2;
            } else if (cVar.a((Object) new c(grsBaseInfo))) {
                return cVar;
            } else {
                c cVar3 = new c(context, grsBaseInfo);
                map.put(context.getPackageName() + uniqueCode, cVar3);
                return cVar3;
            }
        }
    }
}
