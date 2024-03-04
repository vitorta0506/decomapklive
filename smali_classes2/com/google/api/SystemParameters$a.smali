.class final Lcom/google/api/SystemParameters$a;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SystemParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/c<",
        "Lcom/google/api/SystemParameters;",
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
.method public G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/SystemParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lcom/google/api/SystemParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/api/SystemParameters;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/api/SystemParameters$a;)V

    return-object v0
.end method

.method public bridge synthetic m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/SystemParameters$a;->G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/SystemParameters;

    move-result-object p1

    return-object p1
.end method
