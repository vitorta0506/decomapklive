.class public final Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$e;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:D

.field private k:Lcom/google/protobuf/u0$b;

.field private l:Lcom/google/protobuf/u0$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5300()Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k:Lcom/google/protobuf/u0$b;

    .line 5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5600()Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l:Lcom/google/protobuf/u0$b;

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5300()Lcom/google/protobuf/u0$b;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k:Lcom/google/protobuf/u0$b;

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5600()Lcom/google/protobuf/u0$b;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l:Lcom/google/protobuf/u0$b;

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k:Lcom/google/protobuf/u0$b;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5400(Lcom/google/protobuf/u0$b;)Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k:Lcom/google/protobuf/u0$b;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l:Lcom/google/protobuf/u0$b;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5700(Lcom/google/protobuf/u0$b;)Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l:Lcom/google/protobuf/u0$b;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4000()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->D()Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;
    .locals 5

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget-wide v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->f:D

    invoke-static {v0, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4402(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;D)D

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 4
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->g:D

    invoke-static {v0, v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4502(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;D)D

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    .line 5
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->h:D

    invoke-static {v0, v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4602(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;D)D

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    .line 6
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->i:D

    invoke-static {v0, v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4702(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;D)D

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 7
    iget-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->j:D

    invoke-static {v0, v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4802(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;D)D

    or-int/lit8 v2, v2, 0x10

    .line 8
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k:Lcom/google/protobuf/u0$b;

    invoke-interface {v1}, Lcom/google/protobuf/u0$j;->C()V

    .line 10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    .line 11
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k:Lcom/google/protobuf/u0$b;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4902(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;Lcom/google/protobuf/u0$b;)Lcom/google/protobuf/u0$b;

    .line 12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l:Lcom/google/protobuf/u0$b;

    invoke-interface {v1}, Lcom/google/protobuf/u0$j;->C()V

    .line 14
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    .line 15
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l:Lcom/google/protobuf/u0$b;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5002(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;Lcom/google/protobuf/u0$b;)Lcom/google/protobuf/u0$b;

    .line 16
    invoke-static {v0, v2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5102(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;I)I

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->C()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->hasConst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->getConst()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->hasLt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->getLt()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->o0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->hasLte()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->getLte()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->q0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->hasGt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->getGt()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->m0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->hasGte()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->getGte()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->n0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    .line 12
    :cond_5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4900(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lcom/google/protobuf/u0$b;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 13
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k:Lcom/google/protobuf/u0$b;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4900(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k:Lcom/google/protobuf/u0$b;

    .line 15
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    goto :goto_0

    .line 16
    :cond_6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->a0()V

    .line 17
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->k:Lcom/google/protobuf/u0$b;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$4900(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lcom/google/protobuf/u0$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 19
    :cond_7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5000(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lcom/google/protobuf/u0$b;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 20
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l:Lcom/google/protobuf/u0$b;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5000(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lcom/google/protobuf/u0$b;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l:Lcom/google/protobuf/u0$b;

    .line 22
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    goto :goto_1

    .line 23
    :cond_8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->b0()V

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->l:Lcom/google/protobuf/u0$b;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5000(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lcom/google/protobuf/u0$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 26
    :cond_9
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;->access$5200(Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    return-object p1
.end method

.method public k0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    .line 2
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->f:D

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    return-object p1
.end method

.method public m0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    .line 2
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->i:D

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    .line 2
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->j:D

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    .line 2
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->g:D

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(D)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->e:I

    .line 2
    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->h:D

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;->j0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate$DoubleRules$b;

    move-result-object p1

    return-object p1
.end method