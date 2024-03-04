package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.ApplicationProtocolConfig;
@Deprecated
/* loaded from: classes5.dex */
public interface f0 extends b {
    ApplicationProtocolConfig.SelectorFailureBehavior a();

    ApplicationProtocolConfig.SelectedListenerFailureBehavior d();

    ApplicationProtocolConfig.Protocol protocol();
}
