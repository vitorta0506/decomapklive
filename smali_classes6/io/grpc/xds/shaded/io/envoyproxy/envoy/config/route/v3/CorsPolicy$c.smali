.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/b;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/n;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Lcom/google/protobuf/BoolValue;

.field private o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lcom/google/protobuf/BoolValue;",
            "Lcom/google/protobuf/BoolValue$b;",
            "Lcom/google/protobuf/l;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x0;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

.field private r:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/x0;",
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
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->e:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->j:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->k:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->l:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->m:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->e0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->e:I

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->j:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->k:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->l:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->m:Ljava/lang/Object;

    .line 18
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->e0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    :cond_0
    return-void
.end method

.method private b0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private e0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->b0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$a;)V

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    .line 3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    if-nez v2, :cond_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    .line 6
    :cond_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Ljava/util/List;)Ljava/util/List;

    .line 8
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->o:Lcom/google/protobuf/q2;

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->n:Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    .line 15
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->e:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_4

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_3

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_4
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->r:Lcom/google/protobuf/q2;

    if-nez v1, :cond_5

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    .line 22
    :goto_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->e:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;I)I

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->o:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->n:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/BoolValue;->newBuilder(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->n:Lcom/google/protobuf/BoolValue;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->n:Lcom/google/protobuf/BoolValue;

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
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->d0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->y:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->p:Lcom/google/protobuf/q2;

    const/16 v1, 0x9

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->f:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->f:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->f:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->e:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->p:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;

    .line 11
    :goto_1
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->e:I

    return-object p0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$1500()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    :cond_1
    throw p1
.end method

.method public j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    if-nez v0, :cond_2

    .line 3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    .line 6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->a0()V

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    .line 14
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h:Ljava/util/List;

    .line 15
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g:I

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->b0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 19
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getAllowMethods()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->j:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 22
    :cond_6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getAllowHeaders()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->k:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 25
    :cond_7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getExposeHeaders()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->l:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 28
    :cond_8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getMaxAge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 29
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->m:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 31
    :cond_9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->hasAllowCredentials()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getAllowCredentials()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->g0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    .line 33
    :cond_a
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->hasShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getShadowEnabled()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    .line 35
    :cond_b
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$b;->a:[I

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getEnabledSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$EnabledSpecifierCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_2

    .line 36
    :cond_c
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getFilterEnabled()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    .line 37
    :goto_2
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->r:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFractionalPercent;

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

.method public final m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    return-object p1
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    return-object p1
.end method

.method public final o0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->i0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->j0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->m0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object p1

    return-object p1
.end method
