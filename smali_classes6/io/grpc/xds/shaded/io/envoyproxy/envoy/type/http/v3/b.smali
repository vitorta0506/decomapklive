.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;
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

.field private static i:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\n,envoy/type/http/v3/path_transformation.proto\u0012\u0012envoy.type.http.v3\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00ee\u0002\n\u0012PathTransformation\u0012D\n\noperations\u0018\u0001 \u0003(\u000b20.envoy.type.http.v3.PathTransformation.Operation\u001a\u0091\u0002\n\tOperation\u0012h\n\u0017normalize_path_rfc_3986\u0018\u0002 \u0001(\u000b2E.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986H\u0000\u0012V\n\rmerge_slashes\u0018\u0003 \u0001(\u000b2=.envoy.type.http.v3.PathTransformation.Operation.MergeSlashesH\u0000\u001a\u0016\n\u0014NormalizePathRFC3986\u001a\u000e\n\u000cMergeSlashesB\u001a\n\u0013operation_specifier\u0012\u0003\u00f8B\u0001BE\n io.envoyproxy.envoy.type.http.v3B\u0017PathTransformationProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Operations"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "NormalizePathRfc3986"

    const-string v5, "MergeSlashes"

    const-string v6, "OperationSpecifier"

    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->e:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v5, v3, [Ljava/lang/String;

    invoke-direct {v2, v1, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->g:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 14
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 15
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 16
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/http/v3/b;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
