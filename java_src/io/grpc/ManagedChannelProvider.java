package io.grpc;
/* loaded from: classes5.dex */
public abstract class ManagedChannelProvider {

    /* loaded from: classes5.dex */
    public static final class ProviderNotFoundException extends RuntimeException {
        private static final long serialVersionUID = 1;

        public ProviderNotFoundException(String str) {
            super(str);
        }
    }

    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final r0<?> f41677a;

        /* renamed from: b  reason: collision with root package name */
        private final String f41678b;

        private a(r0<?> r0Var, String str) {
            this.f41677a = r0Var;
            this.f41678b = str;
        }

        public static a a(r0<?> r0Var) {
            return new a((r0) com.google.common.base.o.s(r0Var), null);
        }

        public static a b(String str) {
            return new a(null, (String) com.google.common.base.o.s(str));
        }

        public r0<?> c() {
            return this.f41677a;
        }

        public String d() {
            return this.f41678b;
        }
    }

    public static ManagedChannelProvider e() {
        ManagedChannelProvider e10 = ManagedChannelRegistry.b().e();
        if (e10 != null) {
            return e10;
        }
        throw new ProviderNotFoundException("No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract r0<?> a(String str, int i9);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean b();

    /* JADX INFO: Access modifiers changed from: protected */
    public a c(String str, e eVar) {
        return a.b("ChannelCredentials are unsupported");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int d();
}
