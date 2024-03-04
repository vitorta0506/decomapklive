.class public final Lcom/google/rpc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\n\u0015google/rpc/code.proto\u0012\ngoogle.rpc*\u00b7\u0002\n\u0004Code\u0012\u0006\n\u0002OK\u0010\u0000\u0012\r\n\tCANCELLED\u0010\u0001\u0012\u000b\n\u0007UNKNOWN\u0010\u0002\u0012\u0014\n\u0010INVALID_ARGUMENT\u0010\u0003\u0012\u0015\n\u0011DEADLINE_EXCEEDED\u0010\u0004\u0012\r\n\tNOT_FOUND\u0010\u0005\u0012\u0012\n\u000eALREADY_EXISTS\u0010\u0006\u0012\u0015\n\u0011PERMISSION_DENIED\u0010\u0007\u0012\u0013\n\u000fUNAUTHENTICATED\u0010\u0010\u0012\u0016\n\u0012RESOURCE_EXHAUSTED\u0010\u0008\u0012\u0017\n\u0013FAILED_PRECONDITION\u0010\t\u0012\u000b\n\u0007ABORTED\u0010\n\u0012\u0010\n\u000cOUT_OF_RANGE\u0010\u000b\u0012\u0011\n\rUNIMPLEMENTED\u0010\u000c\u0012\u000c\n\u0008INTERNAL\u0010\r\u0012\u000f\n\u000bUNAVAILABLE\u0010\u000e\u0012\r\n\tDATA_LOSS\u0010\u000fBX\n\u000ecom.google.rpcB\tCodeProtoP\u0001Z3google.golang.org/genproto/googleapis/rpc/code;code\u00a2\u0002\u0003RPCb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/rpc/a;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/rpc/a;->a:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
