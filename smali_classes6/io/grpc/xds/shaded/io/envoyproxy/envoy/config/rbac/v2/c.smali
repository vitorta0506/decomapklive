.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static q:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "\n\u001fenvoy/config/rbac/v2/rbac.proto\u0012\u0014envoy.config.rbac.v2\u001a\u001fenvoy/api/v2/core/address.proto\u001a)envoy/api/v2/route/route_components.proto\u001a!envoy/type/matcher/metadata.proto\u001a\u001denvoy/type/matcher/path.proto\u001a\u001fenvoy/type/matcher/string.proto\u001a%google/api/expr/v1alpha1/syntax.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00e3\u0001\n\u0004RBAC\u00121\n\u0006action\u0018\u0001 \u0001(\u000e2!.envoy.config.rbac.v2.RBAC.Action\u0012:\n\u0008policies\u0018\u0002 \u0003(\u000b2(.envoy.config.rbac.v2.RBAC.PoliciesEntry\u001aM\n\rPoliciesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012+\n\u0005value\u0018\u0002 \u0001(\u000b2\u001c.envoy.config.rbac.v2.Policy:\u00028\u0001\"\u001d\n\u0006Action\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\u0008\n\u0004DENY\u0010\u0001\"\u00bb\u0001\n\u0006Policy\u0012?\n\u000bpermissions\u0018\u0001 \u0003(\u000b2 .envoy.config.rbac.v2.PermissionB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u0012=\n\nprincipals\u0018\u0002 \u0003(\u000b2\u001f.envoy.config.rbac.v2.PrincipalB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u00121\n\tcondition\u0018\u0003 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.Expr\"\u00e4\u0004\n\nPermission\u00129\n\tand_rules\u0018\u0001 \u0001(\u000b2$.envoy.config.rbac.v2.Permission.SetH\u0000\u00128\n\u0008or_rules\u0018\u0002 \u0001(\u000b2$.envoy.config.rbac.v2.Permission.SetH\u0000\u0012\u0016\n\u0003any\u0018\u0003 \u0001(\u0008B\u0007\u00faB\u0004j\u0002\u0008\u0001H\u0000\u00123\n\u0006header\u0018\u0004 \u0001(\u000b2!.envoy.api.v2.route.HeaderMatcherH\u0000\u00123\n\u0008url_path\u0018\n \u0001(\u000b2\u001f.envoy.type.matcher.PathMatcherH\u0000\u00126\n\u000edestination_ip\u0018\u0005 \u0001(\u000b2\u001c.envoy.api.v2.core.CidrRangeH\u0000\u0012%\n\u0010destination_port\u0018\u0006 \u0001(\rB\t\u00faB\u0006*\u0004\u0018\u00ff\u00ff\u0003H\u0000\u00127\n\u0008metadata\u0018\u0007 \u0001(\u000b2#.envoy.type.matcher.MetadataMatcherH\u0000\u00124\n\u0008not_rule\u0018\u0008 \u0001(\u000b2 .envoy.config.rbac.v2.PermissionH\u0000\u0012B\n\u0015requested_server_name\u0018\t \u0001(\u000b2!.envoy.type.matcher.StringMatcherH\u0000\u001a@\n\u0003Set\u00129\n\u0005rules\u0018\u0001 \u0003(\u000b2 .envoy.config.rbac.v2.PermissionB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001B\u000b\n\u0004rule\u0012\u0003\u00f8B\u0001\"\u00f8\u0005\n\tPrincipal\u00126\n\u0007and_ids\u0018\u0001 \u0001(\u000b2#.envoy.config.rbac.v2.Principal.SetH\u0000\u00125\n\u0006or_ids\u0018\u0002 \u0001(\u000b2#.envoy.config.rbac.v2.Principal.SetH\u0000\u0012\u0016\n\u0003any\u0018\u0003 \u0001(\u0008B\u0007\u00faB\u0004j\u0002\u0008\u0001H\u0000\u0012F\n\rauthenticated\u0018\u0004 \u0001(\u000b2-.envoy.config.rbac.v2.Principal.AuthenticatedH\u0000\u00125\n\tsource_ip\u0018\u0005 \u0001(\u000b2\u001c.envoy.api.v2.core.CidrRangeB\u0002\u0018\u0001H\u0000\u00128\n\u0010direct_remote_ip\u0018\n \u0001(\u000b2\u001c.envoy.api.v2.core.CidrRangeH\u0000\u00121\n\tremote_ip\u0018\u000b \u0001(\u000b2\u001c.envoy.api.v2.core.CidrRangeH\u0000\u00123\n\u0006header\u0018\u0006 \u0001(\u000b2!.envoy.api.v2.route.HeaderMatcherH\u0000\u00123\n\u0008url_path\u0018\t \u0001(\u000b2\u001f.envoy.type.matcher.PathMatcherH\u0000\u00127\n\u0008metadata\u0018\u0007 \u0001(\u000b2#.envoy.type.matcher.MetadataMatcherH\u0000\u00121\n\u0006not_id\u0018\u0008 \u0001(\u000b2\u001f.envoy.config.rbac.v2.PrincipalH\u0000\u001a=\n\u0003Set\u00126\n\u0003ids\u0018\u0001 \u0003(\u000b2\u001f.envoy.config.rbac.v2.PrincipalB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u001aP\n\rAuthenticated\u00129\n\u000eprincipal_name\u0018\u0002 \u0001(\u000b2!.envoy.type.matcher.StringMatcherJ\u0004\u0008\u0001\u0010\u0002B\u0011\n\nidentifier\u0012\u0003\u00f8B\u0001B9\n\"io.envoyproxy.envoy.config.rbac.v2B\tRbacProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x5

    aput-object v2, v1, v7

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v1, v7

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x7

    aput-object v2, v1, v7

    .line 10
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Action"

    const-string v7, "Policies"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->c:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v7, "Value"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Permissions"

    const-string v7, "Principals"

    const-string v8, "Condition"

    filled-new-array {v2, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->g:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "AndRules"

    const-string v8, "OrRules"

    const-string v9, "Any"

    const-string v10, "Header"

    const-string v11, "UrlPath"

    const-string v12, "DestinationIp"

    const-string v13, "DestinationPort"

    const-string v14, "Metadata"

    const-string v15, "NotRule"

    const-string v16, "RequestedServerName"

    const-string v17, "Rule"

    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->i:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Rules"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->k:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "AndIds"

    const-string v6, "OrIds"

    const-string v7, "Any"

    const-string v8, "Authenticated"

    const-string v9, "SourceIp"

    const-string v10, "DirectRemoteIp"

    const-string v11, "RemoteIp"

    const-string v12, "Header"

    const-string v13, "UrlPath"

    const-string v14, "Metadata"

    const-string v15, "NotId"

    const-string v16, "Identifier"

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->m:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Ids"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->o:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "PrincipalName"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 28
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 29
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 30
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 31
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/c;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
