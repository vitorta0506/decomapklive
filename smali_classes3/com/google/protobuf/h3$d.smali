.class public final Lcom/google/protobuf/h3$d;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/c<",
        "Lcom/google/protobuf/h3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object p2

    .line 2
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/protobuf/h3$b;->m(Lcom/google/protobuf/p;)Lcom/google/protobuf/h3$b;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/h3$b;->e()Lcom/google/protobuf/h3;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2}, Lcom/google/protobuf/h3$b;->e()Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p2}, Lcom/google/protobuf/h3$b;->e()Lcom/google/protobuf/h3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/h3$d;->G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/h3;

    move-result-object p1

    return-object p1
.end method
