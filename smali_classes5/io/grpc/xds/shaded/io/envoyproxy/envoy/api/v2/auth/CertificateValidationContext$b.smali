.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
.super Lcom/google/protobuf/GeneratedMessageV3$b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$b<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;",
        ">;",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/a;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

.field private g:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/n;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/protobuf/z0;

.field private i:Lcom/google/protobuf/z0;

.field private j:Lcom/google/protobuf/z0;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/protobuf/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/k;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/protobuf/BoolValue;

.field private n:Lcom/google/protobuf/q2;
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

.field private o:Lcom/google/protobuf/BoolValue;

.field private p:Lcom/google/protobuf/q2;
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

.field private q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

.field private r:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/n;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->t:I

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i0()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    .line 11
    sget-object p1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    .line 12
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    .line 13
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->t:I

    .line 16
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i0()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    :cond_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/y0;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/y0;-><init>(Lcom/google/protobuf/z0;)V

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    :cond_0
    return-void
.end method

.method private h0()Lcom/google/protobuf/l2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/l2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/StringMatcher$c;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v2, v2, 0x8

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

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    return-object v0
.end method

.method private i0()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h0()Lcom/google/protobuf/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D()Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method protected K()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P0(Lcom/google/protobuf/l1;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->v0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->C(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    return-object p1
.end method

.method public X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->A(Lcom/google/protobuf/l1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$a;)V

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->g:Lcom/google/protobuf/q2;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    .line 5
    :goto_0
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    .line 7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    .line 8
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 9
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    .line 11
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    .line 12
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 13
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    .line 15
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    .line 16
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    if-nez v1, :cond_5

    .line 18
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    .line 20
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    .line 21
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/l2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Ljava/util/List;)Ljava/util/List;

    .line 23
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->n:Lcom/google/protobuf/q2;

    if-nez v1, :cond_6

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->m:Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    goto :goto_2

    .line 25
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    .line 26
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->p:Lcom/google/protobuf/q2;

    if-nez v1, :cond_7

    .line 27
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->o:Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    goto :goto_3

    .line 28
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;

    .line 29
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->r:Lcom/google/protobuf/q2;

    if-nez v1, :cond_8

    .line 30
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    goto :goto_4

    .line 31
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/q2;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    .line 32
    :goto_4
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->s:Z

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;Z)Z

    .line 33
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->t:I

    invoke-static {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;I)I

    .line 34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->Q()V

    return-object v0
.end method

.method public Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->D()Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->X()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

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

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f1(Lcom/google/protobuf/h3;)Lcom/google/protobuf/l1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->v0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public g0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;
    .locals 1

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->g0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->g0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public bridge synthetic i(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->r:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->q:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

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

.method public k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1600()Lcom/google/protobuf/e2;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/e2;->m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;
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
    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    :cond_1
    throw p1
.end method

.method public l0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->hasTrustedCa()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->getTrustedCa()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->q0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    .line 4
    :cond_1
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    .line 7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->d0()V

    .line 9
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 11
    :cond_3
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    .line 14
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    goto :goto_1

    .line 15
    :cond_4
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->b0()V

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->i:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 18
    :cond_5
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/z0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/z0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    .line 21
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    goto :goto_2

    .line 22
    :cond_6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e0()V

    .line 23
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j:Lcom/google/protobuf/z0;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/z0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    .line 25
    :cond_7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    if-nez v0, :cond_9

    .line 26
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 27
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    .line 29
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    goto :goto_3

    .line 30
    :cond_8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->a0()V

    .line 31
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    goto :goto_4

    .line 33
    :cond_9
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 34
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    invoke-virtual {v0}, Lcom/google/protobuf/l2;->f()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    .line 37
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k:Ljava/util/List;

    .line 38
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->e:I

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 40
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->h0()Lcom/google/protobuf/l2;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    goto :goto_4

    .line 41
    :cond_b
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l:Lcom/google/protobuf/l2;

    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2;

    .line 42
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->hasRequireOcspStaple()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->getRequireOcspStaple()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->n0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    .line 44
    :cond_d
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->hasRequireSignedCertificateTimestamp()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 45
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->getRequireSignedCertificateTimestamp()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->o0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    .line 46
    :cond_e
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->hasCrl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->getCrl()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    .line 48
    :cond_f
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->getAllowExpiredCertificate()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 49
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->getAllowExpiredCertificate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->s0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    .line 50
    :cond_10
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 51
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->getTrustChainVerificationValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->u0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    .line 52
    :cond_11
    invoke-static {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;->access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext;)Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic n()Lcom/google/protobuf/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->Z()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object v0

    return-object v0
.end method

.method public n0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->n:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->m:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/BoolValue;->newBuilder(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->m:Lcom/google/protobuf/BoolValue;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->m:Lcom/google/protobuf/BoolValue;

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

.method public o0(Lcom/google/protobuf/BoolValue;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->p:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->o:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/BoolValue;->newBuilder(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->o:Lcom/google/protobuf/BoolValue;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->o:Lcom/google/protobuf/BoolValue;

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

.method public q0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->g:Lcom/google/protobuf/q2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;->newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->f:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/DataSource;

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

.method public final r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->P(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    return-object p1
.end method

.method public s0(Z)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->s:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public t0(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$b;->S(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    return-object p1
.end method

.method public bridge synthetic u(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->k0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->t:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$b;->R()V

    return-object p0
.end method

.method public bridge synthetic v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->l0(Lcom/google/protobuf/l1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public final v0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$b;->T(Lcom/google/protobuf/h3;)Lcom/google/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    return-object p1
.end method

.method public bridge synthetic z(Lcom/google/protobuf/h3;)Lcom/google/protobuf/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;->r0(Lcom/google/protobuf/h3;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/CertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method
