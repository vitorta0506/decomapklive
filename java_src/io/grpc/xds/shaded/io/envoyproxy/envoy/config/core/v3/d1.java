package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class d1 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48201a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48202b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48203c = Descriptors.FileDescriptor.s(new String[]{"\n(envoy/config/core/v3/socket_option.proto\u0012\u0014envoy.config.core.v3\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"°\u0002\n\fSocketOption\u0012\u0013\n\u000bdescription\u0018\u0001 \u0001(\t\u0012\r\n\u0005level\u0018\u0002 \u0001(\u0003\u0012\f\n\u0004name\u0018\u0003 \u0001(\u0003\u0012\u0013\n\tint_value\u0018\u0004 \u0001(\u0003H\u0000\u0012\u0013\n\tbuf_value\u0018\u0005 \u0001(\fH\u0000\u0012G\n\u0005state\u0018\u0006 \u0001(\u000e2..envoy.config.core.v3.SocketOption.SocketStateB\búB\u0005\u0082\u0001\u0002\u0010\u0001\"F\n\u000bSocketState\u0012\u0011\n\rSTATE_PREBIND\u0010\u0000\u0012\u000f\n\u000bSTATE_BOUND\u0010\u0001\u0012\u0013\n\u000fSTATE_LISTENING\u0010\u0002:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.core.SocketOptionB\f\n\u0005value\u0012\u0003øB\u0001BA\n\"io.envoyproxy.envoy.config.core.v3B\u0011SocketOptionProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48201a = bVar;
        f48202b = new GeneratedMessageV3.e(bVar, new String[]{"Description", "Level", "Name", "IntValue", "BufValue", "State", "Value"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48203c, k10);
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48203c;
    }
}
