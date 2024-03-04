.class public final Lcom/google/api/ContextRule$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ContextRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/api/ContextRule$b;",
        ">;",
        "Lcom/google/api/r;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/z0;

.field private h:Lcom/google/protobuf/z0;

.field private i:Lcom/google/protobuf/z0;

.field private j:Lcom/google/protobuf/z0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/api/ContextRule$b;->f:Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    .line 6
    iput-object v0, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    .line 7
    iput-object v0, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    .line 8
    iput-object v0, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    .line 9
    invoke-direct {p0}, Lcom/google/api/ContextRule$b;->h0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ContextRule$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/ContextRule$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lcom/google/api/ContextRule$b;->f:Ljava/lang/Object;

    .line 12
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    .line 13
    iput-object p1, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    .line 14
    iput-object p1, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    .line 15
    iput-object p1, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    .line 16
    invoke-direct {p0}, Lcom/google/api/ContextRule$b;->h0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/ContextRule$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/api/ContextRule$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/api/ContextRule$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/api/ContextRule$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/ContextRule$b;->e:I

    :cond_0
    return-void
.end method

.method private h0()V
    .locals 0

    invoke-static {}, Lcom/google/api/ContextRule;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ContextRule$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->Z()Lcom/google/api/ContextRule$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->Y()Lcom/google/api/ContextRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->Y()Lcom/google/api/ContextRule;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/q;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/ContextRule;

    const-class v2, Lcom/google/api/ContextRule$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ContextRule$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ContextRule$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ContextRule$b;->k0(Lcom/google/protobuf/l1;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ContextRule$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ContextRule$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ContextRule$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ContextRule$b;

    return-object p1
.end method

.method public X()Lcom/google/api/ContextRule;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->Y()Lcom/google/api/ContextRule;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/ContextRule;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/api/ContextRule;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/ContextRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/ContextRule;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/ContextRule$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/api/ContextRule$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/api/ContextRule;->access$402(Lcom/google/api/ContextRule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    .line 5
    iget v1, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/api/ContextRule$b;->e:I

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/api/ContextRule;->access$502(Lcom/google/api/ContextRule;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 7
    iget v1, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    .line 9
    iget v1, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/api/ContextRule$b;->e:I

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/api/ContextRule;->access$602(Lcom/google/api/ContextRule;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 11
    iget v1, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    .line 13
    iget v1, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/api/ContextRule$b;->e:I

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/api/ContextRule;->access$702(Lcom/google/api/ContextRule;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 15
    iget v1, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    .line 17
    iget v1, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/api/ContextRule$b;->e:I

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/api/ContextRule;->access$802(Lcom/google/api/ContextRule;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/api/ContextRule$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/api/ContextRule$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->X()Lcom/google/api/ContextRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->X()Lcom/google/api/ContextRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ContextRule$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ContextRule$b;

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

    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->Z()Lcom/google/api/ContextRule$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ContextRule$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ContextRule$b;->n0(Lcom/google/protobuf/h3;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public g0()Lcom/google/api/ContextRule;
    .locals 1

    invoke-static {}, Lcom/google/api/ContextRule;->getDefaultInstance()Lcom/google/api/ContextRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->g0()Lcom/google/api/ContextRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->g0()Lcom/google/api/ContextRule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/q;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ContextRule$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/api/ContextRule;)Lcom/google/api/ContextRule$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/ContextRule;->getDefaultInstance()Lcom/google/api/ContextRule;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/ContextRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$400(Lcom/google/api/ContextRule;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$500(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$500(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    .line 8
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/ContextRule$b;->e:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/google/api/ContextRule$b;->e0()V

    .line 10
    iget-object v0, p0, Lcom/google/api/ContextRule$b;->g:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/api/ContextRule;->access$500(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 12
    :cond_3
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$600(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$600(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    .line 15
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/api/ContextRule$b;->e:I

    goto :goto_1

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/google/api/ContextRule$b;->d0()V

    .line 17
    iget-object v0, p0, Lcom/google/api/ContextRule$b;->h:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/api/ContextRule;->access$600(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 19
    :cond_5
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$700(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$700(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    .line 22
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/api/ContextRule$b;->e:I

    goto :goto_2

    .line 23
    :cond_6
    invoke-direct {p0}, Lcom/google/api/ContextRule$b;->a0()V

    .line 24
    iget-object v0, p0, Lcom/google/api/ContextRule$b;->i:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/api/ContextRule;->access$700(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 26
    :cond_7
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$800(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$800(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    .line 29
    iget v0, p0, Lcom/google/api/ContextRule$b;->e:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/api/ContextRule$b;->e:I

    goto :goto_3

    .line 30
    :cond_8
    invoke-direct {p0}, Lcom/google/api/ContextRule$b;->b0()V

    .line 31
    iget-object v0, p0, Lcom/google/api/ContextRule$b;->j:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/api/ContextRule;->access$800(Lcom/google/api/ContextRule;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 33
    :cond_9
    invoke-static {p1}, Lcom/google/api/ContextRule;->access$900(Lcom/google/api/ContextRule;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/ContextRule$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/api/ContextRule$b;

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ContextRule$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/api/ContextRule;->access$1000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/ContextRule;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/ContextRule$b;->i0(Lcom/google/api/ContextRule;)Lcom/google/api/ContextRule$b;

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

    check-cast p2, Lcom/google/api/ContextRule;
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
    invoke-virtual {p0, v0}, Lcom/google/api/ContextRule$b;->i0(Lcom/google/api/ContextRule;)Lcom/google/api/ContextRule$b;

    .line 6
    :cond_1
    throw p1
.end method

.method public k0(Lcom/google/protobuf/l1;)Lcom/google/api/ContextRule$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/api/ContextRule;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/api/ContextRule;

    invoke-virtual {p0, p1}, Lcom/google/api/ContextRule$b;->i0(Lcom/google/api/ContextRule;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final l0(Lcom/google/protobuf/h3;)Lcom/google/api/ContextRule$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ContextRule$b;

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/api/ContextRule$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ContextRule$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/ContextRule$b;->Z()Lcom/google/api/ContextRule$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lcom/google/api/ContextRule$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/api/ContextRule$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/api/ContextRule$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ContextRule$b;->k0(Lcom/google/protobuf/l1;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/ContextRule$b;->l0(Lcom/google/protobuf/h3;)Lcom/google/api/ContextRule$b;

    move-result-object p1

    return-object p1
.end method
