.class public final Lcom/google/api/ConfigChange$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ConfigChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/ConfigChange$b;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/Advice;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/Advice;",
            "Lcom/google/api/Advice$b;",
            "Lcom/google/api/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->f:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->g:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/api/ConfigChange$b;->i:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    .line 9
    invoke-direct {p0}, Lcom/google/api/ConfigChange$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ConfigChange$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/ConfigChange$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lcom/google/api/ConfigChange$b;->f:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/google/api/ConfigChange$b;->g:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/api/ConfigChange$b;->h:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/api/ConfigChange$b;->i:I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    .line 16
    invoke-direct {p0}, Lcom/google/api/ConfigChange$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/ConfigChange$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/ConfigChange$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/api/ConfigChange$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/ConfigChange$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/Advice;",
            "Lcom/google/api/Advice$b;",
            "Lcom/google/api/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    iget v2, p0, Lcom/google/api/ConfigChange$b;->e:I

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

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/ConfigChange;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/api/ConfigChange$b;->b0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ConfigChange$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->Z()Lcom/google/api/ConfigChange$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->Y()Lcom/google/api/ConfigChange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->Y()Lcom/google/api/ConfigChange;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/n;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/ConfigChange;

    const-class v2, Lcom/google/api/ConfigChange$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ConfigChange$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ConfigChange$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ConfigChange$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ConfigChange$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ConfigChange$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ConfigChange$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ConfigChange$b;

    return-object p1
.end method

.method public X()Lcom/google/api/ConfigChange;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->Y()Lcom/google/api/ConfigChange;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/ConfigChange;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/ConfigChange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/ConfigChange;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/ConfigChange$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/api/ConfigChange$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/ConfigChange;->access$402(Lcom/google/api/ConfigChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/api/ConfigChange$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/ConfigChange;->access$502(Lcom/google/api/ConfigChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/api/ConfigChange$b;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/ConfigChange;->access$602(Lcom/google/api/ConfigChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, p0, Lcom/google/api/ConfigChange$b;->i:I

    invoke-static {v0, v1}, Lcom/google/api/ConfigChange;->access$702(Lcom/google/api/ConfigChange;I)I

    .line 6
    iget-object v1, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    if-nez v1, :cond_1

    .line 7
    iget v1, p0, Lcom/google/api/ConfigChange$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    .line 9
    iget v1, p0, Lcom/google/api/ConfigChange$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/ConfigChange$b;->e:I

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/api/ConfigChange;->access$802(Lcom/google/api/ConfigChange;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/ConfigChange;->access$802(Lcom/google/api/ConfigChange;Ljava/util/List;)Ljava/util/List;

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/ConfigChange$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->X()Lcom/google/api/ConfigChange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->X()Lcom/google/api/ConfigChange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ConfigChange$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ConfigChange$b;

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

    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->Z()Lcom/google/api/ConfigChange$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/api/ConfigChange;
    .locals 1

    invoke-static {}, Lcom/google/api/ConfigChange;->getDefaultInstance()Lcom/google/api/ConfigChange;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ConfigChange$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ConfigChange$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/api/ConfigChange;)Lcom/google/api/ConfigChange$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/ConfigChange;->getDefaultInstance()Lcom/google/api/ConfigChange;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/ConfigChange;->getElement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$400(Lcom/google/api/ConfigChange;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/ConfigChange;->getOldValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$500(Lcom/google/api/ConfigChange;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->g:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/ConfigChange;->getNewValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$600(Lcom/google/api/ConfigChange;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->h:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_3
    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$700(Lcom/google/api/ConfigChange;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/google/api/ConfigChange;->getChangeTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/ConfigChange$b;->k0(I)Lcom/google/api/ConfigChange$b;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    if-nez v0, :cond_6

    .line 14
    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$800(Lcom/google/api/ConfigChange;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15
    iget-object v0, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$800(Lcom/google/api/ConfigChange;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    .line 17
    iget v0, p0, Lcom/google/api/ConfigChange$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/ConfigChange$b;->e:I

    goto :goto_0

    .line 18
    :cond_5
    invoke-direct {p0}, Lcom/google/api/ConfigChange$b;->a0()V

    .line 19
    iget-object v0, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$800(Lcom/google/api/ConfigChange;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 21
    :cond_6
    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$800(Lcom/google/api/ConfigChange;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 22
    iget-object v0, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    .line 25
    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$800(Lcom/google/api/ConfigChange;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ConfigChange$b;->j:Ljava/util/List;

    .line 26
    iget v1, p0, Lcom/google/api/ConfigChange$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/ConfigChange$b;->e:I

    .line 27
    invoke-static {}, Lcom/google/api/ConfigChange;->access$900()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28
    invoke-direct {p0}, Lcom/google/api/ConfigChange$b;->b0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/google/api/ConfigChange$b;->k:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$800(Lcom/google/api/ConfigChange;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 30
    :cond_9
    :goto_1
    invoke-static {p1}, Lcom/google/api/ConfigChange;->access$1000(Lcom/google/api/ConfigChange;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/ConfigChange$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/api/ConfigChange$b;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->d0()Lcom/google/api/ConfigChange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->d0()Lcom/google/api/ConfigChange;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/n;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ConfigChange$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/ConfigChange;->access$1100()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/ConfigChange;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/ConfigChange$b;->g0(Lcom/google/api/ConfigChange;)Lcom/google/api/ConfigChange$b;

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

    check-cast p2, Lcom/google/api/ConfigChange;
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
    invoke-virtual {p0, v0}, Lcom/google/api/ConfigChange$b;->g0(Lcom/google/api/ConfigChange;)Lcom/google/api/ConfigChange$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ConfigChange$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lcom/google/api/ConfigChange$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/ConfigChange;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/ConfigChange;

    invoke-virtual {p0, p1}, Lcom/google/api/ConfigChange$b;->g0(Lcom/google/api/ConfigChange;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lcom/google/api/ConfigChange$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ConfigChange$b;

    return-object p1
.end method

.method public k0(I)Lcom/google/api/ConfigChange$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/api/ConfigChange$b;->i:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ConfigChange$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ConfigChange$b;

    return-object p1
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lcom/google/api/ConfigChange$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ConfigChange$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/ConfigChange$b;->Z()Lcom/google/api/ConfigChange$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ConfigChange$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ConfigChange$b;->i0(Lcom/google/protobuf/l1;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ConfigChange$b;->j0(Lcom/google/protobuf/h3;)Lcom/google/api/ConfigChange$b;

    move-result-object p1

    return-object p1
.end method
