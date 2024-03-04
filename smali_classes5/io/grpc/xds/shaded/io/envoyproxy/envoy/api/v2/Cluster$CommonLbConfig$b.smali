.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$d;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/f;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/Duration;

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/Duration;",
            "Lcom/google/protobuf/Duration$b;",
            "Lcom/google/protobuf/v;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

.field private p:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$c;",
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
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    .line 5
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11100()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->g0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    .line 5
    :goto_0
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->k:Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 16
    :goto_3
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->m:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Z)Z

    .line 17
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->n:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Z)Z

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    goto :goto_4

    .line 20
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    .line 21
    :goto_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$11902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;I)I

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->p:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

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

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$12100()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->s:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasHealthyPanicThreshold()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getHealthyPanicThreshold()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasUpdateMergeWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getUpdateMergeWindow()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->l0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getIgnoreNewHostsUntilFirstHc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getIgnoreNewHostsUntilFirstHc()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->q0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getCloseConnectionsOnHostSetChange()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getCloseConnectionsOnHostSetChange()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->n0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 10
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasConsistentHashingLbConfig()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getConsistentHashingLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 12
    :cond_5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getLocalityConfigSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getLocalityWeightedLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    goto :goto_0

    .line 14
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getZoneAwareLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 15
    :goto_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->access$12000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->h:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->g:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

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

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->j:Lcom/google/protobuf/q2;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->j:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    return-object p0
.end method

.method public final k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    return-object p1
.end method

.method public l0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->k:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->k:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->k:Lcom/google/protobuf/Duration;

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

.method public m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->i:Lcom/google/protobuf/q2;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->i:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e:I

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->n:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    return-object p1
.end method

.method public q0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->m:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->g0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->k0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method
