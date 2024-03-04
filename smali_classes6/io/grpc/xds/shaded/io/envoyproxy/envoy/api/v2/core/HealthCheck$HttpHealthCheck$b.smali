.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$f;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

.field private i:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

.field private k:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Object;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/google/protobuf/z0;

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int64Range;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int64Range;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int64Range$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/e;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

.field private u:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->f:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->g:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->l:Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    .line 8
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->s:I

    .line 11
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->i0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->f:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->g:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->l:Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    .line 17
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->s:I

    .line 20
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->i0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    :cond_0
    return-void
.end method

.method private g0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int64Range;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int64Range$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private h0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private i0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->h0()Lcom/google/protobuf/l2;

    .line 3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->g0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->i:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    .line 7
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->k:Lcom/google/protobuf/q2;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    .line 10
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    if-nez v1, :cond_3

    .line 12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    .line 14
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    .line 15
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Ljava/util/List;)Ljava/util/List;

    .line 17
    :goto_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    .line 19
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    .line 20
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 21
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->p:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Z)Z

    .line 22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    if-nez v1, :cond_6

    .line 23
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    .line 25
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    .line 26
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 27
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Ljava/util/List;)Ljava/util/List;

    .line 28
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->s:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;I)I

    .line 29
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->u:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 30
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->t:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

    goto :goto_4

    .line 31
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

    .line 32
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    return-object v0
.end method

.method public e0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/w;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2800()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    :cond_1
    throw p1
.end method

.method public k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->g:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->hasSend()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getSend()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    .line 10
    :cond_3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->hasReceive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getReceive()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    .line 12
    :cond_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->l:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 15
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 16
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 17
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    .line 19
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    goto :goto_0

    .line 20
    :cond_6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->b0()V

    .line 21
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_2

    .line 23
    :cond_7
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 26
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    .line 27
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->m:Ljava/util/List;

    .line 28
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->h0()Lcom/google/protobuf/l2;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    goto :goto_2

    .line 31
    :cond_9
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->n:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$1900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 32
    :cond_a
    :goto_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 33
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    .line 35
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    goto :goto_3

    .line 36
    :cond_b
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->d0()V

    .line 37
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Lcom/google/protobuf/z0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 39
    :cond_c
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getUseHttp2()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 40
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getUseHttp2()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->u0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    .line 41
    :cond_d
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    if-nez v0, :cond_f

    .line 42
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 43
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    .line 45
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    goto :goto_4

    .line 46
    :cond_e
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->a0()V

    .line 47
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_5

    .line 49
    :cond_f
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 50
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 51
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    .line 52
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    .line 53
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q:Ljava/util/List;

    .line 54
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->e:I

    .line 55
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->g0()Lcom/google/protobuf/l2;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    goto :goto_5

    .line 57
    :cond_11
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 58
    :cond_12
    :goto_5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 59
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getCodecClientTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->r0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    .line 60
    :cond_13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->hasServiceNameMatcher()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 61
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->getServiceNameMatcher()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    .line 62
    :cond_14
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;->access$2700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->k:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->j:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->i:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->h:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload;

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

.method public o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->u:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->t:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->t:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->t:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;

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

.method public final q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    return-object p1
.end method

.method public r0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->s:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public s0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    return-object p1
.end method

.method public final t0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->j0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->p:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->k0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;->q0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method
