package dh;

import com.google.common.base.j;
import io.grpc.Status;
import io.grpc.n0;
import io.grpc.x;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class a extends n0 {
    @Override // io.grpc.n0
    public boolean a() {
        return f().a();
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        f().b(status);
    }

    @Override // io.grpc.n0
    @Deprecated
    public void c(List<x> list, io.grpc.a aVar) {
        f().c(list, aVar);
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        f().d(gVar);
    }

    @Override // io.grpc.n0
    public void e() {
        f().e();
    }

    protected abstract n0 f();

    public String toString() {
        return j.c(this).d("delegate", f()).toString();
    }
}
