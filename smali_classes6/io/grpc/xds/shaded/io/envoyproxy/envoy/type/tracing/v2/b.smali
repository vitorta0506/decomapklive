.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;
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

.field private static k:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\n&envoy/type/tracing/v2/custom_tag.proto\u0012\u0015envoy.type.tracing.v2\u001a%envoy/type/metadata/v2/metadata.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00e3\u0004\n\tCustomTag\u0012\u0014\n\u0003tag\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012;\n\u0007literal\u0018\u0002 \u0001(\u000b2(.envoy.type.tracing.v2.CustomTag.LiteralH\u0000\u0012C\n\u000benvironment\u0018\u0003 \u0001(\u000b2,.envoy.type.tracing.v2.CustomTag.EnvironmentH\u0000\u0012A\n\u000erequest_header\u0018\u0004 \u0001(\u000b2\'.envoy.type.tracing.v2.CustomTag.HeaderH\u0000\u0012=\n\u0008metadata\u0018\u0005 \u0001(\u000b2).envoy.type.tracing.v2.CustomTag.MetadataH\u0000\u001a!\n\u0007Literal\u0012\u0016\n\u0005value\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u001a;\n\u000bEnvironment\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\t\u001a<\n\u0006Header\u0012\u001b\n\u0004name\u0018\u0001 \u0001(\tB\r\u00faB\nr\u0008 \u0001\u00c0\u0001\u0001\u00c8\u0001\u0000\u0012\u0015\n\rdefault_value\u0018\u0002 \u0001(\t\u001a\u0090\u0001\n\u0008Metadata\u00122\n\u0004kind\u0018\u0001 \u0001(\u000b2$.envoy.type.metadata.v2.MetadataKind\u00129\n\u000cmetadata_key\u0018\u0002 \u0001(\u000b2#.envoy.type.metadata.v2.MetadataKey\u0012\u0015\n\rdefault_value\u0018\u0003 \u0001(\tB\u000b\n\u0004type\u0012\u0003\u00f8B\u0001B?\n#io.envoyproxy.envoy.type.tracing.v2B\u000eCustomTagProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "Tag"

    const-string v8, "Literal"

    const-string v9, "Environment"

    const-string v10, "RequestHeader"

    const-string v11, "Metadata"

    const-string v12, "Type"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Value"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->e:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Name"

    const-string v5, "DefaultValue"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->g:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->i:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Kind"

    const-string v3, "MetadataKey"

    filled-new-array {v2, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 17
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 18
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 19
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 20
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 21
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/metadata/v2/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/b;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
