package ig;

import ig.o0;
import ig.z;
import io.grpc.Status;
/* loaded from: classes5.dex */
class c extends o0.b {

    /* renamed from: c  reason: collision with root package name */
    private final z.c f41141c;

    /* renamed from: d  reason: collision with root package name */
    private final Status f41142d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(z.c cVar, Status status) {
        this.f41141c = (z.c) com.google.common.base.o.t(cVar, "stream");
        com.google.common.base.o.e(status == null || !status.p(), "Should not cancel with OK status");
        this.f41142d = status;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Status d() {
        return this.f41142d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z.c f() {
        return this.f41141c;
    }
}
