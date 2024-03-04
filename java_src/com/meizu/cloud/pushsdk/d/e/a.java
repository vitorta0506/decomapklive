package com.meizu.cloud.pushsdk.d.e;

import android.content.Context;
import com.meizu.cloud.pushsdk.PushManager;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: n  reason: collision with root package name */
    private static final String f28615n = "a";

    /* renamed from: b  reason: collision with root package name */
    protected com.meizu.cloud.pushsdk.d.b.a f28617b;

    /* renamed from: c  reason: collision with root package name */
    protected c f28618c;

    /* renamed from: d  reason: collision with root package name */
    protected b f28619d;

    /* renamed from: e  reason: collision with root package name */
    protected final String f28620e;

    /* renamed from: f  reason: collision with root package name */
    protected final String f28621f;

    /* renamed from: g  reason: collision with root package name */
    protected final boolean f28622g;

    /* renamed from: h  reason: collision with root package name */
    protected final com.meizu.cloud.pushsdk.d.f.b f28623h;

    /* renamed from: i  reason: collision with root package name */
    protected final boolean f28624i;

    /* renamed from: j  reason: collision with root package name */
    protected final long f28625j;

    /* renamed from: k  reason: collision with root package name */
    protected final int f28626k;

    /* renamed from: l  reason: collision with root package name */
    protected final TimeUnit f28627l;

    /* renamed from: a  reason: collision with root package name */
    protected final String f28616a = PushManager.TAG;

    /* renamed from: m  reason: collision with root package name */
    protected final AtomicBoolean f28628m = new AtomicBoolean(true);

    /* renamed from: com.meizu.cloud.pushsdk.d.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0284a {

        /* renamed from: a  reason: collision with root package name */
        protected final com.meizu.cloud.pushsdk.d.b.a f28629a;

        /* renamed from: b  reason: collision with root package name */
        protected final String f28630b;

        /* renamed from: c  reason: collision with root package name */
        protected final String f28631c;

        /* renamed from: d  reason: collision with root package name */
        protected final Context f28632d;

        /* renamed from: e  reason: collision with root package name */
        protected c f28633e = null;

        /* renamed from: f  reason: collision with root package name */
        protected boolean f28634f = false;

        /* renamed from: g  reason: collision with root package name */
        protected com.meizu.cloud.pushsdk.d.f.b f28635g = com.meizu.cloud.pushsdk.d.f.b.OFF;

        /* renamed from: h  reason: collision with root package name */
        protected boolean f28636h = false;

        /* renamed from: i  reason: collision with root package name */
        protected long f28637i = 600;

        /* renamed from: j  reason: collision with root package name */
        protected long f28638j = 300;

        /* renamed from: k  reason: collision with root package name */
        protected long f28639k = 15;

        /* renamed from: l  reason: collision with root package name */
        protected int f28640l = 10;

        /* renamed from: m  reason: collision with root package name */
        protected TimeUnit f28641m = TimeUnit.SECONDS;

        public C0284a(com.meizu.cloud.pushsdk.d.b.a aVar, String str, String str2, Context context, Class<? extends a> cls) {
            this.f28629a = aVar;
            this.f28630b = str;
            this.f28631c = str2;
            this.f28632d = context;
        }

        public C0284a a(int i9) {
            this.f28640l = i9;
            return this;
        }

        public C0284a a(c cVar) {
            this.f28633e = cVar;
            return this;
        }

        public C0284a a(com.meizu.cloud.pushsdk.d.f.b bVar) {
            this.f28635g = bVar;
            return this;
        }

        public C0284a a(Boolean bool) {
            this.f28634f = bool.booleanValue();
            return this;
        }
    }

    public a(C0284a c0284a) {
        this.f28617b = c0284a.f28629a;
        this.f28621f = c0284a.f28631c;
        this.f28622g = c0284a.f28634f;
        this.f28620e = c0284a.f28630b;
        this.f28618c = c0284a.f28633e;
        this.f28623h = c0284a.f28635g;
        boolean z10 = c0284a.f28636h;
        this.f28624i = z10;
        this.f28625j = c0284a.f28639k;
        int i9 = c0284a.f28640l;
        this.f28626k = i9 < 2 ? 2 : i9;
        this.f28627l = c0284a.f28641m;
        if (z10) {
            this.f28619d = new b(c0284a.f28637i, c0284a.f28638j, c0284a.f28641m, c0284a.f28632d);
        }
        com.meizu.cloud.pushsdk.d.f.c.a(c0284a.f28635g);
        com.meizu.cloud.pushsdk.d.f.c.c(f28615n, "Tracker created successfully.", new Object[0]);
    }

    private com.meizu.cloud.pushsdk.d.a.b a(List<com.meizu.cloud.pushsdk.d.a.b> list) {
        if (this.f28624i) {
            list.add(this.f28619d.a());
        }
        c cVar = this.f28618c;
        if (cVar != null) {
            if (!cVar.a().isEmpty()) {
                list.add(new com.meizu.cloud.pushsdk.d.a.b("geolocation", this.f28618c.a()));
            }
            if (!this.f28618c.b().isEmpty()) {
                list.add(new com.meizu.cloud.pushsdk.d.a.b("mobileinfo", this.f28618c.b()));
            }
        }
        LinkedList linkedList = new LinkedList();
        for (com.meizu.cloud.pushsdk.d.a.b bVar : list) {
            linkedList.add(bVar.a());
        }
        return new com.meizu.cloud.pushsdk.d.a.b("push_extra_info", linkedList);
    }

    private void a(com.meizu.cloud.pushsdk.d.a.c cVar, List<com.meizu.cloud.pushsdk.d.a.b> list, boolean z10) {
        if (this.f28618c != null) {
            cVar.a(new HashMap(this.f28618c.c()));
            cVar.a("et", a(list).a());
        }
        com.meizu.cloud.pushsdk.d.f.c.c(f28615n, "Adding new payload to event storage: %s", cVar);
        this.f28617b.a(cVar, z10);
    }

    public void a() {
        if (this.f28628m.get()) {
            b().a();
        }
    }

    public void a(com.meizu.cloud.pushsdk.d.c.b bVar, boolean z10) {
        if (this.f28628m.get()) {
            a(bVar.e(), bVar.a(), z10);
        }
    }

    public void a(c cVar) {
        this.f28618c = cVar;
    }

    public com.meizu.cloud.pushsdk.d.b.a b() {
        return this.f28617b;
    }
}
