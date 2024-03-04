.class public final Lt5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Lcom/google/cloud/OperationResponseMapping;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/protobuf/GeneratedMessage$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessage$l<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Lcom/google/cloud/OperationResponseMapping;

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v1

    sput-object v1, Lt5/a;->a:Lcom/google/protobuf/GeneratedMessage$l;

    .line 3
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v3

    sput-object v3, Lt5/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    .line 4
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v4

    sput-object v4, Lt5/a;->c:Lcom/google/protobuf/GeneratedMessage$l;

    .line 5
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v0

    sput-object v0, Lt5/a;->d:Lcom/google/protobuf/GeneratedMessage$l;

    .line 6
    const-class v5, Ljava/lang/Boolean;

    .line 7
    invoke-static {v5, v2}, Lcom/google/protobuf/GeneratedMessage;->newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/google/protobuf/l1;)Lcom/google/protobuf/GeneratedMessage$l;

    move-result-object v2

    sput-object v2, Lt5/a;->e:Lcom/google/protobuf/GeneratedMessage$l;

    const-string v5, "\n&google/cloud/extended_operations.proto\u0012\u000cgoogle.cloud\u001a google/protobuf/descriptor.proto*b\n\u0018OperationResponseMapping\u0012\r\n\tUNDEFINED\u0010\u0000\u0012\u0008\n\u0004NAME\u0010\u0001\u0012\n\n\u0006STATUS\u0010\u0002\u0012\u000e\n\nERROR_CODE\u0010\u0003\u0012\u0011\n\rERROR_MESSAGE\u0010\u0004:_\n\u000foperation_field\u0012\u001d.google.protobuf.FieldOptions\u0018\u00fd\u0008 \u0001(\u000e2&.google.cloud.OperationResponseMapping:?\n\u0017operation_request_field\u0012\u001d.google.protobuf.FieldOptions\u0018\u00fe\u0008 \u0001(\t:@\n\u0018operation_response_field\u0012\u001d.google.protobuf.FieldOptions\u0018\u00ff\u0008 \u0001(\t::\n\u0011operation_service\u0012\u001e.google.protobuf.MethodOptions\u0018\u00e1\t \u0001(\t:A\n\u0018operation_polling_method\u0012\u001e.google.protobuf.MethodOptions\u0018\u00e2\t \u0001(\u0008By\n\u0010com.google.cloudB\u0017ExtendedOperationsProtoP\u0001ZCgoogle.golang.org/genproto/googleapis/cloud/extendedops;extendedops\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 8
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 10
    invoke-static {v5, v7}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    sput-object v5, Lt5/a;->f:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1, v5}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 12
    sget-object v1, Lt5/a;->f:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 13
    sget-object v1, Lt5/a;->f:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 14
    sget-object v1, Lt5/a;->f:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 15
    sget-object v0, Lt5/a;->f:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->l()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/GeneratedMessage$l;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 16
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->c0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lt5/a;->f:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
