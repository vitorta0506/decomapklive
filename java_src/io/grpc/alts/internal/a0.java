package io.grpc.alts.internal;

import io.grpc.alts.internal.RpcProtocolVersions;
/* loaded from: classes5.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    private static final RpcProtocolVersions f41832a = RpcProtocolVersions.newBuilder().l0(RpcProtocolVersions.Version.newBuilder().j0(2).k0(1).build()).m0(RpcProtocolVersions.Version.newBuilder().j0(2).k0(1).build()).build();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f41833a;

        /* renamed from: b  reason: collision with root package name */
        private final RpcProtocolVersions.Version f41834b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private boolean f41835a;

            /* renamed from: b  reason: collision with root package name */
            private RpcProtocolVersions.Version f41836b = null;

            a() {
            }

            public b c() {
                return new b(this);
            }

            public a d(RpcProtocolVersions.Version version) {
                this.f41836b = version;
                return this;
            }

            public a e(boolean z10) {
                this.f41835a = z10;
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a() {
            return this.f41833a;
        }

        private b(a aVar) {
            this.f41833a = aVar.f41835a;
            this.f41834b = aVar.f41836b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(RpcProtocolVersions rpcProtocolVersions, RpcProtocolVersions rpcProtocolVersions2) {
        RpcProtocolVersions.Version maxRpcVersion;
        RpcProtocolVersions.Version minRpcVersion;
        if (c(rpcProtocolVersions.getMaxRpcVersion(), rpcProtocolVersions2.getMaxRpcVersion())) {
            maxRpcVersion = rpcProtocolVersions2.getMaxRpcVersion();
        } else {
            maxRpcVersion = rpcProtocolVersions.getMaxRpcVersion();
        }
        if (c(rpcProtocolVersions.getMinRpcVersion(), rpcProtocolVersions2.getMinRpcVersion())) {
            minRpcVersion = rpcProtocolVersions.getMinRpcVersion();
        } else {
            minRpcVersion = rpcProtocolVersions2.getMinRpcVersion();
        }
        if (c(maxRpcVersion, minRpcVersion)) {
            return new b.a().e(true).d(maxRpcVersion).c();
        }
        return new b.a().e(false).c();
    }

    public static RpcProtocolVersions b() {
        return f41832a;
    }

    static boolean c(RpcProtocolVersions.Version version, RpcProtocolVersions.Version version2) {
        if (version.getMajor() <= version2.getMajor()) {
            return version.getMajor() == version2.getMajor() && version.getMinor() >= version2.getMinor();
        }
        return true;
    }
}
