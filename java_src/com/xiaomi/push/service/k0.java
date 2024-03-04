package com.xiaomi.push.service;

import com.xiaomi.push.di;
import java.util.Map;
/* loaded from: classes5.dex */
public class k0 {
    public static di a(di diVar) {
        Map<String, String> map;
        if (diVar != null && (map = diVar.f81b) != null) {
            map.remove("score_info");
        }
        return diVar;
    }
}
