package io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.l;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.d;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.g;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49030a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49031b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49032c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49033d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f49034e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f49035f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f49036g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f49037h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f49038i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f49039j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f49040k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f49041l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f49042m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f49043n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f49044o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f49045p;

    /* renamed from: q  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49046q = Descriptors.FileDescriptor.s(new String[]{"\n\u001fenvoy/config/rbac/v2/rbac.proto\u0012\u0014envoy.config.rbac.v2\u001a\u001fenvoy/api/v2/core/address.proto\u001a)envoy/api/v2/route/route_components.proto\u001a!envoy/type/matcher/metadata.proto\u001a\u001denvoy/type/matcher/path.proto\u001a\u001fenvoy/type/matcher/string.proto\u001a%google/api/expr/v1alpha1/syntax.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"ã\u0001\n\u0004RBAC\u00121\n\u0006action\u0018\u0001 \u0001(\u000e2!.envoy.config.rbac.v2.RBAC.Action\u0012:\n\bpolicies\u0018\u0002 \u0003(\u000b2(.envoy.config.rbac.v2.RBAC.PoliciesEntry\u001aM\n\rPoliciesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012+\n\u0005value\u0018\u0002 \u0001(\u000b2\u001c.envoy.config.rbac.v2.Policy:\u00028\u0001\"\u001d\n\u0006Action\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\b\n\u0004DENY\u0010\u0001\"»\u0001\n\u0006Policy\u0012?\n\u000bpermissions\u0018\u0001 \u0003(\u000b2 .envoy.config.rbac.v2.PermissionB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012=\n\nprincipals\u0018\u0002 \u0003(\u000b2\u001f.envoy.config.rbac.v2.PrincipalB\búB\u0005\u0092\u0001\u0002\b\u0001\u00121\n\tcondition\u0018\u0003 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\"ä\u0004\n\nPermission\u00129\n\tand_rules\u0018\u0001 \u0001(\u000b2$.envoy.config.rbac.v2.Permission.SetH\u0000\u00128\n\bor_rules\u0018\u0002 \u0001(\u000b2$.envoy.config.rbac.v2.Permission.SetH\u0000\u0012\u0016\n\u0003any\u0018\u0003 \u0001(\bB\u0007úB\u0004j\u0002\b\u0001H\u0000\u00123\n\u0006header\u0018\u0004 \u0001(\u000b2!.envoy.api.v2.route.HeaderMatcherH\u0000\u00123\n\burl_path\u0018\n \u0001(\u000b2\u001f.envoy.type.matcher.PathMatcherH\u0000\u00126\n\u000edestination_ip\u0018\u0005 \u0001(\u000b2\u001c.envoy.api.v2.core.CidrRangeH\u0000\u0012%\n\u0010destination_port\u0018\u0006 \u0001(\rB\túB\u0006*\u0004\u0018ÿÿ\u0003H\u0000\u00127\n\bmetadata\u0018\u0007 \u0001(\u000b2#.envoy.type.matcher.MetadataMatcherH\u0000\u00124\n\bnot_rule\u0018\b \u0001(\u000b2 .envoy.config.rbac.v2.PermissionH\u0000\u0012B\n\u0015requested_server_name\u0018\t \u0001(\u000b2!.envoy.type.matcher.StringMatcherH\u0000\u001a@\n\u0003Set\u00129\n\u0005rules\u0018\u0001 \u0003(\u000b2 .envoy.config.rbac.v2.PermissionB\búB\u0005\u0092\u0001\u0002\b\u0001B\u000b\n\u0004rule\u0012\u0003øB\u0001\"ø\u0005\n\tPrincipal\u00126\n\u0007and_ids\u0018\u0001 \u0001(\u000b2#.envoy.config.rbac.v2.Principal.SetH\u0000\u00125\n\u0006or_ids\u0018\u0002 \u0001(\u000b2#.envoy.config.rbac.v2.Principal.SetH\u0000\u0012\u0016\n\u0003any\u0018\u0003 \u0001(\bB\u0007úB\u0004j\u0002\b\u0001H\u0000\u0012F\n\rauthenticated\u0018\u0004 \u0001(\u000b2-.envoy.config.rbac.v2.Principal.AuthenticatedH\u0000\u00125\n\tsource_ip\u0018\u0005 \u0001(\u000b2\u001c.envoy.api.v2.core.CidrRangeB\u0002\u0018\u0001H\u0000\u00128\n\u0010direct_remote_ip\u0018\n \u0001(\u000b2\u001c.envoy.api.v2.core.CidrRangeH\u0000\u00121\n\tremote_ip\u0018\u000b \u0001(\u000b2\u001c.envoy.api.v2.core.CidrRangeH\u0000\u00123\n\u0006header\u0018\u0006 \u0001(\u000b2!.envoy.api.v2.route.HeaderMatcherH\u0000\u00123\n\burl_path\u0018\t \u0001(\u000b2\u001f.envoy.type.matcher.PathMatcherH\u0000\u00127\n\bmetadata\u0018\u0007 \u0001(\u000b2#.envoy.type.matcher.MetadataMatcherH\u0000\u00121\n\u0006not_id\u0018\b \u0001(\u000b2\u001f.envoy.config.rbac.v2.PrincipalH\u0000\u001a=\n\u0003Set\u00126\n\u0003ids\u0018\u0001 \u0003(\u000b2\u001f.envoy.config.rbac.v2.PrincipalB\búB\u0005\u0092\u0001\u0002\b\u0001\u001aP\n\rAuthenticated\u00129\n\u000eprincipal_name\u0018\u0002 \u0001(\u000b2!.envoy.type.matcher.StringMatcherJ\u0004\b\u0001\u0010\u0002B\u0011\n\nidentifier\u0012\u0003øB\u0001B9\n\"io.envoyproxy.envoy.config.rbac.v2B\tRbacProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a(), l.a(), d.a(), g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.l.a(), f.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49030a = bVar;
        f49031b = new GeneratedMessageV3.e(bVar, new String[]{"Action", "Policies"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f49032c = bVar2;
        f49033d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
        Descriptors.b bVar3 = a().m().get(1);
        f49034e = bVar3;
        f49035f = new GeneratedMessageV3.e(bVar3, new String[]{"Permissions", "Principals", "Condition"});
        Descriptors.b bVar4 = a().m().get(2);
        f49036g = bVar4;
        f49037h = new GeneratedMessageV3.e(bVar4, new String[]{"AndRules", "OrRules", "Any", "Header", "UrlPath", "DestinationIp", "DestinationPort", "Metadata", "NotRule", "RequestedServerName", "Rule"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f49038i = bVar5;
        f49039j = new GeneratedMessageV3.e(bVar5, new String[]{"Rules"});
        Descriptors.b bVar6 = a().m().get(3);
        f49040k = bVar6;
        f49041l = new GeneratedMessageV3.e(bVar6, new String[]{"AndIds", "OrIds", "Any", "Authenticated", "SourceIp", "DirectRemoteIp", "RemoteIp", "Header", "UrlPath", "Metadata", "NotId", "Identifier"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f49042m = bVar7;
        f49043n = new GeneratedMessageV3.e(bVar7, new String[]{"Ids"});
        Descriptors.b bVar8 = bVar6.o().get(1);
        f49044o = bVar8;
        f49045p = new GeneratedMessageV3.e(bVar8, new String[]{"PrincipalName"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49046q, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a();
        l.a();
        d.a();
        g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.l.a();
        f.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49046q;
    }
}
