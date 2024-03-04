package com.google.android.datatransport.cct.internal;

import com.facebook.appevents.UserDataStore;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import java.io.IOException;
/* loaded from: classes.dex */
public final class b implements e6.a {

    /* renamed from: a  reason: collision with root package name */
    public static final e6.a f5241a = new b();

    /* loaded from: classes.dex */
    private static final class a implements d6.c<com.google.android.datatransport.cct.internal.a> {

        /* renamed from: a  reason: collision with root package name */
        static final a f5242a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f5243b = d6.b.d("sdkVersion");

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f5244c = d6.b.d(DeviceRequestsHelper.DEVICE_INFO_MODEL);

        /* renamed from: d  reason: collision with root package name */
        private static final d6.b f5245d = d6.b.d("hardware");

        /* renamed from: e  reason: collision with root package name */
        private static final d6.b f5246e = d6.b.d(DeviceRequestsHelper.DEVICE_INFO_DEVICE);

        /* renamed from: f  reason: collision with root package name */
        private static final d6.b f5247f = d6.b.d("product");

        /* renamed from: g  reason: collision with root package name */
        private static final d6.b f5248g = d6.b.d("osBuild");

        /* renamed from: h  reason: collision with root package name */
        private static final d6.b f5249h = d6.b.d("manufacturer");

        /* renamed from: i  reason: collision with root package name */
        private static final d6.b f5250i = d6.b.d("fingerprint");

        /* renamed from: j  reason: collision with root package name */
        private static final d6.b f5251j = d6.b.d("locale");

        /* renamed from: k  reason: collision with root package name */
        private static final d6.b f5252k = d6.b.d(UserDataStore.COUNTRY);

        /* renamed from: l  reason: collision with root package name */
        private static final d6.b f5253l = d6.b.d("mccMnc");

        /* renamed from: m  reason: collision with root package name */
        private static final d6.b f5254m = d6.b.d("applicationBuild");

        private a() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(com.google.android.datatransport.cct.internal.a aVar, d6.d dVar) throws IOException {
            dVar.d(f5243b, aVar.m());
            dVar.d(f5244c, aVar.j());
            dVar.d(f5245d, aVar.f());
            dVar.d(f5246e, aVar.d());
            dVar.d(f5247f, aVar.l());
            dVar.d(f5248g, aVar.k());
            dVar.d(f5249h, aVar.h());
            dVar.d(f5250i, aVar.e());
            dVar.d(f5251j, aVar.g());
            dVar.d(f5252k, aVar.c());
            dVar.d(f5253l, aVar.i());
            dVar.d(f5254m, aVar.b());
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0073b implements d6.c<i> {

        /* renamed from: a  reason: collision with root package name */
        static final C0073b f5255a = new C0073b();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f5256b = d6.b.d("logRequest");

        private C0073b() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(i iVar, d6.d dVar) throws IOException {
            dVar.d(f5256b, iVar.c());
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements d6.c<ClientInfo> {

        /* renamed from: a  reason: collision with root package name */
        static final c f5257a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f5258b = d6.b.d("clientType");

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f5259c = d6.b.d("androidClientInfo");

        private c() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(ClientInfo clientInfo, d6.d dVar) throws IOException {
            dVar.d(f5258b, clientInfo.c());
            dVar.d(f5259c, clientInfo.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class d implements d6.c<j> {

        /* renamed from: a  reason: collision with root package name */
        static final d f5260a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f5261b = d6.b.d("eventTimeMs");

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f5262c = d6.b.d("eventCode");

        /* renamed from: d  reason: collision with root package name */
        private static final d6.b f5263d = d6.b.d("eventUptimeMs");

        /* renamed from: e  reason: collision with root package name */
        private static final d6.b f5264e = d6.b.d("sourceExtension");

        /* renamed from: f  reason: collision with root package name */
        private static final d6.b f5265f = d6.b.d("sourceExtensionJsonProto3");

        /* renamed from: g  reason: collision with root package name */
        private static final d6.b f5266g = d6.b.d("timezoneOffsetSeconds");

        /* renamed from: h  reason: collision with root package name */
        private static final d6.b f5267h = d6.b.d("networkConnectionInfo");

        private d() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(j jVar, d6.d dVar) throws IOException {
            dVar.b(f5261b, jVar.c());
            dVar.d(f5262c, jVar.b());
            dVar.b(f5263d, jVar.d());
            dVar.d(f5264e, jVar.f());
            dVar.d(f5265f, jVar.g());
            dVar.b(f5266g, jVar.h());
            dVar.d(f5267h, jVar.e());
        }
    }

    /* loaded from: classes.dex */
    private static final class e implements d6.c<k> {

        /* renamed from: a  reason: collision with root package name */
        static final e f5268a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f5269b = d6.b.d("requestTimeMs");

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f5270c = d6.b.d("requestUptimeMs");

        /* renamed from: d  reason: collision with root package name */
        private static final d6.b f5271d = d6.b.d("clientInfo");

        /* renamed from: e  reason: collision with root package name */
        private static final d6.b f5272e = d6.b.d("logSource");

        /* renamed from: f  reason: collision with root package name */
        private static final d6.b f5273f = d6.b.d("logSourceName");

        /* renamed from: g  reason: collision with root package name */
        private static final d6.b f5274g = d6.b.d("logEvent");

        /* renamed from: h  reason: collision with root package name */
        private static final d6.b f5275h = d6.b.d("qosTier");

        private e() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(k kVar, d6.d dVar) throws IOException {
            dVar.b(f5269b, kVar.g());
            dVar.b(f5270c, kVar.h());
            dVar.d(f5271d, kVar.b());
            dVar.d(f5272e, kVar.d());
            dVar.d(f5273f, kVar.e());
            dVar.d(f5274g, kVar.c());
            dVar.d(f5275h, kVar.f());
        }
    }

    /* loaded from: classes.dex */
    private static final class f implements d6.c<NetworkConnectionInfo> {

        /* renamed from: a  reason: collision with root package name */
        static final f f5276a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f5277b = d6.b.d("networkType");

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f5278c = d6.b.d("mobileSubtype");

        private f() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(NetworkConnectionInfo networkConnectionInfo, d6.d dVar) throws IOException {
            dVar.d(f5277b, networkConnectionInfo.c());
            dVar.d(f5278c, networkConnectionInfo.b());
        }
    }

    private b() {
    }

    @Override // e6.a
    public void a(e6.b<?> bVar) {
        C0073b c0073b = C0073b.f5255a;
        bVar.a(i.class, c0073b);
        bVar.a(com.google.android.datatransport.cct.internal.d.class, c0073b);
        e eVar = e.f5268a;
        bVar.a(k.class, eVar);
        bVar.a(g.class, eVar);
        c cVar = c.f5257a;
        bVar.a(ClientInfo.class, cVar);
        bVar.a(com.google.android.datatransport.cct.internal.e.class, cVar);
        a aVar = a.f5242a;
        bVar.a(com.google.android.datatransport.cct.internal.a.class, aVar);
        bVar.a(com.google.android.datatransport.cct.internal.c.class, aVar);
        d dVar = d.f5260a;
        bVar.a(j.class, dVar);
        bVar.a(com.google.android.datatransport.cct.internal.f.class, dVar);
        f fVar = f.f5276a;
        bVar.a(NetworkConnectionInfo.class, fVar);
        bVar.a(h.class, fVar);
    }
}
