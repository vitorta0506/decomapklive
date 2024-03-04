.class public final Lcom/google/api/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\n\u001dgoogle/api/launch_stage.proto\u0012\ngoogle.api*\u008c\u0001\n\u000bLaunchStage\u0012\u001c\n\u0018LAUNCH_STAGE_UNSPECIFIED\u0010\u0000\u0012\u0011\n\rUNIMPLEMENTED\u0010\u0006\u0012\r\n\tPRELAUNCH\u0010\u0007\u0012\u0010\n\u000cEARLY_ACCESS\u0010\u0001\u0012\t\n\u0005ALPHA\u0010\u0002\u0012\u0008\n\u0004BETA\u0010\u0003\u0012\u0006\n\u0002GA\u0010\u0004\u0012\u000e\n\nDEPRECATED\u0010\u0005BZ\n\u000ecom.google.apiB\u0010LaunchStageProtoP\u0001Z-google.golang.org/genproto/googleapis/api;api\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/api/k0;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/k0;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
