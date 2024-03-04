package dh;

import com.google.common.base.j;
import io.grpc.ChannelLogger;
import io.grpc.n0;
import io.grpc.x;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class c extends n0.h {
    @Override // io.grpc.n0.h
    public io.grpc.d a() {
        return k().a();
    }

    @Override // io.grpc.n0.h
    public List<x> c() {
        return k().c();
    }

    @Override // io.grpc.n0.h
    public io.grpc.a d() {
        return k().d();
    }

    @Override // io.grpc.n0.h
    public ChannelLogger e() {
        return k().e();
    }

    @Override // io.grpc.n0.h
    public Object f() {
        return k().f();
    }

    @Override // io.grpc.n0.h
    public void g() {
        k().g();
    }

    @Override // io.grpc.n0.h
    public void h() {
        k().h();
    }

    @Override // io.grpc.n0.h
    public void i(n0.j jVar) {
        k().i(jVar);
    }

    @Override // io.grpc.n0.h
    public void j(List<x> list) {
        k().j(list);
    }

    protected abstract n0.h k();

    public String toString() {
        return j.c(this).d("delegate", k()).toString();
    }
}
