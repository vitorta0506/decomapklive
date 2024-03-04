package fg;

import ig.v;
import io.grpc.MethodDescriptor;
import io.grpc.g;
import io.grpc.internal.f2;
import io.grpc.netty.shaded.io.netty.channel.m0;
import io.grpc.q0;
import java.util.concurrent.TimeUnit;
import mg.e;
import ug.i;
/* loaded from: classes5.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    static final f2.d<io.grpc.d> f39721a = new b("metadata.google.internal.:8080");

    /* loaded from: classes5.dex */
    private static class b implements f2.d<io.grpc.d> {

        /* renamed from: a  reason: collision with root package name */
        private final String f39722a;

        public b(String str) {
            this.f39722a = str;
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: c */
        public void b(io.grpc.d dVar) {
            ((C0425c) dVar).k();
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: d */
        public io.grpc.d a() {
            e eVar = new e(1, new i("handshaker pool", true));
            return new C0425c(((v) v.I(this.f39722a).D(og.d.class).c()).F(eVar).P().a(), eVar);
        }

        public String toString() {
            return "grpc-alts-handshaker-service-channel";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fg.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0425c extends d {

        /* renamed from: a  reason: collision with root package name */
        private final q0 f39723a;

        /* renamed from: b  reason: collision with root package name */
        private final m0 f39724b;

        public C0425c(q0 q0Var, m0 m0Var) {
            super();
            this.f39723a = q0Var;
            this.f39724b = m0Var;
        }

        @Override // fg.c.d
        protected io.grpc.d j() {
            return this.f39723a;
        }

        public void k() {
            boolean z10;
            this.f39723a.n();
            try {
                z10 = this.f39723a.j(2L, TimeUnit.SECONDS);
            } catch (InterruptedException unused) {
                z10 = false;
            }
            this.f39724b.z0(z10 ? 0L : 1L, 10L, TimeUnit.SECONDS);
        }
    }

    /* loaded from: classes5.dex */
    private static abstract class d extends io.grpc.d {
        private d() {
        }

        @Override // io.grpc.d
        public String a() {
            return j().a();
        }

        @Override // io.grpc.d
        public <ReqT, RespT> g<ReqT, RespT> i(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar) {
            return j().i(methodDescriptor, cVar);
        }

        protected abstract io.grpc.d j();
    }
}
