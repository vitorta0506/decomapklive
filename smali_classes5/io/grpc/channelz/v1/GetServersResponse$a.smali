.class Lio/grpc/channelz/v1/GetServersResponse$a;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/GetServersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/c<",
        "Lio/grpc/channelz/v1/GetServersResponse;",
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
.method public G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/GetServersResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lio/grpc/channelz/v1/GetServersResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/grpc/channelz/v1/GetServersResponse;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/channelz/v1/GetServersResponse$a;)V

    return-object v0
.end method

.method public bridge synthetic m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/GetServersResponse$a;->G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/GetServersResponse;

    move-result-object p1

    return-object p1
.end method
