.class Lio/grpc/binarylog/v1/GrpcLogEntry$Logger$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/u0$d<",
        "Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lcom/google/protobuf/u0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$Logger$a;->b(I)Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;
    .locals 0

    invoke-static {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;->forNumber(I)Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;

    move-result-object p1

    return-object p1
.end method
