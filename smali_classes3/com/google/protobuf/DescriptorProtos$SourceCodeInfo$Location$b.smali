.class public final Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$c;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lcom/google/protobuf/u0$g;

.field private g:Lcom/google/protobuf/u0$g;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lcom/google/protobuf/z0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->f:Lcom/google/protobuf/u0$g;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g:Lcom/google/protobuf/u0$g;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->h:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->i:Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 11
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->f:Lcom/google/protobuf/u0$g;

    .line 12
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g:Lcom/google/protobuf/u0$g;

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->h:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->i:Ljava/lang/Object;

    .line 15
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->f:Lcom/google/protobuf/u0$g;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->f:Lcom/google/protobuf/u0$g;

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g:Lcom/google/protobuf/u0$g;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g:Lcom/google/protobuf/u0$g;

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->Z()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->Y()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->Y()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->H()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    return-object p1
.end method

.method public X()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->Y()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/protobuf/DescriptorProtos$a;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->f:Lcom/google/protobuf/u0$g;

    invoke-interface {v2}, Lcom/google/protobuf/u0$j;->C()V

    .line 4
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->f:Lcom/google/protobuf/u0$g;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27902(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    .line 6
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g:Lcom/google/protobuf/u0$g;

    invoke-interface {v2}, Lcom/google/protobuf/u0$j;->C()V

    .line 8
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g:Lcom/google/protobuf/u0$g;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28002(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->h:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28102(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v2, v2, 0x2

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28202(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    .line 14
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28302(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 16
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28402(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)I

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->X()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->X()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

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

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->Z()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object v0

    return-object v0
.end method

.method public e0()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->m0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e0()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e0()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->G()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->i0(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

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

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->i0(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27900(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->f:Lcom/google/protobuf/u0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27900(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->f:Lcom/google/protobuf/u0$g;

    .line 5
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->b0()V

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->f:Lcom/google/protobuf/u0$g;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$27900(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/u0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28000(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g:Lcom/google/protobuf/u0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28000(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g:Lcom/google/protobuf/u0$g;

    .line 12
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    goto :goto_1

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->d0()V

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->g:Lcom/google/protobuf/u0$g;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28000(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/u0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    .line 18
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28100(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->h:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    .line 22
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28200(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->i:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 24
    :cond_6
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28300(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 25
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28300(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    .line 27
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->e:I

    goto :goto_2

    .line 28
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->a0()V

    .line 29
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$28300(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 31
    :cond_8
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->i0(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    return-object p1
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    return-object p1
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->Z()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->j0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;->k0(Lcom/google/protobuf/h3;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$b;

    move-result-object p1

    return-object p1
.end method
