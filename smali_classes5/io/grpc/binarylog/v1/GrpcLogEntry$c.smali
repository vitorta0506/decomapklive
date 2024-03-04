.class public final Lio/grpc/binarylog/v1/GrpcLogEntry$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/binarylog/v1/GrpcLogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/binarylog/v1/GrpcLogEntry$c;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/Timestamp;

.field private h:Lcom/google/protobuf/q2;
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

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/binarylog/v1/ClientHeader;",
            "Lio/grpc/binarylog/v1/ClientHeader$b;",
            "Lio/grpc/binarylog/v1/c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/binarylog/v1/ServerHeader;",
            "Lio/grpc/binarylog/v1/ServerHeader$b;",
            "Lio/grpc/binarylog/v1/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/binarylog/v1/Message;",
            "Lio/grpc/binarylog/v1/Message$b;",
            "Lio/grpc/binarylog/v1/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/binarylog/v1/Trailer;",
            "Lio/grpc/binarylog/v1/Trailer$b;",
            "Lio/grpc/binarylog/v1/h;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Lio/grpc/binarylog/v1/Address;

.field private s:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/binarylog/v1/Address;",
            "Lio/grpc/binarylog/v1/Address$b;",
            "Lio/grpc/binarylog/v1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    .line 5
    iput v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->k:I

    .line 6
    iput v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->l:I

    .line 7
    invoke-direct {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    .line 10
    iput p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->k:I

    .line 11
    iput p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->l:I

    .line 12
    invoke-direct {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/binarylog/v1/GrpcLogEntry$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/binarylog/v1/GrpcLogEntry$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->Z()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->Y()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->Y()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/binarylog/v1/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/binarylog/v1/GrpcLogEntry;

    const-class v2, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->g0(Lcom/google/protobuf/l1;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->v0(Lcom/google/protobuf/h3;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    return-object p1
.end method

.method public X()Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->Y()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/binarylog/v1/GrpcLogEntry$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->g:Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$402(Lio/grpc/binarylog/v1/GrpcLogEntry;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$402(Lio/grpc/binarylog/v1/GrpcLogEntry;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;

    .line 5
    :goto_0
    iget-wide v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->i:J

    invoke-static {v0, v1, v2}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$502(Lio/grpc/binarylog/v1/GrpcLogEntry;J)J

    .line 6
    iget-wide v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->j:J

    invoke-static {v0, v1, v2}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$602(Lio/grpc/binarylog/v1/GrpcLogEntry;J)J

    .line 7
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->k:I

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$702(Lio/grpc/binarylog/v1/GrpcLogEntry;I)I

    .line 8
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->l:I

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$802(Lio/grpc/binarylog/v1/GrpcLogEntry;I)I

    .line 9
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$902(Lio/grpc/binarylog/v1/GrpcLogEntry;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$902(Lio/grpc/binarylog/v1/GrpcLogEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    :goto_1
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 14
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 15
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$902(Lio/grpc/binarylog/v1/GrpcLogEntry;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$902(Lio/grpc/binarylog/v1/GrpcLogEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_4
    :goto_2
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 18
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->o:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 19
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$902(Lio/grpc/binarylog/v1/GrpcLogEntry;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$902(Lio/grpc/binarylog/v1/GrpcLogEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_6
    :goto_3
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    .line 22
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 23
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$902(Lio/grpc/binarylog/v1/GrpcLogEntry;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 24
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$902(Lio/grpc/binarylog/v1/GrpcLogEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_8
    :goto_4
    iget-boolean v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->q:Z

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$1002(Lio/grpc/binarylog/v1/GrpcLogEntry;Z)Z

    .line 26
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->s:Lcom/google/protobuf/q2;

    if-nez v1, :cond_9

    .line 27
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->r:Lio/grpc/binarylog/v1/Address;

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$1102(Lio/grpc/binarylog/v1/GrpcLogEntry;Lio/grpc/binarylog/v1/Address;)Lio/grpc/binarylog/v1/Address;

    goto :goto_5

    .line 28
    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/binarylog/v1/Address;

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$1102(Lio/grpc/binarylog/v1/GrpcLogEntry;Lio/grpc/binarylog/v1/Address;)Lio/grpc/binarylog/v1/Address;

    .line 29
    :goto_5
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$1202(Lio/grpc/binarylog/v1/GrpcLogEntry;I)I

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    return-object v0
.end method

.method public a0()Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1

    invoke-static {}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getDefaultInstance()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->X()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->X()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

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

    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->Z()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/binarylog/v1/ClientHeader;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->m:Lcom/google/protobuf/q2;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/binarylog/v1/ClientHeader;->getDefaultInstance()Lio/grpc/binarylog/v1/ClientHeader;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/ClientHeader;

    invoke-static {v0}, Lio/grpc/binarylog/v1/ClientHeader;->newBuilder(Lio/grpc/binarylog/v1/ClientHeader;)Lio/grpc/binarylog/v1/ClientHeader$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/binarylog/v1/ClientHeader$b;->g0(Lio/grpc/binarylog/v1/ClientHeader;)Lio/grpc/binarylog/v1/ClientHeader$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/binarylog/v1/ClientHeader$b;->Y()Lio/grpc/binarylog/v1/ClientHeader;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->m:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$1400()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/binarylog/v1/GrpcLogEntry;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->h0(Lio/grpc/binarylog/v1/GrpcLogEntry;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

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

    check-cast p2, Lio/grpc/binarylog/v1/GrpcLogEntry;
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
    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->h0(Lio/grpc/binarylog/v1/GrpcLogEntry;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->v0(Lcom/google/protobuf/h3;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/binarylog/v1/GrpcLogEntry;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/binarylog/v1/GrpcLogEntry;

    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->h0(Lio/grpc/binarylog/v1/GrpcLogEntry;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

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
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->a0()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->a0()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/binarylog/v1/b;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/binarylog/v1/GrpcLogEntry;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getDefaultInstance()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->l0(Lcom/google/protobuf/Timestamp;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getCallId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getCallId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->o0(J)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getSequenceIdWithinCall()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getSequenceIdWithinCall()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->t0(J)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 8
    :cond_3
    invoke-static {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$700(Lio/grpc/binarylog/v1/GrpcLogEntry;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->u0(I)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 10
    :cond_4
    invoke-static {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$800(Lio/grpc/binarylog/v1/GrpcLogEntry;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getLoggerValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->r0(I)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 12
    :cond_5
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPayloadTruncated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPayloadTruncated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->s0(Z)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 14
    :cond_6
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasPeer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPeer()Lio/grpc/binarylog/v1/Address;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->j0(Lio/grpc/binarylog/v1/Address;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 16
    :cond_7
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPayloadCase()Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    goto :goto_0

    .line 17
    :cond_8
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTrailer()Lio/grpc/binarylog/v1/Trailer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->m0(Lio/grpc/binarylog/v1/Trailer;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    goto :goto_0

    .line 18
    :cond_9
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getMessage()Lio/grpc/binarylog/v1/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->i0(Lio/grpc/binarylog/v1/Message;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    goto :goto_0

    .line 19
    :cond_a
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getServerHeader()Lio/grpc/binarylog/v1/ServerHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->k0(Lio/grpc/binarylog/v1/ServerHeader;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    goto :goto_0

    .line 20
    :cond_b
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getClientHeader()Lio/grpc/binarylog/v1/ClientHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->d0(Lio/grpc/binarylog/v1/ClientHeader;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 21
    :goto_0
    invoke-static {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->access$1300(Lio/grpc/binarylog/v1/GrpcLogEntry;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 22
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

    invoke-virtual {p0, p1, p2}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/binarylog/v1/Message;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->o:Lcom/google/protobuf/q2;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/binarylog/v1/Message;->getDefaultInstance()Lio/grpc/binarylog/v1/Message;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/Message;

    invoke-static {v0}, Lio/grpc/binarylog/v1/Message;->newBuilder(Lio/grpc/binarylog/v1/Message;)Lio/grpc/binarylog/v1/Message$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/binarylog/v1/Message$b;->g0(Lio/grpc/binarylog/v1/Message;)Lio/grpc/binarylog/v1/Message$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/binarylog/v1/Message$b;->Y()Lio/grpc/binarylog/v1/Message;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->o:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    return-object p0
.end method

.method public j0(Lio/grpc/binarylog/v1/Address;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->s:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->r:Lio/grpc/binarylog/v1/Address;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/binarylog/v1/Address;->newBuilder(Lio/grpc/binarylog/v1/Address;)Lio/grpc/binarylog/v1/Address$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/binarylog/v1/Address$b;->g0(Lio/grpc/binarylog/v1/Address;)Lio/grpc/binarylog/v1/Address$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/binarylog/v1/Address$b;->Y()Lio/grpc/binarylog/v1/Address;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->r:Lio/grpc/binarylog/v1/Address;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->r:Lio/grpc/binarylog/v1/Address;

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

.method public k0(Lio/grpc/binarylog/v1/ServerHeader;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->n:Lcom/google/protobuf/q2;

    const/4 v1, 0x7

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/binarylog/v1/ServerHeader;->getDefaultInstance()Lio/grpc/binarylog/v1/ServerHeader;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/ServerHeader;

    invoke-static {v0}, Lio/grpc/binarylog/v1/ServerHeader;->newBuilder(Lio/grpc/binarylog/v1/ServerHeader;)Lio/grpc/binarylog/v1/ServerHeader$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/binarylog/v1/ServerHeader$b;->g0(Lio/grpc/binarylog/v1/ServerHeader;)Lio/grpc/binarylog/v1/ServerHeader$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/binarylog/v1/ServerHeader$b;->Y()Lio/grpc/binarylog/v1/ServerHeader;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->n:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/Timestamp;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->g:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->g:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->g:Lcom/google/protobuf/Timestamp;

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

.method public m0(Lio/grpc/binarylog/v1/Trailer;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->p:Lcom/google/protobuf/q2;

    const/16 v1, 0x9

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/binarylog/v1/Trailer;->getDefaultInstance()Lio/grpc/binarylog/v1/Trailer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/Trailer;

    invoke-static {v0}, Lio/grpc/binarylog/v1/Trailer;->newBuilder(Lio/grpc/binarylog/v1/Trailer;)Lio/grpc/binarylog/v1/Trailer$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/binarylog/v1/Trailer$b;->g0(Lio/grpc/binarylog/v1/Trailer;)Lio/grpc/binarylog/v1/Trailer$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/binarylog/v1/Trailer$b;->Y()Lio/grpc/binarylog/v1/Trailer;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->p:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e:I

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->Z()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    return-object p1
.end method

.method public o0(J)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->i:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    return-object p1
.end method

.method public r0(I)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->l:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public s0(Z)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->q:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public t0(J)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->j:J

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->k:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->g0(Lcom/google/protobuf/l1;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public final v0(Lcom/google/protobuf/h3;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->n0(Lcom/google/protobuf/h3;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method
