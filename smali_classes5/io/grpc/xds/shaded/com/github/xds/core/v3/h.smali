.class public final Lio/grpc/xds/shaded/com/github/xds/core/v3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static e:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "\n\"xds/core/v3/resource_locator.proto\u0012\u000bxds.core.v3\u001a\u001fxds/annotations/v3/status.proto\u001a xds/core/v3/context_params.proto\u001a\u0017validate/validate.proto\"\u00c2\u0003\n\u000fResourceLocator\u0012=\n\u0006scheme\u0018\u0001 \u0001(\u000e2#.xds.core.v3.ResourceLocator.SchemeB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\n\n\u0002id\u0018\u0002 \u0001(\t\u0012\u0011\n\tauthority\u0018\u0003 \u0001(\t\u0012\u001e\n\rresource_type\u0018\u0004 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u00123\n\rexact_context\u0018\u0005 \u0001(\u000b2\u001a.xds.core.v3.ContextParamsH\u0000\u0012:\n\ndirectives\u0018\u0006 \u0003(\u000b2&.xds.core.v3.ResourceLocator.Directive\u001a|\n\tDirective\u0012+\n\u0003alt\u0018\u0001 \u0001(\u000b2\u001c.xds.core.v3.ResourceLocatorH\u0000\u00120\n\u0005entry\u0018\u0002 \u0001(\tB\u001f\u00faB\u001cr\u001a\u0010\u00012\u0016^[0-9a-zA-Z_\\-\\./~:]+$H\u0000B\u0010\n\tdirective\u0012\u0003\u00f8B\u0001\"\'\n\u0006Scheme\u0012\t\n\u0005XDSTP\u0010\u0000\u0012\u0008\n\u0004HTTP\u0010\u0001\u0012\u0008\n\u0004FILE\u0010\u0002B\u0019\n\u0017context_param_specifierB\\\n\u0016com.github.xds.core.v3B\u0014ResourceLocatorProtoP\u0001Z\"github.com/cncf/xds/go/xds/core/v3\u00d2\u00c6\u00a4\u00e1\u0006\u0002\u0008\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 5
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/com/github/xds/core/v3/h;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/github/xds/core/v3/h;->a:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Scheme"

    const-string v5, "Id"

    const-string v6, "Authority"

    const-string v7, "ResourceType"

    const-string v8, "ExactContext"

    const-string v9, "Directives"

    const-string v10, "ContextParamSpecifier"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/com/github/xds/core/v3/h;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/github/xds/core/v3/h;->c:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Alt"

    const-string v3, "Entry"

    const-string v4, "Directive"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/com/github/xds/core/v3/h;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 11
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 12
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 13
    sget-object v1, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 14
    sget-object v1, Lio/grpc/xds/shaded/com/github/xds/core/v3/h;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/github/xds/core/v3/h;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
