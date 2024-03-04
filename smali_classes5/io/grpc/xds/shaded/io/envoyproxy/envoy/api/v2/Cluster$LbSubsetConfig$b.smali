.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$h;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:Lcom/google/protobuf/Struct;

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Struct;",
            "Lcom/google/protobuf/Struct$b;",
            "Lcom/google/protobuf/u2;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$LbSubsetSelector;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$LbSubsetSelector;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$LbSubsetSelector$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->f:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->f:I

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$LbSubsetSelector;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$LbSubsetSelector$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->d0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->f:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;I)I

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->g:Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;

    .line 6
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    if-nez v1, :cond_2

    .line 7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    .line 9
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    .line 10
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;Ljava/util/List;)Ljava/util/List;

    .line 12
    :goto_1
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->k:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$5002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;Z)Z

    .line 13
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->l:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$5102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;Z)Z

    .line 14
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->m:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$5202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;Z)Z

    .line 15
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->n:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$5302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;Z)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    return-object v0
.end method

.method public b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/Struct;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->g:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->g:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->g:Lcom/google/protobuf/Struct;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->b0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$5600()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getFallbackPolicyValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->l0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->hasDefaultSubset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getDefaultSubset()Lcom/google/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->g0(Lcom/google/protobuf/Struct;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    .line 6
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_4

    .line 7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    .line 10
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->a0()V

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    .line 18
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i:Ljava/util/List;

    .line 19
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->e:I

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$5400()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->d0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 22
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$4900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 23
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getLocalityWeightAware()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getLocalityWeightAware()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->o0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    .line 25
    :cond_8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getScaleLocalityWeight()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getScaleLocalityWeight()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->r0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    .line 27
    :cond_9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getPanicModeAny()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getPanicModeAny()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->q0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    .line 29
    :cond_a
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getListAsAny()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getListAsAny()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->n0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    .line 31
    :cond_b
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->access$5500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    return-object p1
.end method

.method public l0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->n:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->k:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->m:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public r0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->l:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final s0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object p1

    return-object p1
.end method
