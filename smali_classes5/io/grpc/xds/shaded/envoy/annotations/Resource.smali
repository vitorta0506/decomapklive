.class public final Lio/grpc/xds/shaded/envoy/annotations/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/envoy/annotations/Resource$ResourceAnnotation;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            "Lio/grpc/xds/shaded/envoy/annotations/Resource$ResourceAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/protobuf/Descriptors$b;

.field private static final c:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static d:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lio/grpc/xds/shaded/envoy/annotations/Resource$ResourceAnnotation;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/Resource$ResourceAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/envoy/annotations/Resource$ResourceAnnotation;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/envoy/annotations/Resource;->a:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v1, "\n envoy/annotations/resource.proto\u0012\u0011envoy.annotations\u001a google/protobuf/descriptor.proto\"\"\n\u0012ResourceAnnotation\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\t:[\n\u0008resource\u0012\u001f.google.protobuf.ServiceOptions\u0018\u00c1\u00e4\u00b2~ \u0001(\u000b2%.envoy.annotations.ResourceAnnotationb\u0006proto3"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    sput-object v1, Lio/grpc/xds/shaded/envoy/annotations/Resource;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/Resource;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/envoy/annotations/Resource;->b:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Type"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/envoy/annotations/Resource;->c:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/Resource;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 10
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/envoy/annotations/Resource;->b:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/envoy/annotations/Resource;->c:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-object v0
.end method

.method public static c()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/envoy/annotations/Resource;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
