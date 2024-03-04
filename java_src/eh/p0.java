package eh;

import eh.j0;
import io.grpc.internal.e2;
import io.grpc.n0;
import io.grpc.t0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public final class p0 extends io.grpc.o0 {

    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f39049a;

        /* renamed from: b  reason: collision with root package name */
        final String f39050b;

        /* renamed from: c  reason: collision with root package name */
        final j0.d f39051c;

        /* renamed from: d  reason: collision with root package name */
        final Long f39052d;

        /* renamed from: e  reason: collision with root package name */
        final i1 f39053e;

        /* renamed from: f  reason: collision with root package name */
        final List<x0> f39054f;

        /* renamed from: g  reason: collision with root package name */
        final e2.b f39055g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str, String str2, j0.d dVar, Long l10, List<x0> list, e2.b bVar, i1 i1Var) {
            this.f39049a = (String) com.google.common.base.o.t(str, "cluster");
            this.f39050b = str2;
            this.f39051c = dVar;
            this.f39052d = l10;
            this.f39053e = i1Var;
            this.f39054f = Collections.unmodifiableList(new ArrayList((Collection) com.google.common.base.o.t(list, "dropCategories")));
            this.f39055g = (e2.b) com.google.common.base.o.t(bVar, "childPolicy");
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("cluster", this.f39049a).d("edsServiceName", this.f39050b).d("lrsServerInfo", this.f39051c).d("maxConcurrentRequests", this.f39052d).d("dropCategories", this.f39054f).d("childPolicy", this.f39055g).toString();
        }
    }

    @Override // io.grpc.n0.c
    public io.grpc.n0 a(n0.d dVar) {
        return new o0(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "cluster_impl_experimental";
    }

    @Override // io.grpc.o0
    public int c() {
        return 5;
    }

    @Override // io.grpc.o0
    public boolean d() {
        return true;
    }

    @Override // io.grpc.o0
    public t0.c e(Map<String, ?> map) {
        throw new UnsupportedOperationException("not supported as top-level LB policy");
    }
}
