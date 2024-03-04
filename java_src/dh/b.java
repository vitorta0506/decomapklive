package dh;

import com.google.common.base.j;
import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.d1;
import io.grpc.n0;
import io.grpc.q0;
import io.grpc.t0;
import io.grpc.v0;
import io.grpc.x;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes5.dex */
public abstract class b extends n0.d {
    @Override // io.grpc.n0.d
    public q0 a(List<x> list, String str) {
        return m().a(list, str);
    }

    @Override // io.grpc.n0.d
    public n0.h b(n0.b bVar) {
        return m().b(bVar);
    }

    @Override // io.grpc.n0.d
    public String c() {
        return m().c();
    }

    @Override // io.grpc.n0.d
    public ChannelLogger d() {
        return m().d();
    }

    @Override // io.grpc.n0.d
    public t0.b e() {
        return m().e();
    }

    @Override // io.grpc.n0.d
    public v0 f() {
        return m().f();
    }

    @Override // io.grpc.n0.d
    public ScheduledExecutorService g() {
        return m().g();
    }

    @Override // io.grpc.n0.d
    public d1 h() {
        return m().h();
    }

    @Override // io.grpc.n0.d
    public void i() {
        m().i();
    }

    @Override // io.grpc.n0.d
    public void j() {
        m().j();
    }

    @Override // io.grpc.n0.d
    public void k(ConnectivityState connectivityState, n0.i iVar) {
        m().k(connectivityState, iVar);
    }

    @Override // io.grpc.n0.d
    public void l(q0 q0Var, List<x> list) {
        m().l(q0Var, list);
    }

    protected abstract n0.d m();

    public String toString() {
        return j.c(this).d("delegate", m()).toString();
    }
}
