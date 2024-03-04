.class public final Lio/grpc/channelz/v1/SocketData$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/SocketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/channelz/v1/SocketData$b;",
        ">;",
        "Lio/grpc/channelz/v1/m;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:Lcom/google/protobuf/Timestamp;

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Timestamp;",
            "Lcom/google/protobuf/Timestamp$b;",
            "Lcom/google/protobuf/z2;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/protobuf/Timestamp;

.field private o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Timestamp;",
            "Lcom/google/protobuf/Timestamp$b;",
            "Lcom/google/protobuf/z2;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/protobuf/Timestamp;

.field private q:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Timestamp;",
            "Lcom/google/protobuf/Timestamp$b;",
            "Lcom/google/protobuf/z2;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/protobuf/Timestamp;

.field private s:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Timestamp;",
            "Lcom/google/protobuf/Timestamp$b;",
            "Lcom/google/protobuf/z2;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/google/protobuf/Int64Value;

.field private u:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Int64Value;",
            "Lcom/google/protobuf/Int64Value$b;",
            "Lcom/google/protobuf/s0;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/google/protobuf/Int64Value;

.field private w:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Int64Value;",
            "Lcom/google/protobuf/Int64Value$b;",
            "Lcom/google/protobuf/s0;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SocketOption;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/SocketOption;",
            "Lio/grpc/channelz/v1/SocketOption$b;",
            "Lio/grpc/channelz/v1/n;",
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

    iput-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lio/grpc/channelz/v1/SocketData$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lio/grpc/channelz/v1/SocketData$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/SocketData$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/channelz/v1/SocketData$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/channelz/v1/SocketData$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/channelz/v1/SocketOption;",
            "Lio/grpc/channelz/v1/SocketOption$b;",
            "Lio/grpc/channelz/v1/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    iget v2, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

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

    iput-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/channelz/v1/SocketData;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/channelz/v1/SocketData$b;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/SocketData$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->Z()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->Y()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->Y()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/SocketData;

    const-class v2, Lio/grpc/channelz/v1/SocketData$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/SocketData$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/SocketData$b;->r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;->z0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/SocketData$b;

    return-object p1
.end method

.method public X()Lio/grpc/channelz/v1/SocketData;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->Y()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/channelz/v1/SocketData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/channelz/v1/SocketData;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/SocketData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/channelz/v1/SocketData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/SocketData$a;)V

    .line 2
    iget-wide v1, p0, Lio/grpc/channelz/v1/SocketData$b;->f:J

    invoke-static {v0, v1, v2}, Lio/grpc/channelz/v1/SocketData;->access$402(Lio/grpc/channelz/v1/SocketData;J)J

    .line 3
    iget-wide v1, p0, Lio/grpc/channelz/v1/SocketData$b;->g:J

    invoke-static {v0, v1, v2}, Lio/grpc/channelz/v1/SocketData;->access$502(Lio/grpc/channelz/v1/SocketData;J)J

    .line 4
    iget-wide v1, p0, Lio/grpc/channelz/v1/SocketData$b;->h:J

    invoke-static {v0, v1, v2}, Lio/grpc/channelz/v1/SocketData;->access$602(Lio/grpc/channelz/v1/SocketData;J)J

    .line 5
    iget-wide v1, p0, Lio/grpc/channelz/v1/SocketData$b;->i:J

    invoke-static {v0, v1, v2}, Lio/grpc/channelz/v1/SocketData;->access$702(Lio/grpc/channelz/v1/SocketData;J)J

    .line 6
    iget-wide v1, p0, Lio/grpc/channelz/v1/SocketData$b;->j:J

    invoke-static {v0, v1, v2}, Lio/grpc/channelz/v1/SocketData;->access$802(Lio/grpc/channelz/v1/SocketData;J)J

    .line 7
    iget-wide v1, p0, Lio/grpc/channelz/v1/SocketData$b;->k:J

    invoke-static {v0, v1, v2}, Lio/grpc/channelz/v1/SocketData;->access$902(Lio/grpc/channelz/v1/SocketData;J)J

    .line 8
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->l:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1002(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1002(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 11
    :goto_0
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->o:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->n:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1102(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1102(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 14
    :goto_1
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->q:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 15
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->p:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1202(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1202(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 17
    :goto_2
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->s:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 18
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->r:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1302(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1302(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 20
    :goto_3
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->u:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 21
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->t:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1402(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value;

    goto :goto_4

    .line 22
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Int64Value;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1402(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value;

    .line 23
    :goto_4
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->w:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 24
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->v:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1502(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value;

    goto :goto_5

    .line 25
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Int64Value;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1502(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value;

    .line 26
    :goto_5
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    if-nez v1, :cond_7

    .line 27
    iget v1, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 28
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    .line 29
    iget v1, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    .line 30
    :cond_6
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1602(Lio/grpc/channelz/v1/SocketData;Ljava/util/List;)Ljava/util/List;

    goto :goto_6

    .line 31
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/channelz/v1/SocketData;->access$1602(Lio/grpc/channelz/v1/SocketData;Ljava/util/List;)Ljava/util/List;

    .line 32
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/channelz/v1/SocketData$b;

    return-object v0
.end method

.method public b0()Lio/grpc/channelz/v1/SocketData;
    .locals 1

    invoke-static {}, Lio/grpc/channelz/v1/SocketData;->getDefaultInstance()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->X()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->X()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/SocketData$b;->r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/SocketData$b;

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

    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->Z()Lio/grpc/channelz/v1/SocketData$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/SocketData$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;->z0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/channelz/v1/SocketData;->access$1900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/SocketData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;->i0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;

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

    check-cast p2, Lio/grpc/channelz/v1/SocketData;
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
    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/SocketData$b;->i0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->b0()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->b0()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->A:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/channelz/v1/SocketData;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/channelz/v1/SocketData;

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;->i0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/SocketData$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/channelz/v1/SocketData;->getDefaultInstance()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getStreamsStarted()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getStreamsStarted()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/channelz/v1/SocketData$b;->x0(J)Lio/grpc/channelz/v1/SocketData$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getStreamsSucceeded()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getStreamsSucceeded()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/channelz/v1/SocketData$b;->y0(J)Lio/grpc/channelz/v1/SocketData$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getStreamsFailed()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getStreamsFailed()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/channelz/v1/SocketData$b;->v0(J)Lio/grpc/channelz/v1/SocketData$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getMessagesSent()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getMessagesSent()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/channelz/v1/SocketData$b;->u0(J)Lio/grpc/channelz/v1/SocketData$b;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getMessagesReceived()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getMessagesReceived()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/channelz/v1/SocketData$b;->t0(J)Lio/grpc/channelz/v1/SocketData$b;

    .line 12
    :cond_5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getKeepAlivesSent()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 13
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getKeepAlivesSent()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/channelz/v1/SocketData$b;->s0(J)Lio/grpc/channelz/v1/SocketData$b;

    .line 14
    :cond_6
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLastLocalStreamCreatedTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLastLocalStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/SocketData$b;->j0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/SocketData$b;

    .line 16
    :cond_7
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLastRemoteStreamCreatedTimestamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLastRemoteStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/SocketData$b;->m0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/SocketData$b;

    .line 18
    :cond_8
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageSentTimestamp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLastMessageSentTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/SocketData$b;->l0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/SocketData$b;

    .line 20
    :cond_9
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageReceivedTimestamp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLastMessageReceivedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/SocketData$b;->k0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/SocketData$b;

    .line 22
    :cond_a
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLocalFlowControlWindow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLocalFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/SocketData$b;->n0(Lcom/google/protobuf/Int64Value;)Lio/grpc/channelz/v1/SocketData$b;

    .line 24
    :cond_b
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasRemoteFlowControlWindow()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getRemoteFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/channelz/v1/SocketData$b;->o0(Lcom/google/protobuf/Int64Value;)Lio/grpc/channelz/v1/SocketData$b;

    .line 26
    :cond_c
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    if-nez v0, :cond_e

    .line 27
    invoke-static {p1}, Lio/grpc/channelz/v1/SocketData;->access$1600(Lio/grpc/channelz/v1/SocketData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 28
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    invoke-static {p1}, Lio/grpc/channelz/v1/SocketData;->access$1600(Lio/grpc/channelz/v1/SocketData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    .line 30
    iget v0, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    goto :goto_0

    .line 31
    :cond_d
    invoke-direct {p0}, Lio/grpc/channelz/v1/SocketData$b;->a0()V

    .line 32
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/channelz/v1/SocketData;->access$1600(Lio/grpc/channelz/v1/SocketData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 34
    :cond_e
    invoke-static {p1}, Lio/grpc/channelz/v1/SocketData;->access$1600(Lio/grpc/channelz/v1/SocketData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 35
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 36
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    .line 38
    invoke-static {p1}, Lio/grpc/channelz/v1/SocketData;->access$1600(Lio/grpc/channelz/v1/SocketData;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/channelz/v1/SocketData$b;->x:Ljava/util/List;

    .line 39
    iget v1, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/channelz/v1/SocketData$b;->e:I

    .line 40
    invoke-static {}, Lio/grpc/channelz/v1/SocketData;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 41
    invoke-direct {p0}, Lio/grpc/channelz/v1/SocketData$b;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_f
    iput-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 42
    :cond_10
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->y:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/channelz/v1/SocketData;->access$1600(Lio/grpc/channelz/v1/SocketData;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 43
    :cond_11
    :goto_1
    invoke-static {p1}, Lio/grpc/channelz/v1/SocketData;->access$1800(Lio/grpc/channelz/v1/SocketData;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/SocketData$b;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->l:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->l:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->l:Lcom/google/protobuf/Timestamp;

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

.method public k0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->s:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->r:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->r:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->r:Lcom/google/protobuf/Timestamp;

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

.method public l0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->q:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->p:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->p:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->p:Lcom/google/protobuf/Timestamp;

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

.method public m0(Lcom/google/protobuf/Timestamp;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->o:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->n:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->n:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->n:Lcom/google/protobuf/Timestamp;

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

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData$b;->Z()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Int64Value;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->u:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->t:Lcom/google/protobuf/Int64Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Int64Value;->newBuilder(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Int64Value$b;->e0(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Int64Value$b;->Y()Lcom/google/protobuf/Int64Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->t:Lcom/google/protobuf/Int64Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->t:Lcom/google/protobuf/Int64Value;

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

.method public o0(Lcom/google/protobuf/Int64Value;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->w:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData$b;->v:Lcom/google/protobuf/Int64Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Int64Value;->newBuilder(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Int64Value$b;->e0(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Int64Value$b;->Y()Lcom/google/protobuf/Int64Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->v:Lcom/google/protobuf/Int64Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData$b;->v:Lcom/google/protobuf/Int64Value;

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

.method public final q0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/SocketData$b;

    return-object p1
.end method

.method public r0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/SocketData$b;

    return-object p1
.end method

.method public s0(J)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData$b;->k:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public t0(J)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData$b;->j:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/channelz/v1/SocketData$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(J)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData$b;->i:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public v0(J)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData$b;->h:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public x0(J)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData$b;->f:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public y0(J)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData$b;->g:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public final z0(Lcom/google/protobuf/h3;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/SocketData$b;

    return-object p1
.end method
