package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class x {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    private static Descriptors.FileDescriptor C = Descriptors.FileDescriptor.s(new String[]{"\n'envoy/config/core/v3/grpc_service.proto\u0012\u0014envoy.config.core.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"ì\u001b\n\u000bGrpcService\u0012A\n\nenvoy_grpc\u0018\u0001 \u0001(\u000b2+.envoy.config.core.v3.GrpcService.EnvoyGrpcH\u0000\u0012C\n\u000bgoogle_grpc\u0018\u0002 \u0001(\u000b2,.envoy.config.core.v3.GrpcService.GoogleGrpcH\u0000\u0012*\n\u0007timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012;\n\u0010initial_metadata\u0018\u0005 \u0003(\u000b2!.envoy.config.core.v3.HeaderValue\u001a\u0080\u0001\n\tEnvoyGrpc\u0012\u001d\n\fcluster_name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012$\n\tauthority\u0018\u0002 \u0001(\tB\u0011úB\u000er\f\u0010\u0000(\u0080\u0080\u0001À\u0001\u0002È\u0001\u0000:.\u009aÅ\u0088\u001e)\n'envoy.api.v2.core.GrpcService.EnvoyGrpc\u001a£\u0018\n\nGoogleGrpc\u0012\u001b\n\ntarget_uri\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\\\n\u0013channel_credentials\u0018\u0002 \u0001(\u000b2?.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials\u0012V\n\u0010call_credentials\u0018\u0003 \u0003(\u000b2<.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials\u0012\u001c\n\u000bstat_prefix\u0018\u0004 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012 \n\u0018credentials_factory_name\u0018\u0005 \u0001(\t\u0012'\n\u0006config\u0018\u0006 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012C\n\u001dper_stream_buffer_limit_bytes\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012N\n\fchannel_args\u0018\b \u0001(\u000b28.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs\u001aû\u0001\n\u000eSslCredentials\u00124\n\nroot_certs\u0018\u0001 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012=\n\u000bprivate_key\u0018\u0002 \u0001(\u000b2 .envoy.config.core.v3.DataSourceB\u0006¸·\u008b¤\u0002\u0001\u00124\n\ncert_chain\u0018\u0003 \u0001(\u000b2 .envoy.config.core.v3.DataSource:>\u009aÅ\u0088\u001e9\n7envoy.api.v2.core.GrpcService.GoogleGrpc.SslCredentials\u001a`\n\u0016GoogleLocalCredentials:F\u009aÅ\u0088\u001eA\n?envoy.api.v2.core.GrpcService.GoogleGrpc.GoogleLocalCredentials\u001aá\u0002\n\u0012ChannelCredentials\u0012V\n\u000fssl_credentials\u0018\u0001 \u0001(\u000b2;.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentialsH\u0000\u00120\n\u000egoogle_default\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012`\n\u0011local_credentials\u0018\u0003 \u0001(\u000b2C.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentialsH\u0000:B\u009aÅ\u0088\u001e=\n;envoy.api.v2.core.GrpcService.GoogleGrpc.ChannelCredentialsB\u001b\n\u0014credential_specifier\u0012\u0003øB\u0001\u001a±\f\n\u000fCallCredentials\u0012\u0016\n\faccess_token\u0018\u0001 \u0001(\tH\u0000\u00127\n\u0015google_compute_engine\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012\u001e\n\u0014google_refresh_token\u0018\u0003 \u0001(\tH\u0000\u0012\u0085\u0001\n\u001aservice_account_jwt_access\u0018\u0004 \u0001(\u000b2_.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentialsH\u0000\u0012g\n\ngoogle_iam\u0018\u0005 \u0001(\u000b2Q.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentialsH\u0000\u0012q\n\u000bfrom_plugin\u0018\u0006 \u0001(\u000b2Z.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginH\u0000\u0012^\n\u000bsts_service\u0018\u0007 \u0001(\u000b2G.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsServiceH\u0000\u001aº\u0001\n\"ServiceAccountJWTAccessCredentials\u0012\u0010\n\bjson_key\u0018\u0001 \u0001(\t\u0012\u001e\n\u0016token_lifetime_seconds\u0018\u0002 \u0001(\u0004:b\u009aÅ\u0088\u001e]\n[envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials\u001a¥\u0001\n\u0014GoogleIAMCredentials\u0012\u001b\n\u0013authorization_token\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012authority_selector\u0018\u0002 \u0001(\t:T\u009aÅ\u0088\u001eO\nMenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials\u001a×\u0001\n\u001dMetadataCredentialsFromPlugin\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:]\u009aÅ\u0088\u001eX\nVenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006config\u001aË\u0002\n\nStsService\u0012\"\n\u001atoken_exchange_service_uri\u0018\u0001 \u0001(\t\u0012\u0010\n\bresource\u0018\u0002 \u0001(\t\u0012\u0010\n\baudience\u0018\u0003 \u0001(\t\u0012\r\n\u0005scope\u0018\u0004 \u0001(\t\u0012\u001c\n\u0014requested_token_type\u0018\u0005 \u0001(\t\u0012#\n\u0012subject_token_path\u0018\u0006 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012#\n\u0012subject_token_type\u0018\u0007 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u0018\n\u0010actor_token_path\u0018\b \u0001(\t\u0012\u0018\n\u0010actor_token_type\u0018\t \u0001(\t:J\u009aÅ\u0088\u001eE\nCenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.StsService:?\u009aÅ\u0088\u001e:\n8envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentialsB\u001b\n\u0014credential_specifier\u0012\u0003øB\u0001\u001a\u009a\u0002\n\u000bChannelArgs\u0012P\n\u0004args\u0018\u0001 \u0003(\u000b2B.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ArgsEntry\u001aL\n\u0005Value\u0012\u0016\n\fstring_value\u0018\u0001 \u0001(\tH\u0000\u0012\u0013\n\tint_value\u0018\u0002 \u0001(\u0003H\u0000B\u0016\n\u000fvalue_specifier\u0012\u0003øB\u0001\u001ak\n\tArgsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012M\n\u0005value\u0018\u0002 \u0001(\u000b2>.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value:\u00028\u0001:/\u009aÅ\u0088\u001e*\n(envoy.api.v2.core.GrpcService.GoogleGrpc:$\u009aÅ\u0088\u001e\u001f\n\u001denvoy.api.v2.core.GrpcServiceB\u0017\n\u0010target_specifier\u0012\u0003øB\u0001J\u0004\b\u0004\u0010\u0005B@\n\"io.envoyproxy.envoy.config.core.v3B\u0010GrpcServiceProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), com.google.protobuf.g.a(), com.google.protobuf.w.a(), com.google.protobuf.z.a(), v2.a(), p3.a(), io.grpc.xds.shaded.udpa.annotations.a.a(), Status.c(), Versioning.c(), Validate.U()});

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48295a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48296b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48297c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48298d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48299e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48300f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48301g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48302h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48303i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48304j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48305k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48306l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48307m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48308n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f48309o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f48310p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f48311q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f48312r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f48313s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f48314t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f48315u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f48316v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f48317w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f48318x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f48319y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f48320z;

    static {
        Descriptors.b bVar = a().m().get(0);
        f48295a = bVar;
        f48296b = new GeneratedMessageV3.e(bVar, new String[]{"EnvoyGrpc", "GoogleGrpc", "Timeout", "InitialMetadata", "TargetSpecifier"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f48297c = bVar2;
        f48298d = new GeneratedMessageV3.e(bVar2, new String[]{"ClusterName", "Authority"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f48299e = bVar3;
        f48300f = new GeneratedMessageV3.e(bVar3, new String[]{"TargetUri", "ChannelCredentials", "CallCredentials", "StatPrefix", "CredentialsFactoryName", "Config", "PerStreamBufferLimitBytes", "ChannelArgs"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f48301g = bVar4;
        f48302h = new GeneratedMessageV3.e(bVar4, new String[]{"RootCerts", "PrivateKey", "CertChain"});
        Descriptors.b bVar5 = bVar3.o().get(1);
        f48303i = bVar5;
        f48304j = new GeneratedMessageV3.e(bVar5, new String[0]);
        Descriptors.b bVar6 = bVar3.o().get(2);
        f48305k = bVar6;
        f48306l = new GeneratedMessageV3.e(bVar6, new String[]{"SslCredentials", "GoogleDefault", "LocalCredentials", "CredentialSpecifier"});
        Descriptors.b bVar7 = bVar3.o().get(3);
        f48307m = bVar7;
        f48308n = new GeneratedMessageV3.e(bVar7, new String[]{"AccessToken", "GoogleComputeEngine", "GoogleRefreshToken", "ServiceAccountJwtAccess", "GoogleIam", "FromPlugin", "StsService", "CredentialSpecifier"});
        Descriptors.b bVar8 = bVar7.o().get(0);
        f48309o = bVar8;
        f48310p = new GeneratedMessageV3.e(bVar8, new String[]{"JsonKey", "TokenLifetimeSeconds"});
        Descriptors.b bVar9 = bVar7.o().get(1);
        f48311q = bVar9;
        f48312r = new GeneratedMessageV3.e(bVar9, new String[]{"AuthorizationToken", "AuthoritySelector"});
        Descriptors.b bVar10 = bVar7.o().get(2);
        f48313s = bVar10;
        f48314t = new GeneratedMessageV3.e(bVar10, new String[]{"Name", "TypedConfig", "ConfigType"});
        Descriptors.b bVar11 = bVar7.o().get(3);
        f48315u = bVar11;
        f48316v = new GeneratedMessageV3.e(bVar11, new String[]{"TokenExchangeServiceUri", "Resource", "Audience", "Scope", "RequestedTokenType", "SubjectTokenPath", "SubjectTokenType", "ActorTokenPath", "ActorTokenType"});
        Descriptors.b bVar12 = bVar3.o().get(4);
        f48317w = bVar12;
        f48318x = new GeneratedMessageV3.e(bVar12, new String[]{"Args"});
        Descriptors.b bVar13 = bVar12.o().get(0);
        f48319y = bVar13;
        f48320z = new GeneratedMessageV3.e(bVar13, new String[]{"StringValue", "IntValue", "ValueSpecifier"});
        Descriptors.b bVar14 = bVar12.o().get(1);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Key", "Value"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(io.grpc.xds.shaded.udpa.annotations.a.f50850a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(C, k10);
        g.a();
        com.google.protobuf.g.a();
        com.google.protobuf.w.a();
        com.google.protobuf.z.a();
        v2.a();
        p3.a();
        io.grpc.xds.shaded.udpa.annotations.a.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return C;
    }
}
