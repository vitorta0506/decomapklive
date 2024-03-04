package com.huawei.hms.framework.network.grs.local.model;

import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f27433a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, d> f27434b = new ConcurrentHashMap(16);

    /* renamed from: c  reason: collision with root package name */
    private List<b> f27435c = new ArrayList(16);

    public d a(String str) {
        if (TextUtils.isEmpty(str)) {
            Logger.w("Service", "In servings.getServing(String groupId), the groupId is Empty or null");
            return null;
        }
        return this.f27434b.get(str);
    }

    public List<b> a() {
        return this.f27435c;
    }

    public void a(String str, d dVar) {
        if (TextUtils.isEmpty(str) || dVar == null) {
            return;
        }
        this.f27434b.put(str, dVar);
    }

    public void a(List<b> list) {
        this.f27435c = list;
    }

    public String b() {
        return this.f27433a;
    }

    public void b(String str) {
    }

    public void c(String str) {
        this.f27433a = str;
    }
}
