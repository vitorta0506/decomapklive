package com.google.api.client.http;

import com.google.api.client.util.c0;
import com.google.api.client.util.z;
import java.io.IOException;
/* loaded from: classes2.dex */
public class e implements t {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.api.client.util.c f10995a;

    /* renamed from: b  reason: collision with root package name */
    private a f10996b = a.f10999b;

    /* renamed from: c  reason: collision with root package name */
    private c0 f10997c = c0.f11106a;

    /* loaded from: classes2.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f10998a = new C0090a();

        /* renamed from: b  reason: collision with root package name */
        public static final a f10999b = new b();

        /* renamed from: com.google.api.client.http.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static class C0090a implements a {
            C0090a() {
            }

            @Override // com.google.api.client.http.e.a
            public boolean a(p pVar) {
                return true;
            }
        }

        /* loaded from: classes2.dex */
        static class b implements a {
            b() {
            }

            @Override // com.google.api.client.http.e.a
            public boolean a(p pVar) {
                return pVar.f() / 100 == 5;
            }
        }

        boolean a(p pVar);
    }

    public e(com.google.api.client.util.c cVar) {
        this.f10995a = (com.google.api.client.util.c) z.d(cVar);
    }

    @Override // com.google.api.client.http.t
    public boolean a(m mVar, p pVar, boolean z10) throws IOException {
        if (z10 && this.f10996b.a(pVar)) {
            try {
                return com.google.api.client.util.d.a(this.f10997c, this.f10995a);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        return false;
    }

    public e b(a aVar) {
        this.f10996b = (a) z.d(aVar);
        return this;
    }
}
