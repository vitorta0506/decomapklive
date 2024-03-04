package com.tencent.liteav.base.b;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final long f30884a = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, a> f30885b = new HashMap();

    public final synchronized a a(String str) {
        a aVar;
        aVar = this.f30885b.get(str);
        if (aVar == null) {
            aVar = new a(f30884a);
            this.f30885b.put(str, aVar);
        }
        return aVar;
    }
}
