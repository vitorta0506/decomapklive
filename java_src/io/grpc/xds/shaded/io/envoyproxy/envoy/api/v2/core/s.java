package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46754a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46755b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46756c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46757d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46758e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46759f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46760g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46761h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46762i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46763j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f46764k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f46765l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f46766m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f46767n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f46768o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f46769p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f46770q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f46771r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f46772s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f46773t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f46774u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f46775v;

    /* renamed from: w  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46776w = Descriptors.FileDescriptor.s(new String[]{"\n$envoy/api/v2/core/grpc_service.proto\u0012\u0011envoy.api.v2.core\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001eudpa/annotations/migrate.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u008f\u0012\n\u000bGrpcService\u0012>\n\nenvoy_grpc\u0018\u0001 \u0001(\u000b2(.envoy.api.v2.core.GrpcService.EnvoyGrpcH\u0000\u0012@\n\u000bgoogle_grpc\u0018\u0002 \u0001(\u000b2).envoy.api.v2.core.GrpcService.GoogleGrpcH\u0000\u0012*\n\u0007timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u00128\n\u0010initial_metadata\u0018\u0005 \u0003(\u000b2\u001e.envoy.api.v2.core.HeaderValue\u001a*\n\tEnvoyGrpc\u0012\u001d\n\fcluster_name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u001aÌ\u000f\n\nGoogleGrpc\u0012\u001b\n\ntarget_uri\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012Y\n\u0013channel_credentials\u0018\u0002 \u0001(\u000b2<.envoy.api.v2.core.GrpcService.GoogleGrpc.ChannelCredentials\u0012S\n\u0010call_credentials\u0018\u0003 \u0003(\u000b29.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials\u0012\u001c\n\u000bstat_prefix\u0018\u0004 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012 \n\u0018credentials_factory_name\u0018\u0005 \u0001(\t\u0012'\n\u0006config\u0018\u0006 \u0001(\u000b2\u0017.google.protobuf.Struct\u001a²\u0001\n\u000eSslCredentials\u00121\n\nroot_certs\u0018\u0001 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012:\n\u000bprivate_key\u0018\u0002 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSourceB\u0006¸·\u008b¤\u0002\u0001\u00121\n\ncert_chain\u0018\u0003 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u001a\u0018\n\u0016GoogleLocalCredentials\u001a\u0097\u0002\n\u0012ChannelCredentials\u0012S\n\u000fssl_credentials\u0018\u0001 \u0001(\u000b28.envoy.api.v2.core.GrpcService.GoogleGrpc.SslCredentialsH\u0000\u00120\n\u000egoogle_default\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012]\n\u0011local_credentials\u0018\u0003 \u0001(\u000b2@.envoy.api.v2.core.GrpcService.GoogleGrpc.GoogleLocalCredentialsH\u0000B\u001b\n\u0014credential_specifier\u0012\u0003øB\u0001\u001a\u009e\t\n\u000fCallCredentials\u0012\u0016\n\faccess_token\u0018\u0001 \u0001(\tH\u0000\u00127\n\u0015google_compute_engine\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.EmptyH\u0000\u0012\u001e\n\u0014google_refresh_token\u0018\u0003 \u0001(\tH\u0000\u0012\u0082\u0001\n\u001aservice_account_jwt_access\u0018\u0004 \u0001(\u000b2\\.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentialsH\u0000\u0012d\n\ngoogle_iam\u0018\u0005 \u0001(\u000b2N.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentialsH\u0000\u0012n\n\u000bfrom_plugin\u0018\u0006 \u0001(\u000b2W.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginH\u0000\u0012[\n\u000bsts_service\u0018\u0007 \u0001(\u000b2D.envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.StsServiceH\u0000\u001aV\n\"ServiceAccountJWTAccessCredentials\u0012\u0010\n\bjson_key\u0018\u0001 \u0001(\t\u0012\u001e\n\u0016token_lifetime_seconds\u0018\u0002 \u0001(\u0004\u001aO\n\u0014GoogleIAMCredentials\u0012\u001b\n\u0013authorization_token\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012authority_selector\u0018\u0002 \u0001(\t\u001a\u0099\u0001\n\u001dMetadataCredentialsFromPlugin\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\u001aÿ\u0001\n\nStsService\u0012\"\n\u001atoken_exchange_service_uri\u0018\u0001 \u0001(\t\u0012\u0010\n\bresource\u0018\u0002 \u0001(\t\u0012\u0010\n\baudience\u0018\u0003 \u0001(\t\u0012\r\n\u0005scope\u0018\u0004 \u0001(\t\u0012\u001c\n\u0014requested_token_type\u0018\u0005 \u0001(\t\u0012#\n\u0012subject_token_path\u0018\u0006 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012#\n\u0012subject_token_type\u0018\u0007 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u0018\n\u0010actor_token_path\u0018\b \u0001(\t\u0012\u0018\n\u0010actor_token_type\u0018\t \u0001(\tB\u001b\n\u0014credential_specifier\u0012\u0003øB\u0001B\u0017\n\u0010target_specifier\u0012\u0003øB\u0001J\u0004\b\u0004\u0010\u0005BY\n\u001fio.envoyproxy.envoy.api.v2.coreB\u0010GrpcServiceProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), com.google.protobuf.g.a(), com.google.protobuf.w.a(), com.google.protobuf.z.a(), v2.a(), Migrate.g(), io.grpc.xds.shaded.udpa.annotations.a.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46754a = bVar;
        f46755b = new GeneratedMessageV3.e(bVar, new String[]{"EnvoyGrpc", "GoogleGrpc", "Timeout", "InitialMetadata", "TargetSpecifier"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f46756c = bVar2;
        f46757d = new GeneratedMessageV3.e(bVar2, new String[]{"ClusterName"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f46758e = bVar3;
        f46759f = new GeneratedMessageV3.e(bVar3, new String[]{"TargetUri", "ChannelCredentials", "CallCredentials", "StatPrefix", "CredentialsFactoryName", "Config"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f46760g = bVar4;
        f46761h = new GeneratedMessageV3.e(bVar4, new String[]{"RootCerts", "PrivateKey", "CertChain"});
        Descriptors.b bVar5 = bVar3.o().get(1);
        f46762i = bVar5;
        f46763j = new GeneratedMessageV3.e(bVar5, new String[0]);
        Descriptors.b bVar6 = bVar3.o().get(2);
        f46764k = bVar6;
        f46765l = new GeneratedMessageV3.e(bVar6, new String[]{"SslCredentials", "GoogleDefault", "LocalCredentials", "CredentialSpecifier"});
        Descriptors.b bVar7 = bVar3.o().get(3);
        f46766m = bVar7;
        f46767n = new GeneratedMessageV3.e(bVar7, new String[]{"AccessToken", "GoogleComputeEngine", "GoogleRefreshToken", "ServiceAccountJwtAccess", "GoogleIam", "FromPlugin", "StsService", "CredentialSpecifier"});
        Descriptors.b bVar8 = bVar7.o().get(0);
        f46768o = bVar8;
        f46769p = new GeneratedMessageV3.e(bVar8, new String[]{"JsonKey", "TokenLifetimeSeconds"});
        Descriptors.b bVar9 = bVar7.o().get(1);
        f46770q = bVar9;
        f46771r = new GeneratedMessageV3.e(bVar9, new String[]{"AuthorizationToken", "AuthoritySelector"});
        Descriptors.b bVar10 = bVar7.o().get(2);
        f46772s = bVar10;
        f46773t = new GeneratedMessageV3.e(bVar10, new String[]{"Name", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar11 = bVar7.o().get(3);
        f46774u = bVar11;
        f46775v = new GeneratedMessageV3.e(bVar11, new String[]{"TokenExchangeServiceUri", "Resource", "Audience", "Scope", "RequestedTokenType", "SubjectTokenPath", "SubjectTokenType", "ActorTokenPath", "ActorTokenType"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(io.grpc.xds.shaded.udpa.annotations.a.f50850a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46776w, k10);
        g.a();
        com.google.protobuf.g.a();
        com.google.protobuf.w.a();
        com.google.protobuf.z.a();
        v2.a();
        Migrate.g();
        io.grpc.xds.shaded.udpa.annotations.a.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46776w;
    }
}
