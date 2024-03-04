package eh;

import eh.l1;
import io.grpc.Status;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class j1 implements l1.b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class a {
        private static a a(Status status, boolean z10, c cVar) {
            return new p(status, z10, cVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a b(c cVar) {
            return a(null, true, cVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a c(Status status, c cVar) {
            com.google.common.base.o.t(status, "status");
            return a(status, false, cVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean d();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract c e();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Status f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class b {
        private static b a(Long l10, boolean z10, c cVar) {
            return new q(l10, z10, cVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static b c(long j10, c cVar) {
            return a(Long.valueOf(j10), false, cVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static b d(c cVar) {
            return a(null, true, cVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Long b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean e();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract c f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class c {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public enum a {
            HUNDRED,
            TEN_THOUSAND,
            MILLION
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static c a(int i9, a aVar) {
            return new r(i9, aVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static c d(int i9) {
            return a(i9, a.HUNDRED);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static c e(int i9) {
            return a(i9, a.MILLION);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static c f(int i9) {
            return a(i9, a.TEN_THOUSAND);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract int c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j1 b(b bVar, a aVar, Integer num) {
        return new o(bVar, aVar, num);
    }

    @Override // eh.l1.b
    public final String a() {
        return "type.googleapis.com/envoy.extensions.filters.http.fault.v3.HTTPFault";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract a c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract b d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Integer e();
}
