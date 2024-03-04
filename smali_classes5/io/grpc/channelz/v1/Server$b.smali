.class public final Lio/grpc/channelz/v1/Server$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/channelz/v1/Server$b;",
        ">;",
        "Lio/grpc/channelz/v1/k;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lio/grpc/channelz/v1/ServerRef;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/ServerRef;",
            "Lio/grpc/channelz/v1/ServerRef$b;",
            "Lio/grpc/channelz/v1/l;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lio/grpc/channelz/v1/ServerData;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/channelz/v1/ServerData;",
            "Lio/grpc/channelz/v1/ServerData$b;",
            "Lio/grpc/channelz/v1/j;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SocketRef;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/SocketRef;",
            "Lio/grpc/channelz/v1/SocketRef$b;",
            "Lio/grpc/channelz/v1/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lio/grpc/channelz/v1/Server$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lio/grpc/channelz/v1/Server$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/Server$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/Server$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/channelz/v1/Server$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/channelz/v1/Server$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/SocketRef;",
            "Lio/grpc/channelz/v1/SocketRef$b;",
            "Lio/grpc/channelz/v1/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    iget v2, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/channelz/v1/Server;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/channelz/v1/Server$b;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Server$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->Z()Lio/grpc/channelz/v1/Server$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->Y()Lio/grpc/channelz/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->Y()Lio/grpc/channelz/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/Server;

    const-class v2, Lio/grpc/channelz/v1/Server$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Server$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Server$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Server$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Server$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Server$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Server$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Server$b;

    return-object p1
.end method

.method public X()Lio/grpc/channelz/v1/Server;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->Y()Lio/grpc/channelz/v1/Server;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/channelz/v1/Server;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/channelz/v1/Server;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/Server;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/channelz/v1/Server;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/Server$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/channelz/v1/Server$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/channelz/v1/Server$b;->f:Lio/grpc/channelz/v1/ServerRef;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Server;->access$402(Lio/grpc/channelz/v1/Server;Lio/grpc/channelz/v1/ServerRef;)Lio/grpc/channelz/v1/ServerRef;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/channelz/v1/ServerRef;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Server;->access$402(Lio/grpc/channelz/v1/Server;Lio/grpc/channelz/v1/ServerRef;)Lio/grpc/channelz/v1/ServerRef;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/channelz/v1/Server$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/channelz/v1/Server$b;->h:Lio/grpc/channelz/v1/ServerData;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Server;->access$502(Lio/grpc/channelz/v1/Server;Lio/grpc/channelz/v1/ServerData;)Lio/grpc/channelz/v1/ServerData;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/channelz/v1/ServerData;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Server;->access$502(Lio/grpc/channelz/v1/Server;Lio/grpc/channelz/v1/ServerData;)Lio/grpc/channelz/v1/ServerData;

    .line 8
    :goto_1
    iget-object v1, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 9
    iget v1, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    .line 11
    iget v1, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    .line 12
    :cond_2
    iget-object v1, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Server;->access$602(Lio/grpc/channelz/v1/Server;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/Server;->access$602(Lio/grpc/channelz/v1/Server;Ljava/util/List;)Ljava/util/List;

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/channelz/v1/Server$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/channelz/v1/Server$b;

    return-object v0
.end method

.method public b0()Lio/grpc/channelz/v1/Server;
    .locals 1

    invoke-static {}, Lio/grpc/channelz/v1/Server;->getDefaultInstance()Lio/grpc/channelz/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->X()Lio/grpc/channelz/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->X()Lio/grpc/channelz/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Server$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Server$b;

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

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->Z()Lio/grpc/channelz/v1/Server$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Server$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Server$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lio/grpc/channelz/v1/ServerData;)Lio/grpc/channelz/v1/Server$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->h:Lio/grpc/channelz/v1/ServerData;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/channelz/v1/ServerData;->newBuilder(Lio/grpc/channelz/v1/ServerData;)Lio/grpc/channelz/v1/ServerData$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/ServerData$b;->g0(Lio/grpc/channelz/v1/ServerData;)Lio/grpc/channelz/v1/ServerData$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ServerData$b;->Y()Lio/grpc/channelz/v1/ServerData;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Server$b;->h:Lio/grpc/channelz/v1/ServerData;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/Server$b;->h:Lio/grpc/channelz/v1/ServerData;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->b0()Lio/grpc/channelz/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->b0()Lio/grpc/channelz/v1/Server;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->u:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Server$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/channelz/v1/Server;->access$900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Server;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Server$b;->j0(Lio/grpc/channelz/v1/Server;)Lio/grpc/channelz/v1/Server$b;

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

    check-cast p2, Lio/grpc/channelz/v1/Server;
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
    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Server$b;->j0(Lio/grpc/channelz/v1/Server;)Lio/grpc/channelz/v1/Server$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Server$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Server$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/channelz/v1/Server;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/channelz/v1/Server;

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Server$b;->j0(Lio/grpc/channelz/v1/Server;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/grpc/channelz/v1/Server;)Lio/grpc/channelz/v1/Server$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/channelz/v1/Server;->getDefaultInstance()Lio/grpc/channelz/v1/Server;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Server;->hasRef()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Server;->getRef()Lio/grpc/channelz/v1/ServerRef;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Server$b;->k0(Lio/grpc/channelz/v1/ServerRef;)Lio/grpc/channelz/v1/Server$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Server;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Server;->getData()Lio/grpc/channelz/v1/ServerData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/Server$b;->g0(Lio/grpc/channelz/v1/ServerData;)Lio/grpc/channelz/v1/Server$b;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    if-nez v0, :cond_4

    .line 7
    invoke-static {p1}, Lio/grpc/channelz/v1/Server;->access$600(Lio/grpc/channelz/v1/Server;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p1}, Lio/grpc/channelz/v1/Server;->access$600(Lio/grpc/channelz/v1/Server;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    .line 10
    iget v0, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lio/grpc/channelz/v1/Server$b;->a0()V

    .line 12
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/channelz/v1/Server;->access$600(Lio/grpc/channelz/v1/Server;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {p1}, Lio/grpc/channelz/v1/Server;->access$600(Lio/grpc/channelz/v1/Server;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    .line 18
    invoke-static {p1}, Lio/grpc/channelz/v1/Server;->access$600(Lio/grpc/channelz/v1/Server;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/channelz/v1/Server$b;->j:Ljava/util/List;

    .line 19
    iget v1, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/channelz/v1/Server$b;->e:I

    .line 20
    invoke-static {}, Lio/grpc/channelz/v1/Server;->access$700()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-direct {p0}, Lio/grpc/channelz/v1/Server$b;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 22
    :cond_6
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->k:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/channelz/v1/Server;->access$600(Lio/grpc/channelz/v1/Server;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 23
    :cond_7
    :goto_1
    invoke-static {p1}, Lio/grpc/channelz/v1/Server;->access$800(Lio/grpc/channelz/v1/Server;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Server$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Server$b;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lio/grpc/channelz/v1/ServerRef;)Lio/grpc/channelz/v1/Server$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/Server$b;->f:Lio/grpc/channelz/v1/ServerRef;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/channelz/v1/ServerRef;->newBuilder(Lio/grpc/channelz/v1/ServerRef;)Lio/grpc/channelz/v1/ServerRef$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/channelz/v1/ServerRef$b;->g0(Lio/grpc/channelz/v1/ServerRef;)Lio/grpc/channelz/v1/ServerRef$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ServerRef$b;->Y()Lio/grpc/channelz/v1/ServerRef;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Server$b;->f:Lio/grpc/channelz/v1/ServerRef;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/Server$b;->f:Lio/grpc/channelz/v1/ServerRef;

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

.method public final l0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Server$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Server$b;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/Server$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Server$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Server$b;->Z()Lio/grpc/channelz/v1/Server$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Server$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/Server$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/Server$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Server$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Server$b;->l0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/Server$b;

    move-result-object p1

    return-object p1
.end method
