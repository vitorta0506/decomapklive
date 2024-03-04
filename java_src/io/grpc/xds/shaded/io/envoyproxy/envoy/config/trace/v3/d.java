package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49651a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49652b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49653c = Descriptors.FileDescriptor.s(new String[]{"\n%envoy/config/trace/v3/lightstep.proto\u0012\u0015envoy.config.trace.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"í\u0002\n\u000fLightstepConfig\u0012\"\n\u0011collector_cluster\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012&\n\u0011access_token_file\u0018\u0002 \u0001(\tB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u00126\n\faccess_token\u0018\u0004 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012`\n\u0011propagation_modes\u0018\u0003 \u0003(\u000e26.envoy.config.trace.v3.LightstepConfig.PropagationModeB\rúB\n\u0092\u0001\u0007\"\u0005\u0082\u0001\u0002\u0010\u0001\"F\n\u000fPropagationMode\u0012\t\n\u0005ENVOY\u0010\u0000\u0012\r\n\tLIGHTSTEP\u0010\u0001\u0012\u0006\n\u0002B3\u0010\u0002\u0012\u0011\n\rTRACE_CONTEXT\u0010\u0003:,\u009aÅ\u0088\u001e'\n%envoy.config.trace.v2.LightstepConfigBq\n#io.envoyproxy.envoy.config.trace.v3B\u000eLightstepProtoP\u0001ò\u0098þ\u008f\u0005,\u0012*envoy.extensions.tracers.lightstep.v4alphaº\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49651a = bVar;
        f49652b = new GeneratedMessageV3.e(bVar, new String[]{"CollectorCluster", "AccessTokenFile", "AccessToken", "PropagationModes"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49653c, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49653c;
    }
}
