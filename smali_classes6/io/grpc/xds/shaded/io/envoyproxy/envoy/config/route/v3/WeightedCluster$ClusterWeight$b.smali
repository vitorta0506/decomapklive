.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$d;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Lcom/google/protobuf/UInt32Value;

.field private j:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/UInt32Value;",
            "Lcom/google/protobuf/UInt32Value$b;",
            "Lcom/google/protobuf/e3;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

.field private l:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k0;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/protobuf/z0;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/protobuf/z0;

.field private s:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->e:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->h:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    .line 7
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->l0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->e:I

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->h:Ljava/lang/Object;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    .line 15
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    .line 18
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->l0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    :cond_0
    return-void
.end method

.method private h0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private i0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private j0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->s:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->s:Lcom/google/protobuf/g1;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->s:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->s:Lcom/google/protobuf/g1;

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->f()Lcom/google/protobuf/g1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->s:Lcom/google/protobuf/g1;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->s:Lcom/google/protobuf/g1;

    return-object v0
.end method

.method private k0()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->s:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private l0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->h0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->i0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method protected M(I)Lcom/google/protobuf/g1;
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->k0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected N(I)Lcom/google/protobuf/g1;
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->j0()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->u0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->j:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->i:Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    .line 6
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->k:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    .line 9
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    .line 12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    .line 13
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/util/List;)Ljava/util/List;

    .line 15
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    .line 17
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    .line 18
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    if-nez v1, :cond_6

    .line 20
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    .line 22
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    .line 23
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/util/List;)Ljava/util/List;

    .line 25
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 26
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    .line 27
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    .line 28
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 29
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->k0()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;

    .line 30
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->n()V

    .line 31
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->e:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_8

    .line 32
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;I)I

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->u0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public g0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->m:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1800()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->h:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasWeight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->s0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    .line 7
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasMetadataMatch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 10
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 11
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    .line 13
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    goto :goto_0

    .line 14
    :cond_4
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->a0()V

    .line 15
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 17
    :cond_5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 20
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    .line 21
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m:Ljava/util/List;

    .line 22
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->h0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 25
    :cond_7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 26
    :cond_8
    :goto_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 27
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    .line 29
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    goto :goto_3

    .line 30
    :cond_9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->b0()V

    .line 31
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/z0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 33
    :cond_a
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    if-nez v0, :cond_c

    .line 34
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 35
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    .line 37
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    goto :goto_4

    .line 38
    :cond_b
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->d0()V

    .line 39
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_5

    .line 41
    :cond_c
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 42
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 44
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    .line 45
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->p:Ljava/util/List;

    .line 46
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    .line 47
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 48
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->i0()Lcom/google/protobuf/l2;

    move-result-object v1

    :cond_d
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    goto :goto_5

    .line 49
    :cond_e
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->q:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 50
    :cond_f
    :goto_5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 51
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    .line 53
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->g:I

    goto :goto_6

    .line 54
    :cond_10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->e0()V

    .line 55
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 57
    :cond_11
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->j0()Lcom/google/protobuf/g1;

    move-result-object v0

    .line 58
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/g1;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g1;->o(Lcom/google/protobuf/g1;)V

    .line 60
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$HostRewriteSpecifierCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    goto :goto_7

    :cond_12
    const/16 v0, 0xb

    .line 61
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->e:I

    .line 62
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->f:Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 64
    :goto_7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->access$1700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public q0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->k:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->k:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->k:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

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

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    return-object p1
.end method

.method public s0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->j:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->i:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->i:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->i:Lcom/google/protobuf/UInt32Value;

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

.method public t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->m0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public final u0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->n0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method
