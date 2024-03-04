.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/c;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:I

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/e;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/f;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/c;",
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
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    .line 5
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->g:I

    .line 6
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->h:I

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->b0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    .line 10
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->g:I

    .line 11
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->h:I

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->b0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->g:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;I)I

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->h:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;I)I

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    :goto_0
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_5
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_7
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_9

    .line 21
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->m:Lcom/google/protobuf/q2;

    if-nez v1, :cond_8

    .line 22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 23
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_9
    :goto_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;I)I

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    return-object v0
.end method

.method public a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->j:Lcom/google/protobuf/q2;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->j:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    return-object p0
.end method

.method public e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->m:Lcom/google/protobuf/q2;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->m:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    return-object p0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$900()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getStatusValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->q0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    .line 4
    :cond_1
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getClientStatusValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->n0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    .line 6
    :cond_2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getPerXdsConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getEndpointConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getScopedRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    goto :goto_0

    .line 10
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->d0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    goto :goto_0

    .line 11
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    .line 12
    :goto_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->i:Lcom/google/protobuf/q2;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->i:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    return-object p0
.end method

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->k:Lcom/google/protobuf/q2;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->k:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    return-object p0
.end method

.method public l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->l:Lcom/google/protobuf/q2;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->l:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->e:I

    return-object p0
.end method

.method public final m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public n0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->h:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public o0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    return-object p1
.end method

.method public q0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->g0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->h0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method
