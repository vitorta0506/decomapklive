.class public final Lcom/google/api/QuotaLimit$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/QuotaLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/QuotaLimit$b;",
        ">;",
        "Lcom/google/api/z0;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->e:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->f:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->j:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->k:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->l:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->n:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/google/api/QuotaLimit$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/QuotaLimit$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/QuotaLimit$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/google/api/QuotaLimit$b;->e:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/api/QuotaLimit$b;->f:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/google/api/QuotaLimit$b;->j:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/google/api/QuotaLimit$b;->k:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/google/api/QuotaLimit$b;->l:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/google/api/QuotaLimit$b;->n:Ljava/lang/Object;

    .line 18
    invoke-direct {p0}, Lcom/google/api/QuotaLimit$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/QuotaLimit$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private b0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lcom/google/api/QuotaLimit$b;->m:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/api/QuotaLimit$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->m:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/api/QuotaLimit$b;->m:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/api/QuotaLimit$b;->m:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->m:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/api/QuotaLimit$b;->m:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private d0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/QuotaLimit$b;->m:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/api/QuotaLimit$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lcom/google/api/QuotaLimit;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/QuotaLimit$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->Z()Lcom/google/api/QuotaLimit$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->Y()Lcom/google/api/QuotaLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->Y()Lcom/google/api/QuotaLimit;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/b1;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/QuotaLimit;

    const-class v2, Lcom/google/api/QuotaLimit$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/QuotaLimit$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/api/QuotaLimit$b;->d0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected N(I)Lcom/google/protobuf/g1;
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/api/QuotaLimit$b;->b0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/QuotaLimit$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/QuotaLimit$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/QuotaLimit$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/QuotaLimit$b;->o0(Lcom/google/protobuf/h3;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/QuotaLimit$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/QuotaLimit$b;

    return-object p1
.end method

.method public X()Lcom/google/api/QuotaLimit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->Y()Lcom/google/api/QuotaLimit;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/QuotaLimit;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/QuotaLimit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/QuotaLimit;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/QuotaLimit$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/api/QuotaLimit$b;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/QuotaLimit;->access$402(Lcom/google/api/QuotaLimit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/api/QuotaLimit$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/QuotaLimit;->access$502(Lcom/google/api/QuotaLimit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v1, p0, Lcom/google/api/QuotaLimit$b;->g:J

    invoke-static {v0, v1, v2}, Lcom/google/api/QuotaLimit;->access$602(Lcom/google/api/QuotaLimit;J)J

    .line 5
    iget-wide v1, p0, Lcom/google/api/QuotaLimit$b;->h:J

    invoke-static {v0, v1, v2}, Lcom/google/api/QuotaLimit;->access$702(Lcom/google/api/QuotaLimit;J)J

    .line 6
    iget-wide v1, p0, Lcom/google/api/QuotaLimit$b;->i:J

    invoke-static {v0, v1, v2}, Lcom/google/api/QuotaLimit;->access$802(Lcom/google/api/QuotaLimit;J)J

    .line 7
    iget-object v1, p0, Lcom/google/api/QuotaLimit$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/QuotaLimit;->access$902(Lcom/google/api/QuotaLimit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/google/api/QuotaLimit$b;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/QuotaLimit;->access$1002(Lcom/google/api/QuotaLimit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/google/api/QuotaLimit$b;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/QuotaLimit;->access$1102(Lcom/google/api/QuotaLimit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/google/api/QuotaLimit$b;->d0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/QuotaLimit;->access$1202(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 11
    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$1200(Lcom/google/api/QuotaLimit;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 12
    iget-object v1, p0, Lcom/google/api/QuotaLimit$b;->n:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/QuotaLimit;->access$1302(Lcom/google/api/QuotaLimit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/QuotaLimit$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit$b;

    return-object v0
.end method

.method public a0()Lcom/google/api/QuotaLimit;
    .locals 1

    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->X()Lcom/google/api/QuotaLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->X()Lcom/google/api/QuotaLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/QuotaLimit$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/QuotaLimit$b;

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

    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->Z()Lcom/google/api/QuotaLimit$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/QuotaLimit$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/QuotaLimit$b;->o0(Lcom/google/protobuf/h3;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/api/QuotaLimit;)Lcom/google/api/QuotaLimit$b;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->access$400(Lcom/google/api/QuotaLimit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->access$500(Lcom/google/api/QuotaLimit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->f:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getDefaultLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getDefaultLimit()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/QuotaLimit$b;->k0(J)Lcom/google/api/QuotaLimit$b;

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getMaxLimit()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getMaxLimit()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/QuotaLimit$b;->n0(J)Lcom/google/api/QuotaLimit$b;

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getFreeTier()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getFreeTier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/QuotaLimit$b;->m0(J)Lcom/google/api/QuotaLimit$b;

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getDuration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->access$900(Lcom/google/api/QuotaLimit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->j:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getMetric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 18
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->access$1000(Lcom/google/api/QuotaLimit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->k:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 20
    :cond_7
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 21
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->access$1100(Lcom/google/api/QuotaLimit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->l:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 23
    :cond_8
    invoke-direct {p0}, Lcom/google/api/QuotaLimit$b;->b0()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-static {p1}, Lcom/google/api/QuotaLimit;->access$1400(Lcom/google/api/QuotaLimit;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 24
    invoke-virtual {p1}, Lcom/google/api/QuotaLimit;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 25
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->access$1300(Lcom/google/api/QuotaLimit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit$b;->n:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 27
    :cond_9
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->access$1500(Lcom/google/api/QuotaLimit;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/QuotaLimit$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/api/QuotaLimit$b;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->a0()Lcom/google/api/QuotaLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->a0()Lcom/google/api/QuotaLimit;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/b1;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/QuotaLimit$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/QuotaLimit;->access$1600()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/QuotaLimit;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/QuotaLimit$b;->g0(Lcom/google/api/QuotaLimit;)Lcom/google/api/QuotaLimit$b;

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

    check-cast p2, Lcom/google/api/QuotaLimit;
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
    invoke-virtual {p0, v0}, Lcom/google/api/QuotaLimit$b;->g0(Lcom/google/api/QuotaLimit;)Lcom/google/api/QuotaLimit$b;

    .line 6
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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/QuotaLimit$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lcom/google/api/QuotaLimit$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/QuotaLimit;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/QuotaLimit;

    invoke-virtual {p0, p1}, Lcom/google/api/QuotaLimit$b;->g0(Lcom/google/api/QuotaLimit;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lcom/google/api/QuotaLimit$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/QuotaLimit$b;

    return-object p1
.end method

.method public k0(J)Lcom/google/api/QuotaLimit$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/QuotaLimit$b;->g:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/QuotaLimit$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/QuotaLimit$b;

    return-object p1
.end method

.method public m0(J)Lcom/google/api/QuotaLimit$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/QuotaLimit$b;->i:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$b;->Z()Lcom/google/api/QuotaLimit$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(J)Lcom/google/api/QuotaLimit$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/QuotaLimit$b;->h:J

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lcom/google/api/QuotaLimit$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/QuotaLimit$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/QuotaLimit$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/QuotaLimit$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/QuotaLimit$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/api/QuotaLimit$b;

    move-result-object p1

    return-object p1
.end method