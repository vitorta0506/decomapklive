package com.meizu.cloud.pushsdk.d.a;

import com.meizu.cloud.pushsdk.d.f.e;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final String f28515a = c.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, Object> f28516b = new HashMap<>();

    @Override // com.meizu.cloud.pushsdk.d.a.a
    public Map a() {
        return this.f28516b;
    }

    public void a(String str, Object obj) {
        if (obj != null) {
            this.f28516b.put(str, obj);
            return;
        }
        String str2 = this.f28515a;
        com.meizu.cloud.pushsdk.d.f.c.c(str2, "The keys value is empty, returning without adding key: " + str, new Object[0]);
    }

    @Override // com.meizu.cloud.pushsdk.d.a.a
    public void a(String str, String str2) {
        if (str2 != null && !str2.isEmpty()) {
            this.f28516b.put(str, str2);
            return;
        }
        String str3 = this.f28515a;
        com.meizu.cloud.pushsdk.d.f.c.c(str3, "The keys value is empty, returning without adding key: " + str, new Object[0]);
    }

    public void a(Map<String, Object> map) {
        if (map == null) {
            com.meizu.cloud.pushsdk.d.f.c.c(this.f28515a, "Map passed in is null, returning without adding map.", new Object[0]);
        } else {
            this.f28516b.putAll(map);
        }
    }

    @Override // com.meizu.cloud.pushsdk.d.a.a
    public long b() {
        return e.a(toString());
    }

    public String toString() {
        return e.a((Map) this.f28516b).toString();
    }
}
