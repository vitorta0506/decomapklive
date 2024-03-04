package com.meizu.cloud.pushsdk.c.c;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
/* loaded from: classes4.dex */
public final class h extends j {

    /* renamed from: a  reason: collision with root package name */
    public static final g f28408a = g.a("multipart/mixed");

    /* renamed from: b  reason: collision with root package name */
    public static final g f28409b = g.a("multipart/alternative");

    /* renamed from: c  reason: collision with root package name */
    public static final g f28410c = g.a("multipart/digest");

    /* renamed from: d  reason: collision with root package name */
    public static final g f28411d = g.a("multipart/parallel");

    /* renamed from: e  reason: collision with root package name */
    public static final g f28412e = g.a("multipart/form-data");

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f28413f = {58, 32};

    /* renamed from: g  reason: collision with root package name */
    private static final byte[] f28414g = {13, 10};

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f28415h = {45, 45};

    /* renamed from: i  reason: collision with root package name */
    private final com.meizu.cloud.pushsdk.c.g.e f28416i;

    /* renamed from: j  reason: collision with root package name */
    private final g f28417j;

    /* renamed from: k  reason: collision with root package name */
    private final g f28418k;

    /* renamed from: l  reason: collision with root package name */
    private final List<b> f28419l;

    /* renamed from: m  reason: collision with root package name */
    private long f28420m = -1;

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final com.meizu.cloud.pushsdk.c.g.e f28421a;

        /* renamed from: b  reason: collision with root package name */
        private g f28422b;

        /* renamed from: c  reason: collision with root package name */
        private final List<b> f28423c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        public a(String str) {
            this.f28422b = h.f28408a;
            this.f28423c = new ArrayList();
            this.f28421a = com.meizu.cloud.pushsdk.c.g.e.a(str);
        }

        public a a(c cVar, j jVar) {
            return a(b.a(cVar, jVar));
        }

        public a a(g gVar) {
            Objects.requireNonNull(gVar, "type == null");
            if ("multipart".equals(gVar.a())) {
                this.f28422b = gVar;
                return this;
            }
            throw new IllegalArgumentException("multipart != " + gVar);
        }

        public a a(b bVar) {
            Objects.requireNonNull(bVar, "part == null");
            this.f28423c.add(bVar);
            return this;
        }

        public h a() {
            if (this.f28423c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new h(this.f28421a, this.f28422b, this.f28423c);
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final c f28424a;

        /* renamed from: b  reason: collision with root package name */
        private final j f28425b;

        private b(c cVar, j jVar) {
            this.f28424a = cVar;
            this.f28425b = jVar;
        }

        public static b a(c cVar, j jVar) {
            Objects.requireNonNull(jVar, "body == null");
            if (cVar == null || cVar.a("Content-Type") == null) {
                if (cVar == null || cVar.a("Content-Length") == null) {
                    return new b(cVar, jVar);
                }
                throw new IllegalArgumentException("Unexpected header: Content-Length");
            }
            throw new IllegalArgumentException("Unexpected header: Content-Type");
        }
    }

    h(com.meizu.cloud.pushsdk.c.g.e eVar, g gVar, List<b> list) {
        this.f28416i = eVar;
        this.f28417j = gVar;
        this.f28418k = g.a(gVar + "; boundary=" + eVar.a());
        this.f28419l = m.a(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long a(com.meizu.cloud.pushsdk.c.g.c cVar, boolean z10) throws IOException {
        com.meizu.cloud.pushsdk.c.g.b bVar;
        if (z10) {
            cVar = new com.meizu.cloud.pushsdk.c.g.b();
            bVar = cVar;
        } else {
            bVar = 0;
        }
        int size = this.f28419l.size();
        long j10 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            b bVar2 = this.f28419l.get(i9);
            c cVar2 = bVar2.f28424a;
            j jVar = bVar2.f28425b;
            cVar.c(f28415h);
            cVar.b(this.f28416i);
            cVar.c(f28414g);
            if (cVar2 != null) {
                int a10 = cVar2.a();
                for (int i10 = 0; i10 < a10; i10++) {
                    cVar.b(cVar2.a(i10)).c(f28413f).b(cVar2.b(i10)).c(f28414g);
                }
            }
            g a11 = jVar.a();
            if (a11 != null) {
                cVar.b("Content-Type: ").b(a11.toString()).c(f28414g);
            }
            long b10 = jVar.b();
            if (b10 != -1) {
                cVar.b("Content-Length: ").e(b10).c(f28414g);
            } else if (z10) {
                bVar.j();
                return -1L;
            }
            byte[] bArr = f28414g;
            cVar.c(bArr);
            if (z10) {
                j10 += b10;
            } else {
                jVar.a(cVar);
            }
            cVar.c(bArr);
        }
        byte[] bArr2 = f28415h;
        cVar.c(bArr2);
        cVar.b(this.f28416i);
        cVar.c(bArr2);
        cVar.c(f28414g);
        if (z10) {
            long a12 = j10 + bVar.a();
            bVar.j();
            return a12;
        }
        return j10;
    }

    @Override // com.meizu.cloud.pushsdk.c.c.j
    public g a() {
        return this.f28418k;
    }

    @Override // com.meizu.cloud.pushsdk.c.c.j
    public void a(com.meizu.cloud.pushsdk.c.g.c cVar) throws IOException {
        a(cVar, false);
    }

    @Override // com.meizu.cloud.pushsdk.c.c.j
    public long b() throws IOException {
        long j10 = this.f28420m;
        if (j10 != -1) {
            return j10;
        }
        long a10 = a((com.meizu.cloud.pushsdk.c.g.c) null, true);
        this.f28420m = a10;
        return a10;
    }
}
