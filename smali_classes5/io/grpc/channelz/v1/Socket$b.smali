.class public final Lio/grpc/channelz/v1/Socket$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/channelz/v1/Socket$b;",
        ">;",
        "Lio/grpc/channelz/v1/o;"
    }
.end annotation


# instance fields
.field private e:Lio/grpc/channelz/v1/SocketRef;

.field private f:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/SocketRef;",
            "Lio/grpc/channelz/v1/SocketRef$b;",
            "Lio/grpc/channelz/v1/p;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lio/grpc/channelz/v1/SocketData;

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/SocketData;",
            "Lio/grpc/channelz/v1/SocketData$b;",
            "Lio/grpc/channelz/v1/m;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lio/grpc/channelz/v1/Address;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/Address;",
            "Lio/grpc/channelz/v1/Address$c;",
            "Lio/grpc/channelz/v1/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lio/grpc/channelz/v1/Address;

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/Address;",
            "Lio/grpc/channelz/v1/Address$c;",
            "Lio/grpc/channelz/v1/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lio/grpc/channelz/v1/Security;

.field private n:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/Security;",
            "Lio/grpc/channelz/v1/Security$c;",
            "Lio/grpc/channelz/v1/i;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->o:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lio/grpc/channelz/v1/Socket$b;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->o:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lio/grpc/channelz/v1/Socket$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/Socket$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/Socket$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/channelz/v1/Socket$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/channelz/v1/Socket$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/channelz/v1/Socket;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Socket$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->Z()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->Y()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->Y()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/Socket;

    const-class v2, Lio/grpc/channelz/v1/Socket$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Socket$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket$b;->g0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Socket$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Socket$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Socket$b;

    return-object p1
.end method

.method public X()Lio/grpc/channelz/v1/Socket;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->Y()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/channelz/v1/Socket;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/channelz/v1/Socket;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/Socket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/channelz/v1/Socket;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/Socket$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->f:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->e:Lio/grpc/channelz/v1/SocketRef;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$402(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/SocketRef;)Lio/grpc/channelz/v1/SocketRef;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/channelz/v1/SocketRef;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$402(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/SocketRef;)Lio/grpc/channelz/v1/SocketRef;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->g:Lio/grpc/channelz/v1/SocketData;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$502(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/channelz/v1/SocketData;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$502(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData;

    .line 8
    :goto_1
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->i:Lio/grpc/channelz/v1/Address;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$602(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/channelz/v1/Address;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$602(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address;

    .line 11
    :goto_2
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->k:Lio/grpc/channelz/v1/Address;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$702(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address;

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/channelz/v1/Address;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$702(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address;

    .line 14
    :goto_3
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->m:Lio/grpc/channelz/v1/Security;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$802(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/Security;)Lio/grpc/channelz/v1/Security;

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/channelz/v1/Security;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$802(Lio/grpc/channelz/v1/Socket;Lio/grpc/channelz/v1/Security;)Lio/grpc/channelz/v1/Security;

    .line 17
    :goto_4
    iget-object v1, p0, Lio/grpc/channelz/v1/Socket$b;->o:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Socket;->access$902(Lio/grpc/channelz/v1/Socket;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/channelz/v1/Socket$b;

    return-object v0
.end method

.method public a0()Lio/grpc/channelz/v1/Socket;
    .locals 1

    invoke-static {}, Lio/grpc/channelz/v1/Socket;->getDefaultInstance()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->X()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->X()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Socket$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->Z()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->g:Lio/grpc/channelz/v1/SocketData;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/channelz/v1/SocketData;->newBuilder(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/SocketData$b;->i0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData$b;->Y()Lio/grpc/channelz/v1/SocketData;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->g:Lio/grpc/channelz/v1/SocketData;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->g:Lio/grpc/channelz/v1/SocketData;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/channelz/v1/Socket;->access$1100()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Socket;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket$b;->h0(Lio/grpc/channelz/v1/Socket;)Lio/grpc/channelz/v1/Socket$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/o1;

    move-result-object p2

    check-cast p2, Lio/grpc/channelz/v1/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Socket$b;->h0(Lio/grpc/channelz/v1/Socket;)Lio/grpc/channelz/v1/Socket$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Socket$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket$b;->o0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/channelz/v1/Socket;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/channelz/v1/Socket;

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket$b;->h0(Lio/grpc/channelz/v1/Socket;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->a0()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->a0()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->y:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/channelz/v1/Socket;)Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/channelz/v1/Socket;->getDefaultInstance()Lio/grpc/channelz/v1/Socket;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getRef()Lio/grpc/channelz/v1/SocketRef;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Socket$b;->j0(Lio/grpc/channelz/v1/SocketRef;)Lio/grpc/channelz/v1/Socket$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getData()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Socket$b;->d0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/Socket$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasLocal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getLocal()Lio/grpc/channelz/v1/Address;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Socket$b;->i0(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Socket$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasRemote()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getRemote()Lio/grpc/channelz/v1/Address;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Socket$b;->k0(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Socket$b;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->hasSecurity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getSecurity()Lio/grpc/channelz/v1/Security;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Socket$b;->l0(Lio/grpc/channelz/v1/Security;)Lio/grpc/channelz/v1/Socket$b;

    .line 12
    :cond_5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Socket;->getRemoteName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    invoke-static {p1}, Lio/grpc/channelz/v1/Socket;->access$900(Lio/grpc/channelz/v1/Socket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->o:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 15
    :cond_6
    invoke-static {p1}, Lio/grpc/channelz/v1/Socket;->access$1000(Lio/grpc/channelz/v1/Socket;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Socket$b;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Socket$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->i:Lio/grpc/channelz/v1/Address;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/channelz/v1/Address;->newBuilder(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/Address$c;->g0(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Address$c;->Y()Lio/grpc/channelz/v1/Address;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->i:Lio/grpc/channelz/v1/Address;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->i:Lio/grpc/channelz/v1/Address;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public j0(Lio/grpc/channelz/v1/SocketRef;)Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->f:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->e:Lio/grpc/channelz/v1/SocketRef;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/channelz/v1/SocketRef;->newBuilder(Lio/grpc/channelz/v1/SocketRef;)Lio/grpc/channelz/v1/SocketRef$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/SocketRef$b;->g0(Lio/grpc/channelz/v1/SocketRef;)Lio/grpc/channelz/v1/SocketRef$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketRef$b;->Y()Lio/grpc/channelz/v1/SocketRef;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->e:Lio/grpc/channelz/v1/SocketRef;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->e:Lio/grpc/channelz/v1/SocketRef;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public k0(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->k:Lio/grpc/channelz/v1/Address;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/channelz/v1/Address;->newBuilder(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/Address$c;->g0(Lio/grpc/channelz/v1/Address;)Lio/grpc/channelz/v1/Address$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Address$c;->Y()Lio/grpc/channelz/v1/Address;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->k:Lio/grpc/channelz/v1/Address;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->k:Lio/grpc/channelz/v1/Address;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public l0(Lio/grpc/channelz/v1/Security;)Lio/grpc/channelz/v1/Socket$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/Socket$b;->m:Lio/grpc/channelz/v1/Security;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/channelz/v1/Security;->newBuilder(Lio/grpc/channelz/v1/Security;)Lio/grpc/channelz/v1/Security$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/Security$c;->g0(Lio/grpc/channelz/v1/Security;)Lio/grpc/channelz/v1/Security$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Security$c;->Y()Lio/grpc/channelz/v1/Security;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->m:Lio/grpc/channelz/v1/Security;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/Socket$b;->m:Lio/grpc/channelz/v1/Security;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    :goto_1
    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Socket$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Socket$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Socket$b;->Z()Lio/grpc/channelz/v1/Socket$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Socket$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Socket$b;

    return-object p1
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Socket$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Socket$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Socket$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket$b;->g0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Socket$b;->m0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Socket$b;

    move-result-object p1

    return-object p1
.end method
