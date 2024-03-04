.class public final Lcom/google/logging/type/HttpRequest$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/logging/type/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/logging/type/HttpRequest$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:J

.field private h:I

.field private i:J

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Lcom/google/protobuf/Duration;

.field private o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Duration;",
            "Lcom/google/protobuf/Duration$b;",
            "Lcom/google/protobuf/v;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:J

.field private t:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->e:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->f:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->j:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->k:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->l:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->m:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->t:Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/logging/type/HttpRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest$b;->e:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest$b;->f:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest$b;->j:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest$b;->k:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest$b;->l:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest$b;->m:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest$b;->t:Ljava/lang/Object;

    .line 20
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/logging/type/HttpRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lcom/google/logging/type/HttpRequest;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/logging/type/HttpRequest$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->Z()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->Y()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->Y()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/logging/type/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/logging/type/HttpRequest;

    const-class v2, Lcom/google/logging/type/HttpRequest$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/logging/type/HttpRequest$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest$b;->i0(Lcom/google/protobuf/h3;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest$b;->g0(Lcom/google/protobuf/l1;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/logging/type/HttpRequest$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest$b;->s0(Lcom/google/protobuf/h3;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/logging/type/HttpRequest$b;

    return-object p1
.end method

.method public X()Lcom/google/logging/type/HttpRequest;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->Y()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/logging/type/HttpRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/logging/type/HttpRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/logging/type/HttpRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/logging/type/HttpRequest$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest$b;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$402(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$502(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v1, p0, Lcom/google/logging/type/HttpRequest$b;->g:J

    invoke-static {v0, v1, v2}, Lcom/google/logging/type/HttpRequest;->access$602(Lcom/google/logging/type/HttpRequest;J)J

    .line 5
    iget v1, p0, Lcom/google/logging/type/HttpRequest$b;->h:I

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$702(Lcom/google/logging/type/HttpRequest;I)I

    .line 6
    iget-wide v1, p0, Lcom/google/logging/type/HttpRequest$b;->i:J

    invoke-static {v0, v1, v2}, Lcom/google/logging/type/HttpRequest;->access$802(Lcom/google/logging/type/HttpRequest;J)J

    .line 7
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$902(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest$b;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$1002(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest$b;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$1102(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest$b;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$1202(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest$b;->o:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest$b;->n:Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$1302(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$1302(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 14
    :goto_0
    iget-boolean v1, p0, Lcom/google/logging/type/HttpRequest$b;->p:Z

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$1402(Lcom/google/logging/type/HttpRequest;Z)Z

    .line 15
    iget-boolean v1, p0, Lcom/google/logging/type/HttpRequest$b;->q:Z

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$1502(Lcom/google/logging/type/HttpRequest;Z)Z

    .line 16
    iget-boolean v1, p0, Lcom/google/logging/type/HttpRequest$b;->r:Z

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$1602(Lcom/google/logging/type/HttpRequest;Z)Z

    .line 17
    iget-wide v1, p0, Lcom/google/logging/type/HttpRequest$b;->s:J

    invoke-static {v0, v1, v2}, Lcom/google/logging/type/HttpRequest;->access$1702(Lcom/google/logging/type/HttpRequest;J)J

    .line 18
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest$b;->t:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/logging/type/HttpRequest;->access$1802(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/logging/type/HttpRequest$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/logging/type/HttpRequest$b;

    return-object v0
.end method

.method public a0()Lcom/google/logging/type/HttpRequest;
    .locals 1

    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->X()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->X()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/logging/type/HttpRequest$b;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/logging/type/HttpRequest$b;

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

    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->Z()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/logging/type/HttpRequest;)Lcom/google/logging/type/HttpRequest$b;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDefaultInstance()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->access$400(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->access$500(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->f:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getRequestSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getRequestSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/logging/type/HttpRequest$b;->o0(J)Lcom/google/logging/type/HttpRequest$b;

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getStatus()I

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/logging/type/HttpRequest$b;->r0(I)Lcom/google/logging/type/HttpRequest$b;

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getResponseSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getResponseSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/logging/type/HttpRequest$b;->q0(J)Lcom/google/logging/type/HttpRequest$b;

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->access$900(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->j:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getRemoteIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 18
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->access$1000(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->k:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 20
    :cond_7
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getServerIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 21
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->access$1100(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->l:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 23
    :cond_8
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getReferer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 24
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->access$1200(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->m:Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 26
    :cond_9
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->hasLatency()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getLatency()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/logging/type/HttpRequest$b;->h0(Lcom/google/protobuf/Duration;)Lcom/google/logging/type/HttpRequest$b;

    .line 28
    :cond_a
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheLookup()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheLookup()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/logging/type/HttpRequest$b;->l0(Z)Lcom/google/logging/type/HttpRequest$b;

    .line 30
    :cond_b
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheHit()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheHit()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/logging/type/HttpRequest$b;->k0(Z)Lcom/google/logging/type/HttpRequest$b;

    .line 32
    :cond_c
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheValidatedWithOriginServer()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 33
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheValidatedWithOriginServer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/logging/type/HttpRequest$b;->m0(Z)Lcom/google/logging/type/HttpRequest$b;

    .line 34
    :cond_d
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheFillBytes()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    .line 35
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheFillBytes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/logging/type/HttpRequest$b;->j0(J)Lcom/google/logging/type/HttpRequest$b;

    .line 36
    :cond_e
    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 37
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->access$1800(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->t:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 39
    :cond_f
    invoke-static {p1}, Lcom/google/logging/type/HttpRequest;->access$1900(Lcom/google/logging/type/HttpRequest;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest$b;->i0(Lcom/google/protobuf/h3;)Lcom/google/logging/type/HttpRequest$b;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->access$2000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/logging/type/HttpRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest$b;->d0(Lcom/google/logging/type/HttpRequest;)Lcom/google/logging/type/HttpRequest$b;

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

    check-cast p2, Lcom/google/logging/type/HttpRequest;
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
    invoke-virtual {p0, v0}, Lcom/google/logging/type/HttpRequest$b;->d0(Lcom/google/logging/type/HttpRequest;)Lcom/google/logging/type/HttpRequest$b;

    .line 6
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

    invoke-virtual {p0, p1, p2}, Lcom/google/logging/type/HttpRequest$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest$b;->s0(Lcom/google/protobuf/h3;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lcom/google/logging/type/HttpRequest$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/logging/type/HttpRequest;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/logging/type/HttpRequest;

    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest$b;->d0(Lcom/google/logging/type/HttpRequest;)Lcom/google/logging/type/HttpRequest$b;

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
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->a0()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->a0()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/logging/type/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/Duration;)Lcom/google/logging/type/HttpRequest$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->o:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest$b;->n:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/logging/type/HttpRequest$b;->n:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/logging/type/HttpRequest$b;->n:Lcom/google/protobuf/Duration;

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

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/logging/type/HttpRequest$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Lcom/google/protobuf/h3;)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/logging/type/HttpRequest$b;

    return-object p1
.end method

.method public j0(J)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest$b;->s:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Z)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest$b;->q:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Z)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest$b;->p:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Z)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest$b;->r:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest$b;->Z()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/logging/type/HttpRequest$b;

    return-object p1
.end method

.method public o0(J)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest$b;->g:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(J)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest$b;->i:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public r0(I)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/logging/type/HttpRequest$b;->h:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final s0(Lcom/google/protobuf/h3;)Lcom/google/logging/type/HttpRequest$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/logging/type/HttpRequest$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/logging/type/HttpRequest$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest$b;->g0(Lcom/google/protobuf/l1;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest$b;->i0(Lcom/google/protobuf/h3;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method
