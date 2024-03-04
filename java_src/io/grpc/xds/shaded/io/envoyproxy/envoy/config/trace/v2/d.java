package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49584a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49585b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49586c = Descriptors.FileDescriptor.s(new String[]{"\n%envoy/config/trace/v2/lightstep.proto\u0012\u0015envoy.config.trace.v2\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u0083\u0002\n\u000fLightstepConfig\u0012\"\n\u0011collector_cluster\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\"\n\u0011access_token_file\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012`\n\u0011propagation_modes\u0018\u0003 \u0003(\u000e26.envoy.config.trace.v2.LightstepConfig.PropagationModeB\rúB\n\u0092\u0001\u0007\"\u0005\u0082\u0001\u0002\u0010\u0001\"F\n\u000fPropagationMode\u0012\t\n\u0005ENVOY\u0010\u0000\u0012\r\n\tLIGHTSTEP\u0010\u0001\u0012\u0006\n\u0002B3\u0010\u0002\u0012\u0011\n\rTRACE_CONTEXT\u0010\u0003B?\n#io.envoyproxy.envoy.config.trace.v2B\u000eLightstepProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49584a = bVar;
        f49585b = new GeneratedMessageV3.e(bVar, new String[]{"CollectorCluster", "AccessTokenFile", "PropagationModes"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49586c, k10);
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49586c;
    }
}
