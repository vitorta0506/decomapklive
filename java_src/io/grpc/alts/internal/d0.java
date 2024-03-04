package io.grpc.alts.internal;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes5.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f41851a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f41852b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f41853c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f41854d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f41855e = Descriptors.FileDescriptor.s(new String[]{"\n(grpc/gcp/transport_security_common.proto\u0012\bgrpc.gcp\"¾\u0001\n\u0013RpcProtocolVersions\u0012>\n\u000fmax_rpc_version\u0018\u0001 \u0001(\u000b2%.grpc.gcp.RpcProtocolVersions.Version\u0012>\n\u000fmin_rpc_version\u0018\u0002 \u0001(\u000b2%.grpc.gcp.RpcProtocolVersions.Version\u001a'\n\u0007Version\u0012\r\n\u0005major\u0018\u0001 \u0001(\r\u0012\r\n\u0005minor\u0018\u0002 \u0001(\r*Q\n\rSecurityLevel\u0012\u0011\n\rSECURITY_NONE\u0010\u0000\u0012\u0012\n\u000eINTEGRITY_ONLY\u0010\u0001\u0012\u0019\n\u0015INTEGRITY_AND_PRIVACY\u0010\u0002Bx\n\u0015io.grpc.alts.internalB\u001cTransportSecurityCommonProtoP\u0001Z?google.golang.org/grpc/credentials/alts/internal/proto/grpc_gcpb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f41851a = bVar;
        f41852b = new GeneratedMessageV3.e(bVar, new String[]{"MaxRpcVersion", "MinRpcVersion"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f41853c = bVar2;
        f41854d = new GeneratedMessageV3.e(bVar2, new String[]{"Major", "Minor"});
    }

    public static Descriptors.FileDescriptor a() {
        return f41855e;
    }
}
