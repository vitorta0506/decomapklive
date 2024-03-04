package io.grpc.alts.internal;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f41868a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f41869b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f41870c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f41871d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f41872e = Descriptors.FileDescriptor.s(new String[]{"\n\u001agrpc/gcp/altscontext.proto\u0012\bgrpc.gcp\u001a(grpc/gcp/transport_security_common.proto\"ç\u0002\n\u000bAltsContext\u0012\u001c\n\u0014application_protocol\u0018\u0001 \u0001(\t\u0012\u0017\n\u000frecord_protocol\u0018\u0002 \u0001(\t\u0012/\n\u000esecurity_level\u0018\u0003 \u0001(\u000e2\u0017.grpc.gcp.SecurityLevel\u0012\u001c\n\u0014peer_service_account\u0018\u0004 \u0001(\t\u0012\u001d\n\u0015local_service_account\u0018\u0005 \u0001(\t\u00128\n\u0011peer_rpc_versions\u0018\u0006 \u0001(\u000b2\u001d.grpc.gcp.RpcProtocolVersions\u0012B\n\u000fpeer_attributes\u0018\u0007 \u0003(\u000b2).grpc.gcp.AltsContext.PeerAttributesEntry\u001a5\n\u0013PeerAttributesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001Bl\n\u0015io.grpc.alts.internalB\u0010AltsContextProtoP\u0001Z?google.golang.org/grpc/credentials/alts/internal/proto/grpc_gcpb\u0006proto3"}, new Descriptors.FileDescriptor[]{d0.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f41868a = bVar;
        f41869b = new GeneratedMessageV3.e(bVar, new String[]{"ApplicationProtocol", "RecordProtocol", "SecurityLevel", "PeerServiceAccount", "LocalServiceAccount", "PeerRpcVersions", "PeerAttributes"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f41870c = bVar2;
        f41871d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
        d0.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f41872e;
    }
}
