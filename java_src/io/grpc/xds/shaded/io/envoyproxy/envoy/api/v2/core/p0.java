package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class p0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46751a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46752b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46753c = Descriptors.FileDescriptor.s(new String[]{"\n%envoy/api/v2/core/socket_option.proto\u0012\u0011envoy.api.v2.core\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u0086\u0002\n\fSocketOption\u0012\u0013\n\u000bdescription\u0018\u0001 \u0001(\t\u0012\r\n\u0005level\u0018\u0002 \u0001(\u0003\u0012\f\n\u0004name\u0018\u0003 \u0001(\u0003\u0012\u0013\n\tint_value\u0018\u0004 \u0001(\u0003H\u0000\u0012\u0013\n\tbuf_value\u0018\u0005 \u0001(\fH\u0000\u0012D\n\u0005state\u0018\u0006 \u0001(\u000e2+.envoy.api.v2.core.SocketOption.SocketStateB\búB\u0005\u0082\u0001\u0002\u0010\u0001\"F\n\u000bSocketState\u0012\u0011\n\rSTATE_PREBIND\u0010\u0000\u0012\u000f\n\u000bSTATE_BOUND\u0010\u0001\u0012\u0013\n\u000fSTATE_LISTENING\u0010\u0002B\f\n\u0005value\u0012\u0003øB\u0001BZ\n\u001fio.envoyproxy.envoy.api.v2.coreB\u0011SocketOptionProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46751a = bVar;
        f46752b = new GeneratedMessageV3.e(bVar, new String[]{"Description", "Level", "Name", "IntValue", "BufValue", "State", "Value"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46753c, k10);
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46753c;
    }
}
