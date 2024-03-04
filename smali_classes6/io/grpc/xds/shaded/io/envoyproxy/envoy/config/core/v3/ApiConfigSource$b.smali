.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/google/protobuf/z0;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/w;",
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

.field private m:Lcom/google/protobuf/Duration;

.field private n:Lcom/google/protobuf/q2;
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

.field private o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

.field private p:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/r0;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->f:I

    .line 5
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->g:I

    .line 6
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->g0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->f:I

    .line 11
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->g:I

    .line 12
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    .line 14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/GrpcService$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/w;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

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

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->O()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/l2;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private g0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->f:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;I)I

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->g:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;I)I

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    .line 7
    :cond_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    if-nez v1, :cond_2

    .line 9
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    .line 11
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    .line 12
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Ljava/util/List;)Ljava/util/List;

    .line 14
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->k:Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 17
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_4

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->m:Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Duration;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 20
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 21
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

    .line 23
    :goto_3
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->q:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;Z)Z

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$1400()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getApiTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->o0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 4
    :cond_1
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getTransportApiVersionValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->s0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 6
    :cond_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    .line 9
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->a0()V

    .line 11
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 13
    :cond_4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    if-nez v0, :cond_6

    .line 14
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    .line 17
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    goto :goto_1

    .line 18
    :cond_5
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->b0()V

    .line 19
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 22
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    .line 25
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i:Ljava/util/List;

    .line 26
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e:I

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->e0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 29
    :cond_8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 30
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->hasRefreshDelay()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getRefreshDelay()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->l0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 32
    :cond_a
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->hasRequestTimeout()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getRequestTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->m0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 34
    :cond_b
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->hasRateLimitSettings()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getRateLimitSettings()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 36
    :cond_c
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getSetNodeOnFirstMessageOnly()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getSetNodeOnFirstMessageOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->r0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 38
    :cond_d
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->p:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->o:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RateLimitSettings;

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

.method public l0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->k:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->k:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->k:Lcom/google/protobuf/Duration;

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

.method public m0(Lcom/google/protobuf/Duration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->m:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->m:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->m:Lcom/google/protobuf/Duration;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    return-object p1
.end method

.method public o0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->f:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    return-object p1
.end method

.method public r0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->q:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public s0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->h0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->i0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->n0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object p1

    return-object p1
.end method
