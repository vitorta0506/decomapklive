package fg;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.common.collect.ImmutableList;
import ig.o;
import ig.p;
import ig.r;
import io.grpc.Status;
import io.grpc.alts.internal.k;
import io.grpc.e;
import io.grpc.internal.g2;
import io.grpc.n;
import java.io.IOException;
import javax.net.ssl.SSLException;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: fg.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0424b {

        /* renamed from: a  reason: collision with root package name */
        private io.grpc.b f39720a;

        private C0424b() {
        }

        private static r c() {
            try {
                return new k.e(ImmutableList.of(), g2.c(c.f39721a), o.f().b());
            } catch (SSLException e10) {
                throw new RuntimeException(e10);
            }
        }

        public e a() {
            io.grpc.b aVar;
            e a10 = p.a(c());
            io.grpc.b bVar = this.f39720a;
            if (bVar != null) {
                return n.a(a10, bVar);
            }
            try {
                aVar = gg.b.a(GoogleCredentials.getApplicationDefault());
            } catch (IOException e10) {
                aVar = new fg.a(Status.f41712n.r("Failed to get Google default credentials").q(e10));
            }
            return n.a(a10, aVar);
        }

        public C0424b b(io.grpc.b bVar) {
            this.f39720a = bVar;
            return this;
        }
    }

    public static e a() {
        return b().a();
    }

    public static C0424b b() {
        return new C0424b();
    }
}
