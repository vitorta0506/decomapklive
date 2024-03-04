package ig;

import io.grpc.c0;
/* loaded from: classes5.dex */
public final class f0 {

    /* renamed from: c  reason: collision with root package name */
    static final f0 f41157c = new f0(io.grpc.a.f41743c, null);

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.a f41158a;

    /* renamed from: b  reason: collision with root package name */
    private final c0.c f41159b;

    private f0(io.grpc.a aVar, c0.c cVar) {
        this.f41158a = (io.grpc.a) com.google.common.base.o.t(aVar, "attributes");
        this.f41159b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.grpc.a a() {
        return this.f41158a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0.c b() {
        return this.f41159b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0 c(io.grpc.a aVar) {
        return new f0(aVar, this.f41159b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0 d(c0.c cVar) {
        return new f0(this.f41158a, cVar);
    }

    public boolean equals(Object obj) {
        if (obj instanceof f0) {
            f0 f0Var = (f0) obj;
            return com.google.common.base.l.a(this.f41158a, f0Var.f41158a) && com.google.common.base.l.a(this.f41159b, f0Var.f41159b);
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.f41158a, this.f41159b);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("attributes", this.f41158a).d("security", this.f41159b).toString();
    }
}
