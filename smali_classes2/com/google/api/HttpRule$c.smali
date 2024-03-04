.class public final Lcom/google/api/HttpRule$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/HttpRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/HttpRule$c;",
        ">;",
        "Lcom/google/api/g0;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/api/CustomHttpPattern;",
            "Lcom/google/api/CustomHttpPattern$b;",
            "Lcom/google/api/u;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/HttpRule;",
            "Lcom/google/api/HttpRule$c;",
            "Lcom/google/api/g0;",
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
    iput v0, p0, Lcom/google/api/HttpRule$c;->e:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/google/api/HttpRule$c;->h:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/api/HttpRule$c;->j:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/api/HttpRule$c;->k:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    .line 9
    invoke-direct {p0}, Lcom/google/api/HttpRule$c;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/HttpRule$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/HttpRule$c;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/google/api/HttpRule$c;->e:I

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/google/api/HttpRule$c;->h:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/api/HttpRule$c;->j:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/google/api/HttpRule$c;->k:Ljava/lang/Object;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    .line 16
    invoke-direct {p0}, Lcom/google/api/HttpRule$c;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/HttpRule$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/HttpRule$c;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/api/HttpRule$c;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/HttpRule$c;->g:I

    :cond_0
    return-void
.end method

.method private b0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/HttpRule;",
            "Lcom/google/api/HttpRule$c;",
            "Lcom/google/api/g0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    iget v2, p0, Lcom/google/api/HttpRule$c;->g:I

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

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/HttpRule;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/api/HttpRule$c;->b0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/HttpRule$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->Z()Lcom/google/api/HttpRule$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->Y()Lcom/google/api/HttpRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->Y()Lcom/google/api/HttpRule;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/f0;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/HttpRule;

    const-class v2, Lcom/google/api/HttpRule$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/HttpRule$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/HttpRule$c;->k0(Lcom/google/protobuf/h3;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/HttpRule$c;->j0(Lcom/google/protobuf/l1;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/HttpRule$c;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/HttpRule$c;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/HttpRule$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule$c;

    return-object p1
.end method

.method public X()Lcom/google/api/HttpRule;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->Y()Lcom/google/api/HttpRule;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/HttpRule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/HttpRule;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/HttpRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/HttpRule;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/HttpRule$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$402(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p0, Lcom/google/api/HttpRule$c;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$502(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget v1, p0, Lcom/google/api/HttpRule$c;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$502(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget v1, p0, Lcom/google/api/HttpRule$c;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$502(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    iget v1, p0, Lcom/google/api/HttpRule$c;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 10
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$502(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    iget v1, p0, Lcom/google/api/HttpRule$c;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$502(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    iget v1, p0, Lcom/google/api/HttpRule$c;->e:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 14
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$502(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$502(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$602(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$702(Lcom/google/api/HttpRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    if-nez v1, :cond_8

    .line 20
    iget v1, p0, Lcom/google/api/HttpRule$c;->g:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 21
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    .line 22
    iget v1, p0, Lcom/google/api/HttpRule$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/HttpRule$c;->g:I

    .line 23
    :cond_7
    iget-object v1, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$802(Lcom/google/api/HttpRule;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 24
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$802(Lcom/google/api/HttpRule;Ljava/util/List;)Ljava/util/List;

    .line 25
    :goto_1
    iget v1, p0, Lcom/google/api/HttpRule$c;->e:I

    invoke-static {v0, v1}, Lcom/google/api/HttpRule;->access$902(Lcom/google/api/HttpRule;I)I

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/HttpRule$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/HttpRule$c;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->X()Lcom/google/api/HttpRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->X()Lcom/google/api/HttpRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/HttpRule$c;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/HttpRule$c;

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

    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->Z()Lcom/google/api/HttpRule$c;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/api/HttpRule;
    .locals 1

    invoke-static {}, Lcom/google/api/HttpRule;->getDefaultInstance()Lcom/google/api/HttpRule;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/HttpRule$c;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/HttpRule$c;->m0(Lcom/google/protobuf/h3;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/HttpRule$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->i:Lcom/google/protobuf/q2;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/api/HttpRule$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->getDefaultInstance()Lcom/google/api/CustomHttpPattern;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    .line 5
    invoke-static {v0}, Lcom/google/api/CustomHttpPattern;->newBuilder(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/CustomHttpPattern$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/api/CustomHttpPattern$b;->d0(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/CustomHttpPattern$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/api/CustomHttpPattern$b;->Y()Lcom/google/api/CustomHttpPattern;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 10
    :cond_1
    iget v2, p0, Lcom/google/api/HttpRule$c;->e:I

    if-ne v2, v1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->i:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 13
    :goto_1
    iput v1, p0, Lcom/google/api/HttpRule$c;->e:I

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->d0()Lcom/google/api/HttpRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->d0()Lcom/google/api/HttpRule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/f0;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/api/HttpRule;)Lcom/google/api/HttpRule$c;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/HttpRule;->getDefaultInstance()Lcom/google/api/HttpRule;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/HttpRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$400(Lcom/google/api/HttpRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->h:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/HttpRule;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$600(Lcom/google/api/HttpRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->j:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/HttpRule;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$700(Lcom/google/api/HttpRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->k:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    if-nez v0, :cond_5

    .line 12
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$800(Lcom/google/api/HttpRule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 13
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$800(Lcom/google/api/HttpRule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    .line 15
    iget v0, p0, Lcom/google/api/HttpRule$c;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/HttpRule$c;->g:I

    goto :goto_0

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/google/api/HttpRule$c;->a0()V

    .line 17
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/HttpRule;->access$800(Lcom/google/api/HttpRule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$800(Lcom/google/api/HttpRule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    .line 23
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$800(Lcom/google/api/HttpRule;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/HttpRule$c;->l:Ljava/util/List;

    .line 24
    iget v1, p0, Lcom/google/api/HttpRule$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/HttpRule$c;->g:I

    .line 25
    invoke-static {}, Lcom/google/api/HttpRule;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-direct {p0}, Lcom/google/api/HttpRule$c;->b0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/google/api/HttpRule$c;->m:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/api/HttpRule;->access$800(Lcom/google/api/HttpRule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 28
    :cond_8
    :goto_1
    sget-object v0, Lcom/google/api/HttpRule$b;->a:[I

    invoke-virtual {p1}, Lcom/google/api/HttpRule;->getPatternCase()Lcom/google/api/HttpRule$PatternCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 29
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/api/HttpRule;->getCustom()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/HttpRule$c;->g0(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/HttpRule$c;

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x6

    .line 30
    iput v0, p0, Lcom/google/api/HttpRule$c;->e:I

    .line 31
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$500(Lcom/google/api/HttpRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x5

    .line 33
    iput v0, p0, Lcom/google/api/HttpRule$c;->e:I

    .line 34
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$500(Lcom/google/api/HttpRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x4

    .line 36
    iput v0, p0, Lcom/google/api/HttpRule$c;->e:I

    .line 37
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$500(Lcom/google/api/HttpRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lcom/google/api/HttpRule$c;->e:I

    .line 40
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$500(Lcom/google/api/HttpRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    :pswitch_5
    const/4 v0, 0x2

    .line 42
    iput v0, p0, Lcom/google/api/HttpRule$c;->e:I

    .line 43
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$500(Lcom/google/api/HttpRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule$c;->f:Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 45
    :goto_2
    invoke-static {p1}, Lcom/google/api/HttpRule;->access$1100(Lcom/google/api/HttpRule;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/HttpRule$c;->k0(Lcom/google/protobuf/h3;)Lcom/google/api/HttpRule$c;

    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/HttpRule$c;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/HttpRule$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/HttpRule;->access$1200()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/HttpRule$c;->h0(Lcom/google/api/HttpRule;)Lcom/google/api/HttpRule$c;

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

    check-cast p2, Lcom/google/api/HttpRule;
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
    invoke-virtual {p0, v0}, Lcom/google/api/HttpRule$c;->h0(Lcom/google/api/HttpRule;)Lcom/google/api/HttpRule$c;

    .line 6
    :cond_1
    throw p1
.end method

.method public j0(Lcom/google/protobuf/l1;)Lcom/google/api/HttpRule$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/HttpRule;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/HttpRule;

    invoke-virtual {p0, p1}, Lcom/google/api/HttpRule$c;->h0(Lcom/google/api/HttpRule;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lcom/google/api/HttpRule$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule$c;

    return-object p1
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/HttpRule$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule$c;

    return-object p1
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lcom/google/api/HttpRule$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/HttpRule$c;->Z()Lcom/google/api/HttpRule$c;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/HttpRule$c;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/HttpRule$c;->j0(Lcom/google/protobuf/l1;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/HttpRule$c;->k0(Lcom/google/protobuf/h3;)Lcom/google/api/HttpRule$c;

    move-result-object p1

    return-object p1
.end method
