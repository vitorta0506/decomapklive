package com.meizu.cloud.pushsdk.d.e;

import android.content.Context;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.d.f.e;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28649a = "b";

    /* renamed from: b  reason: collision with root package name */
    private String f28650b;

    /* renamed from: c  reason: collision with root package name */
    private String f28651c;

    /* renamed from: d  reason: collision with root package name */
    private String f28652d;

    /* renamed from: e  reason: collision with root package name */
    private int f28653e;

    /* renamed from: f  reason: collision with root package name */
    private final String f28654f = "SQLITE";

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f28655g = new AtomicBoolean(false);

    /* renamed from: h  reason: collision with root package name */
    private long f28656h;

    /* renamed from: i  reason: collision with root package name */
    private final long f28657i;

    /* renamed from: j  reason: collision with root package name */
    private final long f28658j;

    /* renamed from: k  reason: collision with root package name */
    private final Context f28659k;

    public b(long j10, long j11, TimeUnit timeUnit, Context context) {
        this.f28651c = null;
        this.f28653e = 0;
        this.f28657i = timeUnit.toMillis(j10);
        this.f28658j = timeUnit.toMillis(j11);
        this.f28659k = context;
        Map f10 = f();
        if (f10 != null) {
            try {
                String obj = f10.get(Contants.USER_ID).toString();
                String obj2 = f10.get("sessionId").toString();
                int intValue = ((Integer) f10.get("sessionIndex")).intValue();
                this.f28650b = obj;
                this.f28653e = intValue;
                this.f28651c = obj2;
            } catch (Exception e10) {
                com.meizu.cloud.pushsdk.d.f.c.a(f28649a, "Exception occurred retrieving session info from file: %s", e10.getMessage());
            }
            d();
            g();
            com.meizu.cloud.pushsdk.d.f.c.c(f28649a, "Tracker Session Object created.", new Object[0]);
        }
        this.f28650b = e.b();
        d();
        g();
        com.meizu.cloud.pushsdk.d.f.c.c(f28649a, "Tracker Session Object created.", new Object[0]);
    }

    private void d() {
        this.f28652d = this.f28651c;
        this.f28651c = e.b();
        this.f28653e++;
        String str = f28649a;
        com.meizu.cloud.pushsdk.d.f.c.b(str, "Session information is updated:", new Object[0]);
        com.meizu.cloud.pushsdk.d.f.c.b(str, " + Session ID: %s", this.f28651c);
        com.meizu.cloud.pushsdk.d.f.c.b(str, " + Previous Session ID: %s", this.f28652d);
        com.meizu.cloud.pushsdk.d.f.c.b(str, " + Session Index: %s", Integer.valueOf(this.f28653e));
        e();
    }

    private boolean e() {
        return com.meizu.cloud.pushsdk.d.f.a.a("snowplow_session_vars", c(), this.f28659k);
    }

    private Map f() {
        return com.meizu.cloud.pushsdk.d.f.a.a("snowplow_session_vars", this.f28659k);
    }

    private void g() {
        this.f28656h = System.currentTimeMillis();
    }

    public com.meizu.cloud.pushsdk.d.a.b a() {
        com.meizu.cloud.pushsdk.d.f.c.c(f28649a, "Getting session context...", new Object[0]);
        g();
        return new com.meizu.cloud.pushsdk.d.a.b("client_session", c());
    }

    public void b() {
        com.meizu.cloud.pushsdk.d.f.c.b(f28649a, "Checking and updating session information.", new Object[0]);
        if (e.a(this.f28656h, System.currentTimeMillis(), this.f28655g.get() ? this.f28658j : this.f28657i)) {
            return;
        }
        d();
        g();
    }

    public Map c() {
        HashMap hashMap = new HashMap(8);
        hashMap.put(Contants.USER_ID, this.f28650b);
        hashMap.put("sessionId", this.f28651c);
        hashMap.put("previousSessionId", this.f28652d);
        hashMap.put("sessionIndex", Integer.valueOf(this.f28653e));
        hashMap.put("storageMechanism", "SQLITE");
        return hashMap;
    }
}
