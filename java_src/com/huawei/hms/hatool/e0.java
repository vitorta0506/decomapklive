package com.huawei.hms.hatool;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class e0 {

    /* renamed from: b  reason: collision with root package name */
    public static e0 f27446b;

    /* renamed from: a  reason: collision with root package name */
    public volatile Map<String, f0> f27447a = new HashMap();

    public static e0 a() {
        if (f27446b == null) {
            b();
        }
        return f27446b;
    }

    public static synchronized void b() {
        synchronized (e0.class) {
            if (f27446b == null) {
                f27446b = new e0();
            }
        }
    }

    public final f0 a(String str) {
        if (!this.f27447a.containsKey(str)) {
            this.f27447a.put(str, new f0());
        }
        return this.f27447a.get(str);
    }

    public f0 a(String str, long j10) {
        f0 a10 = a(str);
        a10.a(j10);
        return a10;
    }
}
