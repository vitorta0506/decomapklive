package eh;

import eh.l1;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class x1 implements l1.b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static x1 c(hh.q qVar) {
        return new u(qVar);
    }

    @Override // eh.l1.b
    public final String a() {
        return "type.googleapis.com/envoy.extensions.filters.http.rbac.v3.RBAC";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract hh.q b();
}
