package eh;

import io.grpc.n0;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes5.dex */
interface l1 {

    /* loaded from: classes5.dex */
    public interface a {
        io.grpc.h b(b bVar, b bVar2, n0.f fVar, ScheduledExecutorService scheduledExecutorService);
    }

    /* loaded from: classes5.dex */
    public interface b {
        String a();
    }

    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final String f38876a;

        /* renamed from: b  reason: collision with root package name */
        final b f38877b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(String str, b bVar) {
            this.f38876a = str;
            this.f38877b = bVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return Objects.equals(this.f38876a, cVar.f38876a) && Objects.equals(this.f38877b, cVar.f38877b);
        }

        public int hashCode() {
            return Objects.hash(this.f38876a, this.f38877b);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("name", this.f38876a).d("filterConfig", this.f38877b).toString();
        }
    }

    /* loaded from: classes5.dex */
    public interface d {
    }

    String[] a();

    w0<? extends b> c(com.google.protobuf.l1 l1Var);

    w0<? extends b> d(com.google.protobuf.l1 l1Var);
}
