.class public final Lcom/google/api/ResourceDescriptor$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ResourceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/ResourceDescriptor$c;",
        ">;",
        "Lcom/google/protobuf/r1;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/z0;

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->f:Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    .line 6
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/google/api/ResourceDescriptor$c;->i:I

    .line 8
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->j:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->k:Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    .line 11
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor$c;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ResourceDescriptor$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor$c;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor$c;->f:Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    .line 15
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor$c;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/google/api/ResourceDescriptor$c;->i:I

    .line 17
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor$c;->j:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor$c;->k:Ljava/lang/Object;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    .line 20
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor$c;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/ResourceDescriptor$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lcom/google/api/ResourceDescriptor;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ResourceDescriptor$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->Z()Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->Y()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->Y()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/c1;->e:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/ResourceDescriptor;

    const-class v2, Lcom/google/api/ResourceDescriptor$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ResourceDescriptor$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor$c;->j0(Lcom/google/protobuf/h3;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor$c;->i0(Lcom/google/protobuf/l1;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ResourceDescriptor$c;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor$c;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ResourceDescriptor$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ResourceDescriptor$c;

    return-object p1
.end method

.method public X()Lcom/google/api/ResourceDescriptor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->Y()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/ResourceDescriptor;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/ResourceDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/ResourceDescriptor;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/ResourceDescriptor$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/ResourceDescriptor;->access$402(Lcom/google/api/ResourceDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    .line 5
    iget v1, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/api/ResourceDescriptor;->access$502(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 7
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/ResourceDescriptor;->access$602(Lcom/google/api/ResourceDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget v1, p0, Lcom/google/api/ResourceDescriptor$c;->i:I

    invoke-static {v0, v1}, Lcom/google/api/ResourceDescriptor;->access$702(Lcom/google/api/ResourceDescriptor;I)I

    .line 9
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/ResourceDescriptor;->access$802(Lcom/google/api/ResourceDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/ResourceDescriptor;->access$902(Lcom/google/api/ResourceDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    .line 13
    iget v1, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/api/ResourceDescriptor;->access$1002(Lcom/google/api/ResourceDescriptor;Ljava/util/List;)Ljava/util/List;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/ResourceDescriptor$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor$c;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->X()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->X()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ResourceDescriptor$c;->k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ResourceDescriptor$c;

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

    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->Z()Lcom/google/api/ResourceDescriptor$c;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/api/ResourceDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ResourceDescriptor$c;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor$c;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/api/ResourceDescriptor;)Lcom/google/api/ResourceDescriptor$c;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$400(Lcom/google/api/ResourceDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$500(Lcom/google/api/ResourceDescriptor;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$500(Lcom/google/api/ResourceDescriptor;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    .line 8
    iget v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor$c;->a0()V

    .line 10
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->g:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$500(Lcom/google/api/ResourceDescriptor;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getNameField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$600(Lcom/google/api/ResourceDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->h:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 15
    :cond_4
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$700(Lcom/google/api/ResourceDescriptor;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getHistoryValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/ResourceDescriptor$c;->l0(I)Lcom/google/api/ResourceDescriptor$c;

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getPlural()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$800(Lcom/google/api/ResourceDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->j:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 20
    :cond_6
    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor;->getSingular()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$900(Lcom/google/api/ResourceDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->k:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 23
    :cond_7
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$1000(Lcom/google/api/ResourceDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 24
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$1000(Lcom/google/api/ResourceDescriptor;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    .line 26
    iget v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/api/ResourceDescriptor$c;->e:I

    goto :goto_1

    .line 27
    :cond_8
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor$c;->b0()V

    .line 28
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$c;->l:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$1000(Lcom/google/api/ResourceDescriptor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 30
    :cond_9
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->access$1100(Lcom/google/api/ResourceDescriptor;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor$c;->j0(Lcom/google/protobuf/h3;)Lcom/google/api/ResourceDescriptor$c;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->d0()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->d0()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/c1;->d:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->access$1200()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/ResourceDescriptor;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor$c;->g0(Lcom/google/api/ResourceDescriptor;)Lcom/google/api/ResourceDescriptor$c;

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

    check-cast p2, Lcom/google/api/ResourceDescriptor;
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
    invoke-virtual {p0, v0}, Lcom/google/api/ResourceDescriptor$c;->g0(Lcom/google/api/ResourceDescriptor;)Lcom/google/api/ResourceDescriptor$c;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ResourceDescriptor$c;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lcom/google/api/ResourceDescriptor$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/ResourceDescriptor;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor$c;->g0(Lcom/google/api/ResourceDescriptor;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lcom/google/api/ResourceDescriptor$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ResourceDescriptor$c;

    return-object p1
.end method

.method public k0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ResourceDescriptor$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ResourceDescriptor$c;

    return-object p1
.end method

.method public l0(I)Lcom/google/api/ResourceDescriptor$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/api/ResourceDescriptor$c;->i:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lcom/google/api/ResourceDescriptor$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ResourceDescriptor$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$c;->Z()Lcom/google/api/ResourceDescriptor$c;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ResourceDescriptor$c;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor$c;->i0(Lcom/google/protobuf/l1;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ResourceDescriptor$c;->j0(Lcom/google/protobuf/h3;)Lcom/google/api/ResourceDescriptor$c;

    move-result-object p1

    return-object p1
.end method
