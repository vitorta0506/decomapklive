package com.meizu.cloud.pushsdk.c.c;

import com.meizu.cloud.pushsdk.c.c.c;
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final f f28426a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28427b;

    /* renamed from: c  reason: collision with root package name */
    private final c f28428c;

    /* renamed from: d  reason: collision with root package name */
    private final j f28429d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f28430e;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private f f28431a;

        /* renamed from: b  reason: collision with root package name */
        private String f28432b = "GET";

        /* renamed from: c  reason: collision with root package name */
        private c.a f28433c = new c.a();

        /* renamed from: d  reason: collision with root package name */
        private j f28434d;

        /* renamed from: e  reason: collision with root package name */
        private Object f28435e;

        public a a() {
            return a("GET", (j) null);
        }

        public a a(c cVar) {
            this.f28433c = cVar.c();
            return this;
        }

        public a a(f fVar) {
            if (fVar != null) {
                this.f28431a = fVar;
                return this;
            }
            throw new IllegalArgumentException("url == null");
        }

        public a a(j jVar) {
            return a("POST", jVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x004c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.meizu.cloud.pushsdk.c.c.i.a a(java.lang.String r7) {
            /*
                r6 = this;
                if (r7 == 0) goto L64
                r1 = 1
                r2 = 0
                r4 = 0
                r5 = 3
                java.lang.String r3 = "ws:"
                r0 = r7
                boolean r0 = r0.regionMatches(r1, r2, r3, r4, r5)
                if (r0 == 0) goto L27
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "http:"
                r0.append(r1)
                r1 = 3
            L1b:
                java.lang.String r7 = r7.substring(r1)
                r0.append(r7)
                java.lang.String r7 = r0.toString()
                goto L41
            L27:
                r1 = 1
                r2 = 0
                r4 = 0
                r5 = 4
                java.lang.String r3 = "wss:"
                r0 = r7
                boolean r0 = r0.regionMatches(r1, r2, r3, r4, r5)
                if (r0 == 0) goto L41
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "https:"
                r0.append(r1)
                r1 = 4
                goto L1b
            L41:
                com.meizu.cloud.pushsdk.c.c.f r0 = com.meizu.cloud.pushsdk.c.c.f.c(r7)
                if (r0 == 0) goto L4c
                com.meizu.cloud.pushsdk.c.c.i$a r7 = r6.a(r0)
                return r7
            L4c:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "unexpected url: "
                r1.append(r2)
                r1.append(r7)
                java.lang.String r7 = r1.toString()
                r0.<init>(r7)
                throw r0
            L64:
                java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
                java.lang.String r0 = "url == null"
                r7.<init>(r0)
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.meizu.cloud.pushsdk.c.c.i.a.a(java.lang.String):com.meizu.cloud.pushsdk.c.c.i$a");
        }

        public a a(String str, j jVar) {
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException("method == null || method.length() == 0");
            }
            if (jVar != null && !d.b(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            } else if (jVar != null || !d.a(str)) {
                this.f28432b = str;
                this.f28434d = jVar;
                return this;
            } else {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            }
        }

        public a a(String str, String str2) {
            this.f28433c.a(str, str2);
            return this;
        }

        public a b() {
            return a("HEAD", (j) null);
        }

        public a b(j jVar) {
            return a("DELETE", jVar);
        }

        public a c(j jVar) {
            return a("PUT", jVar);
        }

        public i c() {
            if (this.f28431a != null) {
                return new i(this);
            }
            throw new IllegalStateException("url == null");
        }

        public a d(j jVar) {
            return a("PATCH", jVar);
        }
    }

    private i(a aVar) {
        this.f28426a = aVar.f28431a;
        this.f28427b = aVar.f28432b;
        this.f28428c = aVar.f28433c.a();
        this.f28429d = aVar.f28434d;
        this.f28430e = aVar.f28435e != null ? aVar.f28435e : this;
    }

    public f a() {
        return this.f28426a;
    }

    public String a(String str) {
        return this.f28428c.a(str);
    }

    public String b() {
        return this.f28427b;
    }

    public int c() {
        if ("POST".equals(b())) {
            return 1;
        }
        if ("PUT".equals(b())) {
            return 2;
        }
        if ("DELETE".equals(b())) {
            return 3;
        }
        if ("HEAD".equals(b())) {
            return 4;
        }
        return "PATCH".equals(b()) ? 5 : 0;
    }

    public c d() {
        return this.f28428c;
    }

    public j e() {
        return this.f28429d;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Request{method=");
        sb2.append(this.f28427b);
        sb2.append(", url=");
        sb2.append(this.f28426a);
        sb2.append(", tag=");
        Object obj = this.f28430e;
        if (obj == this) {
            obj = null;
        }
        sb2.append(obj);
        sb2.append('}');
        return sb2.toString();
    }
}
