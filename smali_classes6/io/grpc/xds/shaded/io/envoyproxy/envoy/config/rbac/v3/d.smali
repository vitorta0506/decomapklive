.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;
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
    .locals 19

    const-string v0, "\n\u001fenvoy/config/rbac/v3/rbac.proto\u0012\u0014envoy.config.rbac.v3\u001a\"envoy/config/core/v3/address.proto\u001a,envoy/config/route/v3/route_components.proto\u001a$envoy/type/matcher/v3/metadata.proto\u001a envoy/type/matcher/v3/path.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u0019envoy/type/v3/range.proto\u001a&google/api/expr/v1alpha1/checked.proto\u001a%google/api/expr/v1alpha1/syntax.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0098\u0002\n\u0004RBAC\u0012;\n\u0006action\u0018\u0001 \u0001(\u000e2!.envoy.config.rbac.v3.RBAC.ActionB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012:\n\u0008policies\u0018\u0002 \u0003(\u000b2(.envoy.config.rbac.v3.RBAC.PoliciesEntry\u001aM\n\rPoliciesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012+\n\u0005value\u0018\u0002 \u0001(\u000b2\u001c.envoy.config.rbac.v3.Policy:\u00028\u0001\"&\n\u0006Action\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\u0008\n\u0004DENY\u0010\u0001\u0012\u0007\n\u0003LOG\u0010\u0002: \u009a\u00c5\u0088\u001e\u001b\n\u0019envoy.config.rbac.v2.RBAC\"\u00dd\u0002\n\u0006Policy\u0012?\n\u000bpermissions\u0018\u0001 \u0003(\u000b2 .envoy.config.rbac.v3.PermissionB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u0012=\n\nprincipals\u0018\u0002 \u0003(\u000b2\u001f.envoy.config.rbac.v3.PrincipalB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u0012O\n\tcondition\u0018\u0003 \u0001(\u000b2\u001e.google.api.expr.v1alpha1.ExprB\u001c\u00f2\u0098\u00fe\u008f\u0005\u0016\u0012\u0014expression_specifier\u0012^\n\u0011checked_condition\u0018\u0004 \u0001(\u000b2%.google.api.expr.v1alpha1.CheckedExprB\u001c\u00f2\u0098\u00fe\u008f\u0005\u0016\u0012\u0014expression_specifier:\"\u009a\u00c5\u0088\u001e\u001d\n\u001benvoy.config.rbac.v2.Policy\"\u0084\u0006\n\nPermission\u00129\n\tand_rules\u0018\u0001 \u0001(\u000b2$.envoy.config.rbac.v3.Permission.SetH\u0000\u00128\n\u0008or_rules\u0018\u0002 \u0001(\u000b2$.envoy.config.rbac.v3.Permission.SetH\u0000\u0012\u0016\n\u0003any\u0018\u0003 \u0001(\u0008B\u0007\u00faB\u0004j\u0002\u0008\u0001H\u0000\u00126\n\u0006header\u0018\u0004 \u0001(\u000b2$.envoy.config.route.v3.HeaderMatcherH\u0000\u00126\n\u0008url_path\u0018\n \u0001(\u000b2\".envoy.type.matcher.v3.PathMatcherH\u0000\u00129\n\u000edestination_ip\u0018\u0005 \u0001(\u000b2\u001f.envoy.config.core.v3.CidrRangeH\u0000\u0012%\n\u0010destination_port\u0018\u0006 \u0001(\rB\t\u00faB\u0006*\u0004\u0018\u00ff\u00ff\u0003H\u0000\u0012;\n\u0016destination_port_range\u0018\u000b \u0001(\u000b2\u0019.envoy.type.v3.Int32RangeH\u0000\u0012:\n\u0008metadata\u0018\u0007 \u0001(\u000b2&.envoy.type.matcher.v3.MetadataMatcherH\u0000\u00124\n\u0008not_rule\u0018\u0008 \u0001(\u000b2 .envoy.config.rbac.v3.PermissionH\u0000\u0012E\n\u0015requested_server_name\u0018\t \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcherH\u0000\u001al\n\u0003Set\u00129\n\u0005rules\u0018\u0001 \u0003(\u000b2 .envoy.config.rbac.v3.PermissionB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001:*\u009a\u00c5\u0088\u001e%\n#envoy.config.rbac.v2.Permission.Set:&\u009a\u00c5\u0088\u001e!\n\u001fenvoy.config.rbac.v2.PermissionB\u000b\n\u0004rule\u0012\u0003\u00f8B\u0001\"\u009e\u0007\n\tPrincipal\u00126\n\u0007and_ids\u0018\u0001 \u0001(\u000b2#.envoy.config.rbac.v3.Principal.SetH\u0000\u00125\n\u0006or_ids\u0018\u0002 \u0001(\u000b2#.envoy.config.rbac.v3.Principal.SetH\u0000\u0012\u0016\n\u0003any\u0018\u0003 \u0001(\u0008B\u0007\u00faB\u0004j\u0002\u0008\u0001H\u0000\u0012F\n\rauthenticated\u0018\u0004 \u0001(\u000b2-.envoy.config.rbac.v3.Principal.AuthenticatedH\u0000\u0012A\n\tsource_ip\u0018\u0005 \u0001(\u000b2\u001f.envoy.config.core.v3.CidrRangeB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0H\u0000\u0012;\n\u0010direct_remote_ip\u0018\n \u0001(\u000b2\u001f.envoy.config.core.v3.CidrRangeH\u0000\u00124\n\tremote_ip\u0018\u000b \u0001(\u000b2\u001f.envoy.config.core.v3.CidrRangeH\u0000\u00126\n\u0006header\u0018\u0006 \u0001(\u000b2$.envoy.config.route.v3.HeaderMatcherH\u0000\u00126\n\u0008url_path\u0018\t \u0001(\u000b2\".envoy.type.matcher.v3.PathMatcherH\u0000\u0012:\n\u0008metadata\u0018\u0007 \u0001(\u000b2&.envoy.type.matcher.v3.MetadataMatcherH\u0000\u00121\n\u0006not_id\u0018\u0008 \u0001(\u000b2\u001f.envoy.config.rbac.v3.PrincipalH\u0000\u001ah\n\u0003Set\u00126\n\u0003ids\u0018\u0001 \u0003(\u000b2\u001f.envoy.config.rbac.v3.PrincipalB\u0008\u00faB\u0005\u0092\u0001\u0002\u0008\u0001:)\u009a\u00c5\u0088\u001e$\n\"envoy.config.rbac.v2.Principal.Set\u001a\u0088\u0001\n\rAuthenticated\u0012<\n\u000eprincipal_name\u0018\u0002 \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcher:3\u009a\u00c5\u0088\u001e.\n,envoy.config.rbac.v2.Principal.AuthenticatedJ\u0004\u0008\u0001\u0010\u0002:%\u009a\u00c5\u0088\u001e \n\u001eenvoy.config.rbac.v2.PrincipalB\u0011\n\nidentifier\u0012\u0003\u00f8B\u0001B9\n\"io.envoyproxy.envoy.config.rbac.v3B\tRbacProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/e;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x5

    aput-object v2, v1, v7

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v1, v7

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x7

    aput-object v2, v1, v7

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v7, 0x8

    aput-object v2, v1, v7

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v7, 0x9

    aput-object v2, v1, v7

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v7, 0xa

    aput-object v2, v1, v7

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v7, 0xb

    aput-object v2, v1, v7

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v7, 0xc

    aput-object v2, v1, v7

    .line 15
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->a:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Action"

    const-string v7, "Policies"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->c:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Key"

    const-string v7, "Value"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->e:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Permissions"

    const-string v7, "Principals"

    const-string v8, "Condition"

    const-string v9, "CheckedCondition"

    filled-new-array {v2, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->g:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "AndRules"

    const-string v8, "OrRules"

    const-string v9, "Any"

    const-string v10, "Header"

    const-string v11, "UrlPath"

    const-string v12, "DestinationIp"

    const-string v13, "DestinationPort"

    const-string v14, "DestinationPortRange"

    const-string v15, "Metadata"

    const-string v16, "NotRule"

    const-string v17, "RequestedServerName"

    const-string v18, "Rule"

    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->i:Lcom/google/protobuf/Descriptors$b;

    .line 25
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Rules"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 26
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->k:Lcom/google/protobuf/Descriptors$b;

    .line 27
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

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 28
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->m:Lcom/google/protobuf/Descriptors$b;

    .line 29
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Ids"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 30
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->o:Lcom/google/protobuf/Descriptors$b;

    .line 31
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "PrincipalName"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 32
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 33
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 34
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 35
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 36
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 37
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 38
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 39
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/e;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/j;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 48
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 50
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 51
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 53
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/d;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
