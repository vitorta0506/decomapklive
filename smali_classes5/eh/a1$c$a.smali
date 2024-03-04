.class final Leh/a1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private d:Leh/t1;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/a1$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Leh/a1$c$a;->a:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Leh/a1$c$a;->b:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Leh/a1$c$a;->e:Ljava/util/List;

    .line 6
    iput-object v0, p0, Leh/a1$c$a;->f:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Leh/a1$c$a;->g:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leh/a1$c$a;->i:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Leh/a1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leh/a1$c$a;-><init>()V

    return-void
.end method

.method static synthetic a(Leh/a1$c$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Leh/a1$c$a;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leh/a1$c$a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leh/a1$c$a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Leh/a1$c$a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Leh/a1$c$a;->c:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic e(Leh/a1$c$a;Leh/t1;)Leh/t1;
    .locals 0

    iput-object p1, p0, Leh/a1$c$a;->d:Leh/t1;

    return-object p1
.end method

.method static synthetic f(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leh/a1$c$a;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Leh/a1$c$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Leh/a1$c$a;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leh/a1$c$a;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Leh/a1$c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leh/a1$c$a;->h:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method j(Ljava/lang/String;)Leh/a1$c$a;
    .locals 2

    iget-object v0, p0, Leh/a1$c$a;->i:Ljava/util/List;

    const-string v1, "clientFeature"

    invoke-static {p1, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method k()Leh/a1$c;
    .locals 12

    new-instance v11, Leh/a1$c;

    iget-object v1, p0, Leh/a1$c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Leh/a1$c$a;->b:Ljava/lang/String;

    iget-object v3, p0, Leh/a1$c$a;->c:Ljava/util/Map;

    iget-object v4, p0, Leh/a1$c$a;->d:Leh/t1;

    iget-object v5, p0, Leh/a1$c$a;->e:Ljava/util/List;

    iget-object v6, p0, Leh/a1$c$a;->f:Ljava/lang/String;

    iget-object v7, p0, Leh/a1$c$a;->g:Ljava/lang/String;

    iget-object v8, p0, Leh/a1$c$a;->h:Ljava/lang/String;

    iget-object v9, p0, Leh/a1$c$a;->i:Ljava/util/List;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Leh/a1$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leh/t1;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Leh/a1$a;)V

    return-object v11
.end method

.method l(Ljava/lang/String;)Leh/a1$c$a;
    .locals 1

    const-string v0, "buildVersion"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/a1$c$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method m(Ljava/lang/String;)Leh/a1$c$a;
    .locals 1

    const-string v0, "cluster"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/a1$c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method n(Ljava/lang/String;)Leh/a1$c$a;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/a1$c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method o(Leh/t1;)Leh/a1$c$a;
    .locals 1

    const-string v0, "locality"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/t1;

    iput-object p1, p0, Leh/a1$c$a;->d:Leh/t1;

    return-object p0
.end method

.method p(Ljava/util/Map;)Leh/a1$c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Leh/a1$c$a;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Leh/a1$c$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method q(Ljava/lang/String;)Leh/a1$c$a;
    .locals 1

    const-string v0, "userAgentName"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/a1$c$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method r(Ljava/lang/String;)Leh/a1$c$a;
    .locals 1

    const-string v0, "userAgentVersion"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/a1$c$a;->h:Ljava/lang/String;

    return-object p0
.end method
