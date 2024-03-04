package ig;

import io.grpc.internal.q2;
import io.grpc.internal.r2;
/* loaded from: classes5.dex */
class e0 implements r2 {

    /* renamed from: a  reason: collision with root package name */
    private final kg.k f41155a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(kg.k kVar) {
        this.f41155a = kVar;
    }

    @Override // io.grpc.internal.r2
    public q2 a(int i9) {
        int min = Math.min(1048576, Math.max(4096, i9));
        return new d0(this.f41155a.j(min, min));
    }
}
