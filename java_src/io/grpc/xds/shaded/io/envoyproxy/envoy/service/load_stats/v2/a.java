package io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2;

import io.grpc.MethodDescriptor;
import io.grpc.stub.b;
import io.grpc.stub.e;
import io.grpc.stub.h;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile MethodDescriptor<LoadStatsRequest, LoadStatsResponse> f50144a;

    /* renamed from: io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v2.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class C0501a implements b.a<d> {
        C0501a() {
        }

        @Override // io.grpc.stub.b.a
        /* renamed from: b */
        public d a(io.grpc.d dVar, io.grpc.c cVar) {
            return new d(dVar, cVar, null);
        }
    }

    /* loaded from: classes6.dex */
    private static abstract class b {
        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final String f50145a;

        c(String str) {
            this.f50145a = str;
        }
    }

    /* loaded from: classes6.dex */
    public static final class d extends io.grpc.stub.a<d> {
        /* synthetic */ d(io.grpc.d dVar, io.grpc.c cVar, C0501a c0501a) {
            this(dVar, cVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.stub.b
        /* renamed from: h */
        public d a(io.grpc.d dVar, io.grpc.c cVar) {
            return new d(dVar, cVar);
        }

        public h<LoadStatsRequest> i(h<LoadStatsResponse> hVar) {
            return e.a(c().i(a.a(), b()), hVar);
        }

        private d(io.grpc.d dVar, io.grpc.c cVar) {
            super(dVar, cVar);
        }
    }

    private a() {
    }

    public static MethodDescriptor<LoadStatsRequest, LoadStatsResponse> a() {
        MethodDescriptor<LoadStatsRequest, LoadStatsResponse> methodDescriptor = f50144a;
        if (methodDescriptor == null) {
            synchronized (a.class) {
                methodDescriptor = f50144a;
                if (methodDescriptor == null) {
                    methodDescriptor = MethodDescriptor.h().g(MethodDescriptor.MethodType.BIDI_STREAMING).b(MethodDescriptor.b("envoy.service.load_stats.v2.LoadReportingService", "StreamLoadStats")).e(true).c(zg.a.a(LoadStatsRequest.getDefaultInstance())).d(zg.a.a(LoadStatsResponse.getDefaultInstance())).f(new c("StreamLoadStats")).a();
                    f50144a = methodDescriptor;
                }
            }
        }
        return methodDescriptor;
    }

    public static d b(io.grpc.d dVar) {
        return (d) io.grpc.stub.a.f(new C0501a(), dVar);
    }
}