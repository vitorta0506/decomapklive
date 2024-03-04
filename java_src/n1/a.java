package n1;

import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import java.io.IOException;
/* loaded from: classes.dex */
public final class a implements e6.a {

    /* renamed from: a  reason: collision with root package name */
    public static final e6.a f55203a = new a();

    /* renamed from: n1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0577a implements d6.c<r1.a> {

        /* renamed from: a  reason: collision with root package name */
        static final C0577a f55204a = new C0577a();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f55205b = d6.b.a("window").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f55206c = d6.b.a("logSourceMetrics").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        /* renamed from: d  reason: collision with root package name */
        private static final d6.b f55207d = d6.b.a("globalMetrics").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        /* renamed from: e  reason: collision with root package name */
        private static final d6.b f55208e = d6.b.a("appNamespace").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        private C0577a() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(r1.a aVar, d6.d dVar) throws IOException {
            dVar.d(f55205b, aVar.d());
            dVar.d(f55206c, aVar.c());
            dVar.d(f55207d, aVar.b());
            dVar.d(f55208e, aVar.a());
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements d6.c<r1.b> {

        /* renamed from: a  reason: collision with root package name */
        static final b f55209a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f55210b = d6.b.a("storageMetrics").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private b() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(r1.b bVar, d6.d dVar) throws IOException {
            dVar.d(f55210b, bVar.a());
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements d6.c<LogEventDropped> {

        /* renamed from: a  reason: collision with root package name */
        static final c f55211a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f55212b = d6.b.a("eventsDroppedCount").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f55213c = d6.b.a("reason").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        private c() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(LogEventDropped logEventDropped, d6.d dVar) throws IOException {
            dVar.b(f55212b, logEventDropped.a());
            dVar.d(f55213c, logEventDropped.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class d implements d6.c<r1.c> {

        /* renamed from: a  reason: collision with root package name */
        static final d f55214a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f55215b = d6.b.a("logSource").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f55216c = d6.b.a("logEventDropped").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private d() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(r1.c cVar, d6.d dVar) throws IOException {
            dVar.d(f55215b, cVar.b());
            dVar.d(f55216c, cVar.a());
        }
    }

    /* loaded from: classes.dex */
    private static final class e implements d6.c<l> {

        /* renamed from: a  reason: collision with root package name */
        static final e f55217a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f55218b = d6.b.d("clientMetrics");

        private e() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(l lVar, d6.d dVar) throws IOException {
            dVar.d(f55218b, lVar.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class f implements d6.c<r1.d> {

        /* renamed from: a  reason: collision with root package name */
        static final f f55219a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f55220b = d6.b.a("currentCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f55221c = d6.b.a("maxCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private f() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(r1.d dVar, d6.d dVar2) throws IOException {
            dVar2.b(f55220b, dVar.a());
            dVar2.b(f55221c, dVar.b());
        }
    }

    /* loaded from: classes.dex */
    private static final class g implements d6.c<r1.e> {

        /* renamed from: a  reason: collision with root package name */
        static final g f55222a = new g();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f55223b = d6.b.a("startMs").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f55224c = d6.b.a("endMs").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private g() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(r1.e eVar, d6.d dVar) throws IOException {
            dVar.b(f55223b, eVar.b());
            dVar.b(f55224c, eVar.a());
        }
    }

    private a() {
    }

    @Override // e6.a
    public void a(e6.b<?> bVar) {
        bVar.a(l.class, e.f55217a);
        bVar.a(r1.a.class, C0577a.f55204a);
        bVar.a(r1.e.class, g.f55222a);
        bVar.a(r1.c.class, d.f55214a);
        bVar.a(LogEventDropped.class, c.f55211a);
        bVar.a(r1.b.class, b.f55209a);
        bVar.a(r1.d.class, f.f55219a);
    }
}
