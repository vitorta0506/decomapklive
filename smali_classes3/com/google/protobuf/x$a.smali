.class Lcom/google/protobuf/x$a;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/x;->getParserForType()Lcom/google/protobuf/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/c<",
        "Lcom/google/protobuf/x;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/protobuf/x;


# direct methods
.method constructor <init>(Lcom/google/protobuf/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/x$a;->b:Lcom/google/protobuf/x;

    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$a;->b:Lcom/google/protobuf/x;

    invoke-static {v0}, Lcom/google/protobuf/x;->a(Lcom/google/protobuf/x;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/x;->i(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x$b;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/a$a;->u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/x$b;->D()Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0}, Lcom/google/protobuf/x$b;->D()Lcom/google/protobuf/x;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/x$b;->D()Lcom/google/protobuf/x;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/x$a;->G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method
