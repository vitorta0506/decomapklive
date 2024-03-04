package m5;

import com.google.api.gax.core.ResourceCloseException;
import io.grpc.q0;
import java.util.concurrent.TimeUnit;
import m5.c;
/* loaded from: classes2.dex */
public abstract class h0 implements com.google.api.gax.rpc.h0 {

    /* loaded from: classes2.dex */
    public static abstract class a {
        public abstract h0 a();

        public abstract a b(q0 q0Var);
    }

    public static h0 b(q0 q0Var) {
        return o().b(q0Var).a();
    }

    public static String j() {
        return "grpc";
    }

    public static a o() {
        return new c.b();
    }

    public boolean a(long j10, TimeUnit timeUnit) throws InterruptedException {
        return k().j(j10, timeUnit);
    }

    public io.grpc.d c() {
        return k();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        k().m();
        try {
            a(6L, TimeUnit.MINUTES);
        } catch (InterruptedException e10) {
            throw new ResourceCloseException(e10);
        }
    }

    @Override // com.google.api.gax.rpc.h0
    /* renamed from: e */
    public p b1() {
        return p.a();
    }

    @Override // com.google.api.gax.rpc.h0
    public String getTransportName() {
        return j();
    }

    @Override // l5.d
    public boolean isShutdown() {
        return k().k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract q0 k();

    @Override // l5.d
    public void shutdown() {
        k().m();
    }
}
