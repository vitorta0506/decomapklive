.class public final Lcom/google/api/BackendRule$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/BackendRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/BackendRule$c;",
        ">;",
        "Lcom/google/api/j;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:D

.field private j:D

.field private k:D

.field private l:I

.field private m:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/api/BackendRule$c;->e:I

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/google/api/BackendRule$c;->g:Ljava/lang/Object;

    .line 6
    iput-object v1, p0, Lcom/google/api/BackendRule$c;->h:Ljava/lang/Object;

    .line 7
    iput v0, p0, Lcom/google/api/BackendRule$c;->l:I

    .line 8
    iput-object v1, p0, Lcom/google/api/BackendRule$c;->m:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/google/api/BackendRule$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/BackendRule$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/BackendRule$c;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/google/api/BackendRule$c;->e:I

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/google/api/BackendRule$c;->g:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/api/BackendRule$c;->h:Ljava/lang/Object;

    .line 14
    iput p1, p0, Lcom/google/api/BackendRule$c;->l:I

    .line 15
    iput-object v0, p0, Lcom/google/api/BackendRule$c;->m:Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Lcom/google/api/BackendRule$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/BackendRule$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/BackendRule$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lcom/google/api/BackendRule;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/BackendRule$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->Z()Lcom/google/api/BackendRule$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->Y()Lcom/google/api/BackendRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->Y()Lcom/google/api/BackendRule;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/i;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/BackendRule;

    const-class v2, Lcom/google/api/BackendRule$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/BackendRule$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$c;->h0(Lcom/google/protobuf/h3;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$c;->g0(Lcom/google/protobuf/l1;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/BackendRule$c;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$c;->o0(Lcom/google/protobuf/h3;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/BackendRule$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRule$c;

    return-object p1
.end method

.method public X()Lcom/google/api/BackendRule;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->Y()Lcom/google/api/BackendRule;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/BackendRule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/BackendRule;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/BackendRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/BackendRule;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/BackendRule$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/api/BackendRule$c;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/BackendRule;->access$402(Lcom/google/api/BackendRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/api/BackendRule$c;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/BackendRule;->access$502(Lcom/google/api/BackendRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v1, p0, Lcom/google/api/BackendRule$c;->i:D

    invoke-static {v0, v1, v2}, Lcom/google/api/BackendRule;->access$602(Lcom/google/api/BackendRule;D)D

    .line 5
    iget-wide v1, p0, Lcom/google/api/BackendRule$c;->j:D

    invoke-static {v0, v1, v2}, Lcom/google/api/BackendRule;->access$702(Lcom/google/api/BackendRule;D)D

    .line 6
    iget-wide v1, p0, Lcom/google/api/BackendRule$c;->k:D

    invoke-static {v0, v1, v2}, Lcom/google/api/BackendRule;->access$802(Lcom/google/api/BackendRule;D)D

    .line 7
    iget v1, p0, Lcom/google/api/BackendRule$c;->l:I

    invoke-static {v0, v1}, Lcom/google/api/BackendRule;->access$902(Lcom/google/api/BackendRule;I)I

    .line 8
    iget v1, p0, Lcom/google/api/BackendRule$c;->e:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 9
    iget-object v1, p0, Lcom/google/api/BackendRule$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/BackendRule;->access$1002(Lcom/google/api/BackendRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iget v1, p0, Lcom/google/api/BackendRule$c;->e:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 11
    iget-object v1, p0, Lcom/google/api/BackendRule$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/BackendRule;->access$1002(Lcom/google/api/BackendRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/google/api/BackendRule$c;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/BackendRule;->access$1102(Lcom/google/api/BackendRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v1, p0, Lcom/google/api/BackendRule$c;->e:I

    invoke-static {v0, v1}, Lcom/google/api/BackendRule;->access$1202(Lcom/google/api/BackendRule;I)I

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/BackendRule$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/BackendRule$c;

    return-object v0
.end method

.method public a0()Lcom/google/api/BackendRule;
    .locals 1

    invoke-static {}, Lcom/google/api/BackendRule;->getDefaultInstance()Lcom/google/api/BackendRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->X()Lcom/google/api/BackendRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->X()Lcom/google/api/BackendRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/BackendRule$c;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/BackendRule$c;

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

    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->Z()Lcom/google/api/BackendRule$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/google/api/BackendRule;)Lcom/google/api/BackendRule$c;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/api/BackendRule;->getDefaultInstance()Lcom/google/api/BackendRule;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/BackendRule;->access$400(Lcom/google/api/BackendRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule$c;->g:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/api/BackendRule;->access$500(Lcom/google/api/BackendRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule$c;->h:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getDeadline()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getDeadline()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/BackendRule$c;->i0(D)Lcom/google/api/BackendRule$c;

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getMinDeadline()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getMinDeadline()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/BackendRule$c;->l0(D)Lcom/google/api/BackendRule$c;

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getOperationDeadline()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getOperationDeadline()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/BackendRule$c;->m0(D)Lcom/google/api/BackendRule$c;

    .line 14
    :cond_5
    invoke-static {p1}, Lcom/google/api/BackendRule;->access$900(Lcom/google/api/BackendRule;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getPathTranslationValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/BackendRule$c;->n0(I)Lcom/google/api/BackendRule$c;

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    invoke-static {p1}, Lcom/google/api/BackendRule;->access$1100(Lcom/google/api/BackendRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule$c;->m:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 19
    :cond_7
    sget-object v0, Lcom/google/api/BackendRule$b;->a:[I

    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getAuthenticationCase()Lcom/google/api/BackendRule$AuthenticationCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto :goto_0

    .line 20
    :cond_8
    invoke-virtual {p1}, Lcom/google/api/BackendRule;->getDisableAuth()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/BackendRule$c;->j0(Z)Lcom/google/api/BackendRule$c;

    goto :goto_0

    :cond_9
    const/4 v0, 0x7

    .line 21
    iput v0, p0, Lcom/google/api/BackendRule$c;->e:I

    .line 22
    invoke-static {p1}, Lcom/google/api/BackendRule;->access$1000(Lcom/google/api/BackendRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/BackendRule$c;->f:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 24
    :goto_0
    invoke-static {p1}, Lcom/google/api/BackendRule;->access$1300(Lcom/google/api/BackendRule;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$c;->h0(Lcom/google/protobuf/h3;)Lcom/google/api/BackendRule$c;

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/BackendRule$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/BackendRule;->access$1400()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRule;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$c;->d0(Lcom/google/api/BackendRule;)Lcom/google/api/BackendRule$c;

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

    check-cast p2, Lcom/google/api/BackendRule;
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
    invoke-virtual {p0, v0}, Lcom/google/api/BackendRule$c;->d0(Lcom/google/api/BackendRule;)Lcom/google/api/BackendRule$c;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/BackendRule$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$c;->o0(Lcom/google/protobuf/h3;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lcom/google/api/BackendRule$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/BackendRule;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/BackendRule;

    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$c;->d0(Lcom/google/api/BackendRule;)Lcom/google/api/BackendRule$c;

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
    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->a0()Lcom/google/api/BackendRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->a0()Lcom/google/api/BackendRule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/i;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public final h0(Lcom/google/protobuf/h3;)Lcom/google/api/BackendRule$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRule$c;

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/BackendRule$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(D)Lcom/google/api/BackendRule$c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/BackendRule$c;->i:D

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Z)Lcom/google/api/BackendRule$c;
    .locals 1

    const/16 v0, 0x8

    .line 1
    iput v0, p0, Lcom/google/api/BackendRule$c;->e:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/BackendRule$c;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/BackendRule$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRule$c;

    return-object p1
.end method

.method public l0(D)Lcom/google/api/BackendRule$c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/BackendRule$c;->j:D

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(D)Lcom/google/api/BackendRule$c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/BackendRule$c;->k:D

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/BackendRule$c;->Z()Lcom/google/api/BackendRule$c;

    move-result-object v0

    return-object v0
.end method

.method public n0(I)Lcom/google/api/BackendRule$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/api/BackendRule$c;->l:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lcom/google/api/BackendRule$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRule$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/BackendRule$c;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$c;->g0(Lcom/google/protobuf/l1;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$c;->h0(Lcom/google/protobuf/h3;)Lcom/google/api/BackendRule$c;

    move-result-object p1

    return-object p1
.end method
