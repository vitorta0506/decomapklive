.class public final Lcom/google/protobuf/Type$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/b3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/protobuf/Type$b;",
        ">;",
        "Lcom/google/protobuf/b3;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/Field$b;",
            "Lcom/google/protobuf/n0;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/z0;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/Option$b;",
            "Lcom/google/protobuf/d2;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/SourceContext;

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/SourceContext;",
            "Lcom/google/protobuf/SourceContext$b;",
            "Lcom/google/protobuf/s2;",
            ">;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/Type$b;->f:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    .line 6
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/protobuf/Type$b;->n:I

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;->i0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/Type$b;->f:Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    .line 13
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/google/protobuf/Type$b;->n:I

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;->i0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/protobuf/Type$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Type$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Type$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/Type$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/Type$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/Type$b;->e:I

    :cond_0
    return-void
.end method

.method private g0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/Field$b;",
            "Lcom/google/protobuf/n0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/Type$b;->e:I

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

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private h0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/Option$b;",
            "Lcom/google/protobuf/d2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->H()Lcom/google/protobuf/GeneratedMessageV3$c;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private i0()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;->g0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;->h0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->Z()Lcom/google/protobuf/Type$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->Y()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->Y()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/c3;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/protobuf/Type;

    const-class v2, Lcom/google/protobuf/Type$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$b;->k0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$b;->r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$b;

    return-object p1
.end method

.method public X()Lcom/google/protobuf/Type;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->Y()Lcom/google/protobuf/Type;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Type;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/protobuf/Type;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/Type;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Type;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/protobuf/Type$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$302(Lcom/google/protobuf/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    .line 6
    iget v1, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/Type$b;->e:I

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$402(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$402(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    .line 9
    :goto_0
    iget v1, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    .line 11
    iget v1, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/Type$b;->e:I

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$502(Lcom/google/protobuf/Type;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    if-nez v1, :cond_4

    .line 14
    iget v1, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    .line 16
    iget v1, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/Type$b;->e:I

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$602(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$602(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 20
    iget-object v1, p0, Lcom/google/protobuf/Type$b;->l:Lcom/google/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$702(Lcom/google/protobuf/Type;Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext;

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$702(Lcom/google/protobuf/Type;Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext;

    .line 22
    :goto_2
    iget v1, p0, Lcom/google/protobuf/Type$b;->n:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Type;->access$802(Lcom/google/protobuf/Type;I)I

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/protobuf/Type$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->X()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->X()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$b;

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

    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->Z()Lcom/google/protobuf/Type$b;

    move-result-object v0

    return-object v0
.end method

.method public e0()Lcom/google/protobuf/Type;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/Type;->getDefaultInstance()Lcom/google/protobuf/Type;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$b;->r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->e0()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->e0()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/c3;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/Type$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Type;->access$900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$b;->l0(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$b;

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

    check-cast p2, Lcom/google/protobuf/Type;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/Type$b;->l0(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public k0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/Type$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/Type;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/Type;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$b;->l0(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/Type;->getDefaultInstance()Lcom/google/protobuf/Type;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$300(Lcom/google/protobuf/Type;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 6
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    .line 9
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/Type$b;->e:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;->a0()V

    .line 11
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 16
    iput-object v1, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    .line 17
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->g:Ljava/util/List;

    .line 18
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/Type$b;->e:I

    .line 19
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;->g0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->h:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$400(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 22
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$500(Lcom/google/protobuf/Type;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$500(Lcom/google/protobuf/Type;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    .line 25
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/Type$b;->e:I

    goto :goto_3

    .line 26
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;->b0()V

    .line 27
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->i:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$500(Lcom/google/protobuf/Type;)Lcom/google/protobuf/z0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    if-nez v0, :cond_a

    .line 30
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 31
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    .line 33
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/Type$b;->e:I

    goto :goto_4

    .line 34
    :cond_9
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;->d0()V

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_5

    .line 37
    :cond_a
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 39
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 40
    iput-object v1, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    .line 41
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type$b;->j:Ljava/util/List;

    .line 42
    iget v0, p0, Lcom/google/protobuf/Type$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/Type$b;->e:I

    .line 43
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_b

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/Type$b;->h0()Lcom/google/protobuf/l2;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    goto :goto_5

    .line 45
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->k:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/protobuf/Type;->access$600(Lcom/google/protobuf/Type;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 46
    :cond_d
    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/Type;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    invoke-virtual {p1}, Lcom/google/protobuf/Type;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Type$b;->m0(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Type$b;

    .line 48
    :cond_e
    invoke-static {p1}, Lcom/google/protobuf/Type;->access$800(Lcom/google/protobuf/Type;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 49
    invoke-virtual {p1}, Lcom/google/protobuf/Type;->getSyntaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Type$b;->q0(I)Lcom/google/protobuf/Type$b;

    .line 50
    :cond_f
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Type$b;

    .line 51
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Type$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->m:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Type$b;->l:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/SourceContext;->newBuilder(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SourceContext$b;->g0(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/SourceContext$b;->Y()Lcom/google/protobuf/SourceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Type$b;->l:Lcom/google/protobuf/SourceContext;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/Type$b;->l:Lcom/google/protobuf/SourceContext;

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

    invoke-virtual {p0}, Lcom/google/protobuf/Type$b;->Z()Lcom/google/protobuf/Type$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Type$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$b;

    return-object p1
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Type$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$b;

    return-object p1
.end method

.method public q0(I)Lcom/google/protobuf/Type$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/Type$b;->n:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Type$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Type$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$b;->k0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/Type$b;

    move-result-object p1

    return-object p1
.end method
