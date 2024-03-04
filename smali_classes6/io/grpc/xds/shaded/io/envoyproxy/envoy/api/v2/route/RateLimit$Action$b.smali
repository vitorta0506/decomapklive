.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$c;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$h;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$f;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$e;",
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
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    .line 5
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->t0:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->g0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    :goto_0
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->h:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_5
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 17
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_7
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_8

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 21
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_9
    :goto_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_b

    .line 23
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_a

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 25
    :cond_a
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_b
    :goto_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;I)I

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->h:Lcom/google/protobuf/q2;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->h:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    return-object p0
.end method

.method public e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$6000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

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
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->s0:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->getActionSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$ActionSpecifierCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->getHeaderValueMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->getGenericKey()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->getRemoteAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->getRequestHeaders()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->getDestinationCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$DestinationCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->getSourceCluster()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    .line 9
    :goto_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;->access$5900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0

    nop

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->k:Lcom/google/protobuf/q2;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$GenericKey;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->k:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->l:Lcom/google/protobuf/q2;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$HeaderValueMatch;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->l:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    return-object p0
.end method

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->j:Lcom/google/protobuf/q2;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RemoteAddress;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->j:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    return-object p0
.end method

.method public l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->i:Lcom/google/protobuf/q2;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$RequestHeaders;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->i:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    return-object p0
.end method

.method public m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->g:Lcom/google/protobuf/q2;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$SourceCluster;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->g:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e:I

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    return-object p1
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    return-object p1
.end method

.method public final q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->e0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->g0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit$Action$b;

    move-result-object p1

    return-object p1
.end method
