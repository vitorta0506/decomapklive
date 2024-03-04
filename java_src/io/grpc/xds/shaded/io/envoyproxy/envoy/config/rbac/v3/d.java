package io.grpc.xds.shaded.io.envoyproxy.envoy.config.rbac.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.o;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.e;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.j;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.h;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49092a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49093b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49094c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49095d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f49096e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f49097f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f49098g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f49099h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f49100i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f49101j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f49102k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f49103l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f49104m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f49105n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f49106o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f49107p;

    /* renamed from: q  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49108q = Descriptors.FileDescriptor.s(new String[]{"\n\u001fenvoy/config/rbac/v3/rbac.proto\u0012\u0014envoy.config.rbac.v3\u001a\"envoy/config/core/v3/address.proto\u001a,envoy/config/route/v3/route_components.proto\u001a$envoy/type/matcher/v3/metadata.proto\u001a envoy/type/matcher/v3/path.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u0019envoy/type/v3/range.proto\u001a&google/api/expr/v1alpha1/checked.proto\u001a%google/api/expr/v1alpha1/syntax.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0098\u0002\n\u0004RBAC\u0012;\n\u0006action\u0018\u0001 \u0001(\u000e2!.envoy.config.rbac.v3.RBAC.ActionB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012:\n\bpolicies\u0018\u0002 \u0003(\u000b2(.envoy.config.rbac.v3.RBAC.PoliciesEntry\u001aM\n\rPoliciesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012+\n\u0005value\u0018\u0002 \u0001(\u000b2\u001c.envoy.config.rbac.v3.Policy:\u00028\u0001\"&\n\u0006Action\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\b\n\u0004DENY\u0010\u0001\u0012\u0007\n\u0003LOG\u0010\u0002: \u009aÅ\u0088\u001e\u001b\n\u0019envoy.config.rbac.v2.RBAC\"Ý\u0002\n\u0006Policy\u0012?\n\u000bpermissions\u0018\u0001 \u0003(\u000b2 .envoy.config.rbac.v3.PermissionB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012=\n\nprincipals\u0018\u0002 \u0003(\u000b2\u001f.envoy.config.rbac.v3.PrincipalB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012O\n\tcondition\u0018\u0003 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.ExprB\u001cò\u0098þ\u008f\u0005\u0016\u0012\u0014expression_specifier\u0012^\n\u0011checked_condition\u0018\u0004 \u0001(\u000b2%.google.api.expr.v1alpha1.CheckedExprB\u001cò\u0098þ\u008f\u0005\u0016\u0012\u0014expression_specifier:\"\u009aÅ\u0088\u001e\u001d\n\u001benvoy.config.rbac.v2.Policy\"\u0084\u0006\n\nPermission\u00129\n\tand_rules\u0018\u0001 \u0001(\u000b2$.envoy.config.rbac.v3.Permission.SetH\u0000\u00128\n\bor_rules\u0018\u0002 \u0001(\u000b2$.envoy.config.rbac.v3.Permission.SetH\u0000\u0012\u0016\n\u0003any\u0018\u0003 \u0001(\bB\u0007úB\u0004j\u0002\b\u0001H\u0000\u00126\n\u0006header\u0018\u0004 \u0001(\u000b2$.envoy.config.route.v3.HeaderMatcherH\u0000\u00126\n\burl_path\u0018\n \u0001(\u000b2\".envoy.type.matcher.v3.PathMatcherH\u0000\u00129\n\u000edestination_ip\u0018\u0005 \u0001(\u000b2\u001f.envoy.config.core.v3.CidrRangeH\u0000\u0012%\n\u0010destination_port\u0018\u0006 \u0001(\rB\túB\u0006*\u0004\u0018ÿÿ\u0003H\u0000\u0012;\n\u0016destination_port_range\u0018\u000b \u0001(\u000b2\u0019.envoy.type.v3.Int32RangeH\u0000\u0012:\n\bmetadata\u0018\u0007 \u0001(\u000b2&.envoy.type.matcher.v3.MetadataMatcherH\u0000\u00124\n\bnot_rule\u0018\b \u0001(\u000b2 .envoy.config.rbac.v3.PermissionH\u0000\u0012E\n\u0015requested_server_name\u0018\t \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcherH\u0000\u001al\n\u0003Set\u00129\n\u0005rules\u0018\u0001 \u0003(\u000b2 .envoy.config.rbac.v3.PermissionB\búB\u0005\u0092\u0001\u0002\b\u0001:*\u009aÅ\u0088\u001e%\n#envoy.config.rbac.v2.Permission.Set:&\u009aÅ\u0088\u001e!\n\u001fenvoy.config.rbac.v2.PermissionB\u000b\n\u0004rule\u0012\u0003øB\u0001\"\u009e\u0007\n\tPrincipal\u00126\n\u0007and_ids\u0018\u0001 \u0001(\u000b2#.envoy.config.rbac.v3.Principal.SetH\u0000\u00125\n\u0006or_ids\u0018\u0002 \u0001(\u000b2#.envoy.config.rbac.v3.Principal.SetH\u0000\u0012\u0016\n\u0003any\u0018\u0003 \u0001(\bB\u0007úB\u0004j\u0002\b\u0001H\u0000\u0012F\n\rauthenticated\u0018\u0004 \u0001(\u000b2-.envoy.config.rbac.v3.Principal.AuthenticatedH\u0000\u0012A\n\tsource_ip\u0018\u0005 \u0001(\u000b2\u001f.envoy.config.core.v3.CidrRangeB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0H\u0000\u0012;\n\u0010direct_remote_ip\u0018\n \u0001(\u000b2\u001f.envoy.config.core.v3.CidrRangeH\u0000\u00124\n\tremote_ip\u0018\u000b \u0001(\u000b2\u001f.envoy.config.core.v3.CidrRangeH\u0000\u00126\n\u0006header\u0018\u0006 \u0001(\u000b2$.envoy.config.route.v3.HeaderMatcherH\u0000\u00126\n\burl_path\u0018\t \u0001(\u000b2\".envoy.type.matcher.v3.PathMatcherH\u0000\u0012:\n\bmetadata\u0018\u0007 \u0001(\u000b2&.envoy.type.matcher.v3.MetadataMatcherH\u0000\u00121\n\u0006not_id\u0018\b \u0001(\u000b2\u001f.envoy.config.rbac.v3.PrincipalH\u0000\u001ah\n\u0003Set\u00126\n\u0003ids\u0018\u0001 \u0003(\u000b2\u001f.envoy.config.rbac.v3.PrincipalB\búB\u0005\u0092\u0001\u0002\b\u0001:)\u009aÅ\u0088\u001e$\n\"envoy.config.rbac.v2.Principal.Set\u001a\u0088\u0001\n\rAuthenticated\u0012<\n\u000eprincipal_name\u0018\u0002 \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcher:3\u009aÅ\u0088\u001e.\n,envoy.config.rbac.v2.Principal.AuthenticatedJ\u0004\b\u0001\u0010\u0002:%\u009aÅ\u0088\u001e \n\u001eenvoy.config.rbac.v2.PrincipalB\u0011\n\nidentifier\u0012\u0003øB\u0001B9\n\"io.envoyproxy.envoy.config.rbac.v3B\tRbacProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a(), o.a(), e.a(), j.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.o.a(), h.a(), io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.a(), f.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49092a = bVar;
        f49093b = new GeneratedMessageV3.e(bVar, new String[]{"Action", "Policies"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f49094c = bVar2;
        f49095d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
        Descriptors.b bVar3 = a().m().get(1);
        f49096e = bVar3;
        f49097f = new GeneratedMessageV3.e(bVar3, new String[]{"Permissions", "Principals", "Condition", "CheckedCondition"});
        Descriptors.b bVar4 = a().m().get(2);
        f49098g = bVar4;
        f49099h = new GeneratedMessageV3.e(bVar4, new String[]{"AndRules", "OrRules", "Any", "Header", "UrlPath", "DestinationIp", "DestinationPort", "DestinationPortRange", "Metadata", "NotRule", "RequestedServerName", "Rule"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f49100i = bVar5;
        f49101j = new GeneratedMessageV3.e(bVar5, new String[]{"Rules"});
        Descriptors.b bVar6 = a().m().get(3);
        f49102k = bVar6;
        f49103l = new GeneratedMessageV3.e(bVar6, new String[]{"AndIds", "OrIds", "Any", "Authenticated", "SourceIp", "DirectRemoteIp", "RemoteIp", "Header", "UrlPath", "Metadata", "NotId", "Identifier"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f49104m = bVar7;
        f49105n = new GeneratedMessageV3.e(bVar7, new String[]{"Ids"});
        Descriptors.b bVar8 = bVar6.o().get(1);
        f49106o = bVar8;
        f49107p = new GeneratedMessageV3.e(bVar8, new String[]{"PrincipalName"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Migrate.f50818b);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49108q, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a();
        o.a();
        e.a();
        j.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.o.a();
        h.a();
        io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.a();
        f.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49108q;
    }
}
