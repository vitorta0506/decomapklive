package com.meizu.cloud.pushsdk.c.c;

import java.util.ArrayList;
import java.util.List;
import okhttp3.HttpUrl;
/* loaded from: classes4.dex */
public class b extends j {

    /* renamed from: a  reason: collision with root package name */
    private static final g f28368a = g.a("application/x-www-form-urlencoded");

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f28369b;

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f28370c;

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f28371a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<String> f28372b = new ArrayList();

        public a a(String str, String str2) {
            this.f28371a.add(f.a(str, HttpUrl.FORM_ENCODE_SET, false, false, true, true));
            this.f28372b.add(f.a(str2, HttpUrl.FORM_ENCODE_SET, false, false, true, true));
            return this;
        }

        public b a() {
            return new b(this.f28371a, this.f28372b);
        }

        public a b(String str, String str2) {
            this.f28371a.add(f.a(str, HttpUrl.FORM_ENCODE_SET, true, false, true, true));
            this.f28372b.add(f.a(str2, HttpUrl.FORM_ENCODE_SET, true, false, true, true));
            return this;
        }
    }

    private b(List<String> list, List<String> list2) {
        this.f28369b = m.a(list);
        this.f28370c = m.a(list2);
    }

    private long a(com.meizu.cloud.pushsdk.c.g.c cVar, boolean z10) {
        com.meizu.cloud.pushsdk.c.g.b bVar = z10 ? new com.meizu.cloud.pushsdk.c.g.b() : cVar.b();
        int size = this.f28369b.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (i9 > 0) {
                bVar.b(38);
            }
            bVar.b(this.f28369b.get(i9));
            bVar.b(61);
            bVar.b(this.f28370c.get(i9));
        }
        if (z10) {
            long a10 = bVar.a();
            bVar.j();
            return a10;
        }
        return 0L;
    }

    @Override // com.meizu.cloud.pushsdk.c.c.j
    public g a() {
        return f28368a;
    }

    @Override // com.meizu.cloud.pushsdk.c.c.j
    public void a(com.meizu.cloud.pushsdk.c.g.c cVar) {
        a(cVar, false);
    }

    @Override // com.meizu.cloud.pushsdk.c.c.j
    public long b() {
        return a((com.meizu.cloud.pushsdk.c.g.c) null, true);
    }
}
