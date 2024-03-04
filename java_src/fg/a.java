package fg;

import com.google.common.base.o;
import io.grpc.Status;
import io.grpc.b;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
final class a extends io.grpc.b {

    /* renamed from: a  reason: collision with root package name */
    private final Status f39719a;

    public a(Status status) {
        this.f39719a = (Status) o.t(status, "status");
    }

    @Override // io.grpc.b
    public void a(b.AbstractC0464b abstractC0464b, Executor executor, b.a aVar) {
        aVar.b(this.f39719a);
    }
}
