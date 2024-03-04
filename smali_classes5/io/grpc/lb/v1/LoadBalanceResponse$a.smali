.class Lio/grpc/lb/v1/LoadBalanceResponse$a;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/lb/v1/LoadBalanceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/c<",
        "Lio/grpc/lb/v1/LoadBalanceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/LoadBalanceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lio/grpc/lb/v1/LoadBalanceResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/grpc/lb/v1/LoadBalanceResponse;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/lb/v1/LoadBalanceResponse$a;)V

    return-object v0
.end method

.method public bridge synthetic m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/lb/v1/LoadBalanceResponse$a;->G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/lb/v1/LoadBalanceResponse;

    move-result-object p1

    return-object p1
.end method
