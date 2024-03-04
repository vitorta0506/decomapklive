package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.ApplicationProtocolConfig;
import java.util.List;
@Deprecated
/* loaded from: classes5.dex */
public final class n0 implements f0 {

    /* renamed from: a  reason: collision with root package name */
    private final ApplicationProtocolConfig f44709a;

    public n0(ApplicationProtocolConfig applicationProtocolConfig) {
        this.f44709a = (ApplicationProtocolConfig) io.grpc.netty.shaded.io.netty.util.internal.s.h(applicationProtocolConfig, "config");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.f0
    public ApplicationProtocolConfig.SelectorFailureBehavior a() {
        return this.f44709a.c();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.b
    public List<String> b() {
        return this.f44709a.d();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.f0
    public ApplicationProtocolConfig.SelectedListenerFailureBehavior d() {
        return this.f44709a.b();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.f0
    public ApplicationProtocolConfig.Protocol protocol() {
        return this.f44709a.a();
    }
}
