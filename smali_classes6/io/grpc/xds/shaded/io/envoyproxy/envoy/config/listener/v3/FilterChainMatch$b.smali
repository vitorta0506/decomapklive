.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/c;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lcom/google/protobuf/UInt32Value;

.field private g:Lcom/google/protobuf/q2;
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

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:Lcom/google/protobuf/UInt32Value;

.field private l:Lcom/google/protobuf/q2;
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

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/protobuf/u0$g;

.field private s:Lcom/google/protobuf/z0;

.field private t:Ljava/lang/Object;

.field private u:Lcom/google/protobuf/z0;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->j:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->o:I

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$2200()Lcom/google/protobuf/u0$g;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r:Lcom/google/protobuf/u0$g;

    .line 10
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 11
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->t:Ljava/lang/Object;

    .line 12
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    .line 13
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->j:Ljava/lang/Object;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->o:I

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$2200()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r:Lcom/google/protobuf/u0$g;

    .line 21
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 22
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->t:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    .line 24
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r:Lcom/google/protobuf/u0$g;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$2300(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r:Lcom/google/protobuf/u0$g;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private h0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    :cond_0
    return-void
.end method

.method private j0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private k0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private l0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/CidrRange$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private m0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->k0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->j0()Lcom/google/protobuf/l2;

    .line 4
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->l0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->x0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->f:Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    .line 5
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    if-nez v1, :cond_2

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    .line 9
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    .line 11
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->l:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->k:Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;

    .line 15
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    if-nez v1, :cond_5

    .line 16
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    .line 18
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    .line 19
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    .line 21
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->o:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;I)I

    .line 22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    if-nez v1, :cond_7

    .line 23
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    .line 25
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    .line 26
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Ljava/util/List;)Ljava/util/List;

    .line 28
    :goto_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    .line 29
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r:Lcom/google/protobuf/u0$g;

    invoke-interface {v1}, Lcom/google/protobuf/u0$j;->C()V

    .line 30
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    .line 31
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r:Lcom/google/protobuf/u0$g;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    .line 32
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 33
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 34
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    .line 35
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 36
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->t:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    .line 38
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    .line 39
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    .line 40
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->o0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->x0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/f;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->o0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public i0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->f:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->f:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->f:Lcom/google/protobuf/UInt32Value;

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

.method public o0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$2000()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    :cond_1
    throw p1
.end method

.method public q0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public r0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->hasDestinationPort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getDestinationPort()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    .line 4
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    .line 8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->d0()V

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 15
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    .line 16
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h:Ljava/util/List;

    .line 17
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->k0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->i:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 21
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getAddressSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 22
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->j:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 24
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->hasSuffixLen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getSuffixLen()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    .line 26
    :cond_8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    if-nez v0, :cond_a

    .line 27
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 28
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    .line 30
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    goto :goto_3

    .line 31
    :cond_9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->b0()V

    .line 32
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_5

    .line 34
    :cond_a
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 35
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 37
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    .line 38
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->m:Ljava/util/List;

    .line 39
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->j0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    goto :goto_5

    .line 42
    :cond_c
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->n:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 43
    :cond_d
    :goto_5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getSourceTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->v0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    .line 45
    :cond_e
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    if-nez v0, :cond_10

    .line 46
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 47
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 48
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    .line 49
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    goto :goto_6

    .line 50
    :cond_f
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->h0()V

    .line 51
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_7

    .line 53
    :cond_10
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 54
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 55
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 56
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    .line 57
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->p:Ljava/util/List;

    .line 58
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    .line 59
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 60
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->l0()Lcom/google/protobuf/l2;

    move-result-object v1

    :cond_11
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    goto :goto_7

    .line 61
    :cond_12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 62
    :cond_13
    :goto_7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 63
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r:Lcom/google/protobuf/u0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 64
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r:Lcom/google/protobuf/u0$g;

    .line 65
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    goto :goto_8

    .line 66
    :cond_14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->g0()V

    .line 67
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->r:Lcom/google/protobuf/u0$g;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/u0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :goto_8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 69
    :cond_15
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 70
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 71
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    .line 72
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    goto :goto_9

    .line 73
    :cond_16
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e0()V

    .line 74
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->s:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 76
    :cond_17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->getTransportProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 77
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->t:Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 79
    :cond_18
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 80
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 81
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    .line 82
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->e:I

    goto :goto_a

    .line 83
    :cond_19
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->a0()V

    .line 84
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->u:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :goto_a
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 86
    :cond_1a
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;->access$1900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    .line 87
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public s0(Lcom/google/protobuf/UInt32Value;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->l:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->k:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->k:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->k:Lcom/google/protobuf/UInt32Value;

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

.method public final t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->o0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->q0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method

.method public v0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->o:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public final x0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$b;

    move-result-object p1

    return-object p1
.end method
