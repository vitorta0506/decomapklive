package eh;

import io.grpc.Status;
import io.grpc.n0;
/* loaded from: classes5.dex */
final class t2 {

    /* renamed from: a  reason: collision with root package name */
    static final n0.i f39341a = new a();

    /* loaded from: classes5.dex */
    class a extends n0.i {
        a() {
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return n0.e.g();
        }

        public String toString() {
            return "BUFFER_PICKER";
        }
    }

    /* loaded from: classes5.dex */
    static final class b extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        private final Status f39342a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Status status) {
            this.f39342a = (Status) com.google.common.base.o.t(status, "error");
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return n0.e.f(this.f39342a);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("error", this.f39342a).toString();
        }
    }
}
