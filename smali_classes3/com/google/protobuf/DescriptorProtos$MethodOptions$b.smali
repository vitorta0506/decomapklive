.class public final Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
.super Lcom/google/protobuf/GeneratedMessageV3$d;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$MethodOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$d<",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$o;"
    }
.end annotation


# instance fields
.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$b;",
            "Lcom/google/protobuf/DescriptorProtos$u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$d;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->h:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->m0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->h:I

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->m0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private j0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    :cond_0
    return-void
.end method

.method private l0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$b;",
            "Lcom/google/protobuf/DescriptorProtos$u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

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

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private m0()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->l0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->e0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i0()Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->h0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->h0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->x()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->e0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->q0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->v0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->e0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->g0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->g0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

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

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i0()Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public e0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$d;->X(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    return-object p1
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->n0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->v0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public g0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->h0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->k0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->k0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->w()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public h0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$d;Lcom/google/protobuf/DescriptorProtos$a;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->g:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 4
    :cond_1
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->h:I

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24502(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 6
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    .line 8
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    .line 11
    :goto_1
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->n0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public i0()Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    return-object v0
.end method

.method public k0()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i0()Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->o0(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

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

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$MethodOptions;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->o0(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public o0(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->s0(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasIdempotencyLevel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getIdempotencyLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->u0(Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_4

    .line 7
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24600(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24600(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    .line 10
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j0()V

    .line 12
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24600(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24600(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    .line 18
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24600(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->i:Ljava/util/List;

    .line 19
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    .line 20
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_5

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->l0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->j:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24600(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 23
    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$d;->a0(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 24
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->o0(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    return-object p1
.end method

.method public s0(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->g:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$d;->b0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$d;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->n0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->f:I

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->h:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->q0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public final v0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;->r0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$b;

    move-result-object p1

    return-object p1
.end method
