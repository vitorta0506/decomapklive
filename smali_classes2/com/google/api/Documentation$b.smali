.class public final Lcom/google/api/Documentation$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Documentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/Documentation$b;",
        ">;",
        "Lcom/google/api/w;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/Page;",
            "Lcom/google/api/Page$b;",
            "Lcom/google/api/x0;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/DocumentationRule;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/DocumentationRule;",
            "Lcom/google/api/DocumentationRule$b;",
            "Lcom/google/api/y;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/api/Documentation$b;->f:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/google/api/Documentation$b;->k:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/api/Documentation$b;->l:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/api/Documentation$b;->m:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/google/api/Documentation$b;->h0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Documentation$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/Documentation$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/google/api/Documentation$b;->f:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/google/api/Documentation$b;->k:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/google/api/Documentation$b;->l:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/google/api/Documentation$b;->m:Ljava/lang/Object;

    .line 18
    invoke-direct {p0}, Lcom/google/api/Documentation$b;->h0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/Documentation$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/Documentation$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/api/Documentation$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/Documentation$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/api/Documentation$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/api/Documentation$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/Page;",
            "Lcom/google/api/Page$b;",
            "Lcom/google/api/x0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    iget v2, p0, Lcom/google/api/Documentation$b;->e:I

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

    iput-object v0, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private g0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/api/DocumentationRule;",
            "Lcom/google/api/DocumentationRule$b;",
            "Lcom/google/api/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    iget v2, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private h0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/Documentation;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/api/Documentation$b;->e0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lcom/google/api/Documentation$b;->g0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Documentation$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->Z()Lcom/google/api/Documentation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->Y()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->Y()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/x;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/Documentation;

    const-class v2, Lcom/google/api/Documentation$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Documentation$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Documentation$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Documentation$b;->k0(Lcom/google/protobuf/l1;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Documentation$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Documentation$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Documentation$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Documentation$b;

    return-object p1
.end method

.method public X()Lcom/google/api/Documentation;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->Y()Lcom/google/api/Documentation;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/Documentation;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/Documentation;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/Documentation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/Documentation;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/Documentation$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/api/Documentation$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$402(Lcom/google/api/Documentation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    .line 6
    iget v1, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/Documentation$b;->e:I

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$502(Lcom/google/api/Documentation;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$502(Lcom/google/api/Documentation;Ljava/util/List;)Ljava/util/List;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 10
    iget v1, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    .line 12
    iget v1, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/api/Documentation$b;->e:I

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$602(Lcom/google/api/Documentation;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$602(Lcom/google/api/Documentation;Ljava/util/List;)Ljava/util/List;

    .line 15
    :goto_1
    iget-object v1, p0, Lcom/google/api/Documentation$b;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$702(Lcom/google/api/Documentation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/google/api/Documentation$b;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$802(Lcom/google/api/Documentation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/google/api/Documentation$b;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$902(Lcom/google/api/Documentation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/Documentation$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/Documentation$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->X()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->X()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Documentation$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Documentation$b;

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

    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->Z()Lcom/google/api/Documentation$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lcom/google/api/Documentation;
    .locals 1

    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Documentation$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Documentation$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->d0()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->d0()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/x;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Documentation$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/api/Documentation;)Lcom/google/api/Documentation$b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/Documentation;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/Documentation;->access$400(Lcom/google/api/Documentation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 6
    invoke-static {p1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    .line 9
    iget v0, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/Documentation$b;->e:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/google/api/Documentation$b;->a0()V

    .line 11
    iget-object v0, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 16
    iput-object v1, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    .line 17
    invoke-static {p1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->g:Ljava/util/List;

    .line 18
    iget v0, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/Documentation$b;->e:I

    .line 19
    invoke-static {}, Lcom/google/api/Documentation;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/google/api/Documentation$b;->e0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/google/api/Documentation$b;->h:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 22
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_8

    .line 23
    invoke-static {p1}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 24
    iget-object v0, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-static {p1}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    .line 26
    iget v0, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/api/Documentation$b;->e:I

    goto :goto_3

    .line 27
    :cond_7
    invoke-direct {p0}, Lcom/google/api/Documentation$b;->b0()V

    .line 28
    iget-object v0, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_4

    .line 30
    :cond_8
    invoke-static {p1}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 31
    iget-object v0, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 33
    iput-object v1, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    .line 34
    invoke-static {p1}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->i:Ljava/util/List;

    .line 35
    iget v0, p0, Lcom/google/api/Documentation$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/api/Documentation$b;->e:I

    .line 36
    invoke-static {}, Lcom/google/api/Documentation;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    invoke-direct {p0}, Lcom/google/api/Documentation$b;->g0()Lcom/google/protobuf/l2;

    move-result-object v1

    :cond_9
    iput-object v1, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    goto :goto_4

    .line 38
    :cond_a
    iget-object v0, p0, Lcom/google/api/Documentation$b;->j:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 39
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/google/api/Documentation;->getDocumentationRootUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 40
    invoke-static {p1}, Lcom/google/api/Documentation;->access$700(Lcom/google/api/Documentation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->k:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 42
    :cond_c
    invoke-virtual {p1}, Lcom/google/api/Documentation;->getServiceRootUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 43
    invoke-static {p1}, Lcom/google/api/Documentation;->access$800(Lcom/google/api/Documentation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->l:Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 45
    :cond_d
    invoke-virtual {p1}, Lcom/google/api/Documentation;->getOverview()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 46
    invoke-static {p1}, Lcom/google/api/Documentation;->access$900(Lcom/google/api/Documentation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Documentation$b;->m:Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 48
    :cond_e
    invoke-static {p1}, Lcom/google/api/Documentation;->access$1200(Lcom/google/api/Documentation;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/Documentation$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/api/Documentation$b;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Documentation$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/Documentation;->access$1300()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Documentation;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/Documentation$b;->i0(Lcom/google/api/Documentation;)Lcom/google/api/Documentation$b;

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

    check-cast p2, Lcom/google/api/Documentation;
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
    invoke-virtual {p0, v0}, Lcom/google/api/Documentation$b;->i0(Lcom/google/api/Documentation;)Lcom/google/api/Documentation$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public k0(Lcom/google/protobuf/l1;)Lcom/google/api/Documentation$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/Documentation;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/Documentation;

    invoke-virtual {p0, p1}, Lcom/google/api/Documentation$b;->i0(Lcom/google/api/Documentation;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final l0(Lcom/google/protobuf/h3;)Lcom/google/api/Documentation$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Documentation$b;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/Documentation$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Documentation$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Documentation$b;->Z()Lcom/google/api/Documentation$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lcom/google/api/Documentation$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/Documentation$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/Documentation$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Documentation$b;->k0(Lcom/google/protobuf/l1;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/Documentation$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/api/Documentation$b;

    move-result-object p1

    return-object p1
.end method
