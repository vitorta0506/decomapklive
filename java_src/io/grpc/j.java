package io.grpc;

import io.grpc.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final g<Object, Object> f43341a = new a();

    /* loaded from: classes5.dex */
    class a extends g<Object, Object> {
        a() {
        }

        @Override // io.grpc.g
        public void a(String str, Throwable th2) {
        }

        @Override // io.grpc.g
        public void b() {
        }

        @Override // io.grpc.g
        public void c(int i9) {
        }

        @Override // io.grpc.g
        public void d(Object obj) {
        }

        @Override // io.grpc.g
        public void e(g.a<Object> aVar, s0 s0Var) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b extends d {

        /* renamed from: a  reason: collision with root package name */
        private final d f43342a;

        /* renamed from: b  reason: collision with root package name */
        private final h f43343b;

        /* synthetic */ b(d dVar, h hVar, i iVar) {
            this(dVar, hVar);
        }

        @Override // io.grpc.d
        public String a() {
            return this.f43342a.a();
        }

        @Override // io.grpc.d
        public <ReqT, RespT> g<ReqT, RespT> i(MethodDescriptor<ReqT, RespT> methodDescriptor, c cVar) {
            return this.f43343b.a(methodDescriptor, cVar, this.f43342a);
        }

        private b(d dVar, h hVar) {
            this.f43342a = dVar;
            this.f43343b = (h) com.google.common.base.o.t(hVar, "interceptor");
        }
    }

    public static d a(d dVar, List<? extends h> list) {
        com.google.common.base.o.t(dVar, "channel");
        for (h hVar : list) {
            dVar = new b(dVar, hVar, null);
        }
        return dVar;
    }

    public static d b(d dVar, h... hVarArr) {
        return a(dVar, Arrays.asList(hVarArr));
    }

    public static d c(d dVar, List<? extends h> list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.reverse(arrayList);
        return a(dVar, arrayList);
    }
}
