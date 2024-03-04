package com.meizu.cloud.pushsdk.d.a;

import com.meizu.cloud.pushsdk.d.f.d;
import com.meizu.cloud.pushsdk.d.f.e;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final String f28513a = b.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, Object> f28514b = new HashMap<>();

    public b(String str, Object obj) {
        a(str);
        a(obj);
    }

    public b a(Object obj) {
        if (obj == null) {
            return this;
        }
        this.f28514b.put("dt", obj);
        return this;
    }

    public b a(String str) {
        d.a(str, "schema cannot be null");
        d.a(!str.isEmpty(), "schema cannot be empty.");
        this.f28514b.put("sa", str);
        return this;
    }

    @Override // com.meizu.cloud.pushsdk.d.a.a
    public Map<String, Object> a() {
        return this.f28514b;
    }

    @Override // com.meizu.cloud.pushsdk.d.a.a
    @Deprecated
    public void a(String str, String str2) {
        com.meizu.cloud.pushsdk.d.f.c.c(this.f28513a, "Payload: add(String, String) method called - Doing nothing.", new Object[0]);
    }

    @Override // com.meizu.cloud.pushsdk.d.a.a
    public long b() {
        return e.a(toString());
    }

    public String toString() {
        return e.a((Map) this.f28514b).toString();
    }
}
