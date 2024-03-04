package com.huawei.hms.hatool;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: b  reason: collision with root package name */
    public static Map<String, m> f27470b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public static i f27471c;

    /* renamed from: a  reason: collision with root package name */
    public l f27472a = new l();

    public static i c() {
        if (f27471c == null) {
            d();
        }
        return f27471c;
    }

    public static synchronized void d() {
        synchronized (i.class) {
            if (f27471c == null) {
                f27471c = new i();
            }
        }
    }

    public m a(String str) {
        return f27470b.get(str);
    }

    public Set<String> a() {
        return f27470b.keySet();
    }

    public void a(String str, m mVar) {
        f27470b.put(str, mVar);
    }

    public l b() {
        return this.f27472a;
    }
}
