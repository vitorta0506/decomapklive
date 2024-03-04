.class public final Lio/grpc/xds/shaded/xds/annotations/v3/Security;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/xds/annotations/v3/Security$FieldSecurityAnnotation;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Lio/grpc/xds/shaded/xds/annotations/v3/Security$FieldSecurityAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/protobuf/Descriptors$b;

.field private static final c:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static d:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lio/grpc/xds/shaded/xds/annotations/v3/Security$FieldSecurityAnnotation;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Security$FieldSecurityAnnotation;->getDefaultInstance()Lio/grpc/xds/shaded/xds/annotations/v3/Security$FieldSecurityAnnotation;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->a:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v1, "\n!xds/annotations/v3/security.proto\u0012\u0012xds.annotations.v3\u001a\u001fxds/annotations/v3/status.proto\u001a google/protobuf/descriptor.proto\"o\n\u0017FieldSecurityAnnotation\u0012*\n\"configure_for_untrusted_downstream\u0018\u0001 \u0001(\u0008\u0012(\n configure_for_untrusted_upstream\u0018\u0002 \u0001(\u0008:_\n\u0008security\u0012\u001d.google.protobuf.FieldOptions\u0018\u00a7\u0096\u009d/ \u0001(\u000b2+.xds.annotations.v3.FieldSecurityAnnotationB3Z)github.com/cncf/xds/go/xds/annotations/v3\u00d2\u00c6\u00a4\u00e1\u0006\u0002\u0008\u0001b\u0006proto3"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 7
    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    sput-object v1, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->b:Lcom/google/protobuf/Descriptors$b;

    .line 9
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "ConfigureForUntrustedDownstream"

    const-string v5, "ConfigureForUntrustedUpstream"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->c:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 10
    sget-object v1, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 11
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 12
    sget-object v1, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 13
    sget-object v1, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/xds/annotations/v3/Status;->i()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 16
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->b:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->c:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-object v0
.end method

.method public static c()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/xds/annotations/v3/Security;->d:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
