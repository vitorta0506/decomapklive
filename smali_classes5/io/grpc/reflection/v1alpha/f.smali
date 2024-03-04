.class public final Lio/grpc/reflection/v1alpha/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
    .locals 11

    const-string v0, "\n(grpc/reflection/v1alpha/reflection.proto\u0012\u0017grpc.reflection.v1alpha\"\u008a\u0002\n\u0017ServerReflectionRequest\u0012\u000c\n\u0004host\u0018\u0001 \u0001(\t\u0012\u001a\n\u0010file_by_filename\u0018\u0003 \u0001(\tH\u0000\u0012 \n\u0016file_containing_symbol\u0018\u0004 \u0001(\tH\u0000\u0012N\n\u0019file_containing_extension\u0018\u0005 \u0001(\u000b2).grpc.reflection.v1alpha.ExtensionRequestH\u0000\u0012\'\n\u001dall_extension_numbers_of_type\u0018\u0006 \u0001(\tH\u0000\u0012\u0017\n\rlist_services\u0018\u0007 \u0001(\tH\u0000B\u0011\n\u000fmessage_request\"E\n\u0010ExtensionRequest\u0012\u0017\n\u000fcontaining_type\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010extension_number\u0018\u0002 \u0001(\u0005\"\u00d1\u0003\n\u0018ServerReflectionResponse\u0012\u0012\n\nvalid_host\u0018\u0001 \u0001(\t\u0012J\n\u0010original_request\u0018\u0002 \u0001(\u000b20.grpc.reflection.v1alpha.ServerReflectionRequest\u0012S\n\u0018file_descriptor_response\u0018\u0004 \u0001(\u000b2/.grpc.reflection.v1alpha.FileDescriptorResponseH\u0000\u0012Z\n\u001eall_extension_numbers_response\u0018\u0005 \u0001(\u000b20.grpc.reflection.v1alpha.ExtensionNumberResponseH\u0000\u0012N\n\u0016list_services_response\u0018\u0006 \u0001(\u000b2,.grpc.reflection.v1alpha.ListServiceResponseH\u0000\u0012@\n\u000eerror_response\u0018\u0007 \u0001(\u000b2&.grpc.reflection.v1alpha.ErrorResponseH\u0000B\u0012\n\u0010message_response\"7\n\u0016FileDescriptorResponse\u0012\u001d\n\u0015file_descriptor_proto\u0018\u0001 \u0003(\u000c\"K\n\u0017ExtensionNumberResponse\u0012\u0016\n\u000ebase_type_name\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010extension_number\u0018\u0002 \u0003(\u0005\"P\n\u0013ListServiceResponse\u00129\n\u0007service\u0018\u0001 \u0003(\u000b2(.grpc.reflection.v1alpha.ServiceResponse\"\u001f\n\u000fServiceResponse\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\":\n\rErrorResponse\u0012\u0012\n\nerror_code\u0018\u0001 \u0001(\u0005\u0012\u0015\n\rerror_message\u0018\u0002 \u0001(\t2\u0093\u0001\n\u0010ServerReflection\u0012\u007f\n\u0014ServerReflectionInfo\u00120.grpc.reflection.v1alpha.ServerReflectionRequest\u001a1.grpc.reflection.v1alpha.ServerReflectionResponse(\u00010\u0001B8\n\u001aio.grpc.reflection.v1alphaB\u0015ServerReflectionProtoP\u0001\u00b8\u0001\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/reflection/v1alpha/f;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lio/grpc/reflection/v1alpha/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/reflection/v1alpha/f;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Host"

    const-string v3, "FileByFilename"

    const-string v4, "FileContainingSymbol"

    const-string v5, "FileContainingExtension"

    const-string v6, "AllExtensionNumbersOfType"

    const-string v7, "ListServices"

    const-string v8, "MessageRequest"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/reflection/v1alpha/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 5
    invoke-static {}, Lio/grpc/reflection/v1alpha/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/reflection/v1alpha/f;->c:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ContainingType"

    const-string v3, "ExtensionNumber"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/reflection/v1alpha/f;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-static {}, Lio/grpc/reflection/v1alpha/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/reflection/v1alpha/f;->e:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "ValidHost"

    const-string v5, "OriginalRequest"

    const-string v6, "FileDescriptorResponse"

    const-string v7, "AllExtensionNumbersResponse"

    const-string v8, "ListServicesResponse"

    const-string v9, "ErrorResponse"

    const-string v10, "MessageResponse"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/reflection/v1alpha/f;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lio/grpc/reflection/v1alpha/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/reflection/v1alpha/f;->g:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "FileDescriptorProto"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/reflection/v1alpha/f;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lio/grpc/reflection/v1alpha/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/reflection/v1alpha/f;->i:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "BaseTypeName"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/reflection/v1alpha/f;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lio/grpc/reflection/v1alpha/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/reflection/v1alpha/f;->k:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Service"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/reflection/v1alpha/f;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/reflection/v1alpha/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/reflection/v1alpha/f;->m:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/reflection/v1alpha/f;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/reflection/v1alpha/f;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/reflection/v1alpha/f;->o:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ErrorCode"

    const-string v3, "ErrorMessage"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/reflection/v1alpha/f;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/reflection/v1alpha/f;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
