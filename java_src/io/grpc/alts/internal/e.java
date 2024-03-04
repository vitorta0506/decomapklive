package io.grpc.alts.internal;

import com.google.common.collect.ImmutableList;
/* loaded from: classes5.dex */
public final class e extends h {

    /* renamed from: b  reason: collision with root package name */
    private final String f41856b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableList<String> f41857c;

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private String f41858a;

        /* renamed from: b  reason: collision with root package name */
        private RpcProtocolVersions f41859b;

        /* renamed from: c  reason: collision with root package name */
        private ImmutableList<String> f41860c = ImmutableList.of();

        public e d() {
            return new e(this);
        }

        public b e(RpcProtocolVersions rpcProtocolVersions) {
            this.f41859b = rpcProtocolVersions;
            return this;
        }

        public b f(String str) {
            this.f41858a = str;
            return this;
        }

        public b g(ImmutableList<String> immutableList) {
            this.f41860c = immutableList;
            return this;
        }
    }

    public String b() {
        return this.f41856b;
    }

    public ImmutableList<String> c() {
        return this.f41857c;
    }

    private e(b bVar) {
        super(bVar.f41859b);
        this.f41856b = bVar.f41858a;
        this.f41857c = bVar.f41860c;
    }
}
