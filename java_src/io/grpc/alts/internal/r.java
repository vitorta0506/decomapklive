package io.grpc.alts.internal;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes5.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f41946a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f41947b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f41948c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f41949d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f41950e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f41951f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f41952g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f41953h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f41954i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f41955j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f41956k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f41957l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f41958m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f41959n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f41960o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f41961p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f41962q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f41963r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f41964s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f41965t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f41966u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f41967v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f41968w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f41969x;

    /* renamed from: y  reason: collision with root package name */
    private static Descriptors.FileDescriptor f41970y = Descriptors.FileDescriptor.s(new String[]{"\n\u0019grpc/gcp/handshaker.proto\u0012\bgrpc.gcp\u001a(grpc/gcp/transport_security_common.proto\"Y\n\bEndpoint\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\t\u0012\f\n\u0004port\u0018\u0002 \u0001(\u0005\u0012+\n\bprotocol\u0018\u0003 \u0001(\u000e2\u0019.grpc.gcp.NetworkProtocol\"¶\u0001\n\bIdentity\u0012\u0019\n\u000fservice_account\u0018\u0001 \u0001(\tH\u0000\u0012\u0012\n\bhostname\u0018\u0002 \u0001(\tH\u0000\u00126\n\nattributes\u0018\u0003 \u0003(\u000b2\".grpc.gcp.Identity.AttributesEntry\u001a1\n\u000fAttributesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001B\u0010\n\u000eidentity_oneof\"ª\u0003\n\u0017StartClientHandshakeReq\u0012@\n\u001bhandshake_security_protocol\u0018\u0001 \u0001(\u000e2\u001b.grpc.gcp.HandshakeProtocol\u0012\u001d\n\u0015application_protocols\u0018\u0002 \u0003(\t\u0012\u0018\n\u0010record_protocols\u0018\u0003 \u0003(\t\u0012-\n\u0011target_identities\u0018\u0004 \u0003(\u000b2\u0012.grpc.gcp.Identity\u0012*\n\u000elocal_identity\u0018\u0005 \u0001(\u000b2\u0012.grpc.gcp.Identity\u0012*\n\u000elocal_endpoint\u0018\u0006 \u0001(\u000b2\u0012.grpc.gcp.Endpoint\u0012+\n\u000fremote_endpoint\u0018\u0007 \u0001(\u000b2\u0012.grpc.gcp.Endpoint\u0012\u0013\n\u000btarget_name\u0018\b \u0001(\t\u00123\n\frpc_versions\u0018\t \u0001(\u000b2\u001d.grpc.gcp.RpcProtocolVersions\u0012\u0016\n\u000emax_frame_size\u0018\n \u0001(\r\"c\n\u0019ServerHandshakeParameters\u0012\u0018\n\u0010record_protocols\u0018\u0001 \u0003(\t\u0012,\n\u0010local_identities\u0018\u0002 \u0003(\u000b2\u0012.grpc.gcp.Identity\"«\u0003\n\u0017StartServerHandshakeReq\u0012\u001d\n\u0015application_protocols\u0018\u0001 \u0003(\t\u0012X\n\u0014handshake_parameters\u0018\u0002 \u0003(\u000b2:.grpc.gcp.StartServerHandshakeReq.HandshakeParametersEntry\u0012\u0010\n\bin_bytes\u0018\u0003 \u0001(\f\u0012*\n\u000elocal_endpoint\u0018\u0004 \u0001(\u000b2\u0012.grpc.gcp.Endpoint\u0012+\n\u000fremote_endpoint\u0018\u0005 \u0001(\u000b2\u0012.grpc.gcp.Endpoint\u00123\n\frpc_versions\u0018\u0006 \u0001(\u000b2\u001d.grpc.gcp.RpcProtocolVersions\u0012\u0016\n\u000emax_frame_size\u0018\u0007 \u0001(\r\u001a_\n\u0018HandshakeParametersEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0005\u00122\n\u0005value\u0018\u0002 \u0001(\u000b2#.grpc.gcp.ServerHandshakeParameters:\u00028\u0001\"+\n\u0017NextHandshakeMessageReq\u0012\u0010\n\bin_bytes\u0018\u0001 \u0001(\f\"Å\u0001\n\rHandshakerReq\u00129\n\fclient_start\u0018\u0001 \u0001(\u000b2!.grpc.gcp.StartClientHandshakeReqH\u0000\u00129\n\fserver_start\u0018\u0002 \u0001(\u000b2!.grpc.gcp.StartServerHandshakeReqH\u0000\u00121\n\u0004next\u0018\u0003 \u0001(\u000b2!.grpc.gcp.NextHandshakeMessageReqH\u0000B\u000b\n\treq_oneof\"\u009f\u0002\n\u0010HandshakerResult\u0012\u001c\n\u0014application_protocol\u0018\u0001 \u0001(\t\u0012\u0017\n\u000frecord_protocol\u0018\u0002 \u0001(\t\u0012\u0010\n\bkey_data\u0018\u0003 \u0001(\f\u0012)\n\rpeer_identity\u0018\u0004 \u0001(\u000b2\u0012.grpc.gcp.Identity\u0012*\n\u000elocal_identity\u0018\u0005 \u0001(\u000b2\u0012.grpc.gcp.Identity\u0012\u0019\n\u0011keep_channel_open\u0018\u0006 \u0001(\b\u00128\n\u0011peer_rpc_versions\u0018\u0007 \u0001(\u000b2\u001d.grpc.gcp.RpcProtocolVersions\u0012\u0016\n\u000emax_frame_size\u0018\b \u0001(\r\"1\n\u0010HandshakerStatus\u0012\f\n\u0004code\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007details\u0018\u0002 \u0001(\t\"\u0094\u0001\n\u000eHandshakerResp\u0012\u0012\n\nout_frames\u0018\u0001 \u0001(\f\u0012\u0016\n\u000ebytes_consumed\u0018\u0002 \u0001(\r\u0012*\n\u0006result\u0018\u0003 \u0001(\u000b2\u001a.grpc.gcp.HandshakerResult\u0012*\n\u0006status\u0018\u0004 \u0001(\u000b2\u001a.grpc.gcp.HandshakerStatus*J\n\u0011HandshakeProtocol\u0012\"\n\u001eHANDSHAKE_PROTOCOL_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003TLS\u0010\u0001\u0012\b\n\u0004ALTS\u0010\u0002*E\n\u000fNetworkProtocol\u0012 \n\u001cNETWORK_PROTOCOL_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003TCP\u0010\u0001\u0012\u0007\n\u0003UDP\u0010\u00022[\n\u0011HandshakerService\u0012F\n\u000bDoHandshake\u0012\u0017.grpc.gcp.HandshakerReq\u001a\u0018.grpc.gcp.HandshakerResp\"\u0000(\u00010\u0001Bk\n\u0015io.grpc.alts.internalB\u000fHandshakerProtoP\u0001Z?google.golang.org/grpc/credentials/alts/internal/proto/grpc_gcpb\u0006proto3"}, new Descriptors.FileDescriptor[]{d0.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f41946a = bVar;
        f41947b = new GeneratedMessageV3.e(bVar, new String[]{"IpAddress", "Port", "Protocol"});
        Descriptors.b bVar2 = a().m().get(1);
        f41948c = bVar2;
        f41949d = new GeneratedMessageV3.e(bVar2, new String[]{"ServiceAccount", "Hostname", "Attributes", "IdentityOneof"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f41950e = bVar3;
        f41951f = new GeneratedMessageV3.e(bVar3, new String[]{"Key", "Value"});
        Descriptors.b bVar4 = a().m().get(2);
        f41952g = bVar4;
        f41953h = new GeneratedMessageV3.e(bVar4, new String[]{"HandshakeSecurityProtocol", "ApplicationProtocols", "RecordProtocols", "TargetIdentities", "LocalIdentity", "LocalEndpoint", "RemoteEndpoint", "TargetName", "RpcVersions", "MaxFrameSize"});
        Descriptors.b bVar5 = a().m().get(3);
        f41954i = bVar5;
        f41955j = new GeneratedMessageV3.e(bVar5, new String[]{"RecordProtocols", "LocalIdentities"});
        Descriptors.b bVar6 = a().m().get(4);
        f41956k = bVar6;
        f41957l = new GeneratedMessageV3.e(bVar6, new String[]{"ApplicationProtocols", "HandshakeParameters", "InBytes", "LocalEndpoint", "RemoteEndpoint", "RpcVersions", "MaxFrameSize"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f41958m = bVar7;
        f41959n = new GeneratedMessageV3.e(bVar7, new String[]{"Key", "Value"});
        Descriptors.b bVar8 = a().m().get(5);
        f41960o = bVar8;
        f41961p = new GeneratedMessageV3.e(bVar8, new String[]{"InBytes"});
        Descriptors.b bVar9 = a().m().get(6);
        f41962q = bVar9;
        f41963r = new GeneratedMessageV3.e(bVar9, new String[]{"ClientStart", "ServerStart", "Next", "ReqOneof"});
        Descriptors.b bVar10 = a().m().get(7);
        f41964s = bVar10;
        f41965t = new GeneratedMessageV3.e(bVar10, new String[]{"ApplicationProtocol", "RecordProtocol", "KeyData", "PeerIdentity", "LocalIdentity", "KeepChannelOpen", "PeerRpcVersions", "MaxFrameSize"});
        Descriptors.b bVar11 = a().m().get(8);
        f41966u = bVar11;
        f41967v = new GeneratedMessageV3.e(bVar11, new String[]{"Code", "Details"});
        Descriptors.b bVar12 = a().m().get(9);
        f41968w = bVar12;
        f41969x = new GeneratedMessageV3.e(bVar12, new String[]{"OutFrames", "BytesConsumed", "Result", "Status"});
        d0.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f41970y;
    }
}
