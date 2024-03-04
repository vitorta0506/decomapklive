.class final Leh/s0$c$c;
.super Leh/s0$c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/s0$c$c$b;,
        Leh/s0$c$c$a;
    }
.end annotation


# instance fields
.field private final j:Ljava/lang/String;

.field private final k:Lio/grpc/t0$d;

.field private final l:Lio/grpc/t0$b;

.field private m:Lio/grpc/t0;

.field private n:Lio/grpc/internal/k;

.field private o:Lio/grpc/d1$c;

.field final synthetic p:Leh/s0$c;


# direct methods
.method private constructor <init>(Leh/s0$c;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)V
    .locals 7

    .line 2
    iput-object p1, p0, Leh/s0$c$c;->p:Leh/s0$c;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 3
    invoke-direct/range {v0 .. v6}, Leh/s0$c$a;-><init>(Leh/s0$c;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Leh/s0$a;)V

    const-string p2, "dnsHostName"

    .line 4
    invoke-static {p3, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Leh/s0$c$c;->j:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Leh/s0$c;->i(Leh/s0$c;)Lio/grpc/n0$d;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/n0$d;->f()Lio/grpc/v0;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/v0;->c()Lio/grpc/t0$d;

    move-result-object p2

    const-string p3, "nameResolverFactory"

    invoke-static {p2, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/t0$d;

    iput-object p2, p0, Leh/s0$c$c;->k:Lio/grpc/t0$d;

    .line 6
    invoke-static {p1}, Leh/s0$c;->i(Leh/s0$c;)Lio/grpc/n0$d;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/n0$d;->e()Lio/grpc/t0$b;

    move-result-object p1

    const-string p2, "nameResolverArgs"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/t0$b;

    iput-object p1, p0, Leh/s0$c$c;->l:Lio/grpc/t0$b;

    return-void
.end method

.method synthetic constructor <init>(Leh/s0$c;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Leh/s0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Leh/s0$c$c;-><init>(Leh/s0$c;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)V

    return-void
.end method

.method static synthetic i(Leh/s0$c$c;)Lio/grpc/d1$c;
    .locals 0

    iget-object p0, p0, Leh/s0$c$c;->o:Lio/grpc/d1$c;

    return-object p0
.end method

.method static synthetic j(Leh/s0$c$c;Lio/grpc/d1$c;)Lio/grpc/d1$c;
    .locals 0

    iput-object p1, p0, Leh/s0$c$c;->o:Lio/grpc/d1$c;

    return-object p1
.end method

.method static synthetic k(Leh/s0$c$c;)Lio/grpc/t0;
    .locals 0

    iget-object p0, p0, Leh/s0$c$c;->m:Lio/grpc/t0;

    return-object p0
.end method

.method static synthetic l(Leh/s0$c$c;)Lio/grpc/internal/k;
    .locals 0

    iget-object p0, p0, Leh/s0$c$c;->n:Lio/grpc/internal/k;

    return-object p0
.end method

.method static synthetic m(Leh/s0$c$c;Lio/grpc/internal/k;)Lio/grpc/internal/k;
    .locals 0

    iput-object p1, p0, Leh/s0$c$c;->n:Lio/grpc/internal/k;

    return-object p1
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/s0$c$c;->o:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Leh/s0$c$c;->o:Lio/grpc/d1$c;

    .line 4
    iput-object v0, p0, Leh/s0$c$c;->n:Lio/grpc/internal/k;

    :cond_0
    return-void
.end method


# virtual methods
.method g()V
    .locals 1

    .line 1
    invoke-super {p0}, Leh/s0$c$a;->g()V

    .line 2
    iget-object v0, p0, Leh/s0$c$c;->m:Lio/grpc/t0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/grpc/t0;->c()V

    .line 4
    :cond_0
    invoke-direct {p0}, Leh/s0$c$c;->n()V

    return-void
.end method

.method h()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "dns"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leh/s0$c$c;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Leh/s0$c$c;->k:Lio/grpc/t0$d;

    iget-object v2, p0, Leh/s0$c$c;->l:Lio/grpc/t0$b;

    invoke-virtual {v1, v0, v2}, Lio/grpc/t0$d;->b(Ljava/net/URI;Lio/grpc/t0$b;)Lio/grpc/t0;

    move-result-object v1

    iput-object v1, p0, Leh/s0$c$c;->m:Lio/grpc/t0;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xds cluster resolver lb for logical DNS cluster ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Leh/s0$c$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] cannot find DNS resolver with uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    iput-object v0, p0, Leh/s0$c$a;->e:Lio/grpc/Status;

    .line 4
    iget-object v0, p0, Leh/s0$c$c;->p:Leh/s0$c;

    invoke-static {v0}, Leh/s0$c;->h(Leh/s0$c;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Leh/s0$c$c$b;

    invoke-direct {v0, p0, v4}, Leh/s0$c$c$b;-><init>(Leh/s0$c$c;Leh/s0$a;)V

    invoke-virtual {v1, v0}, Lio/grpc/t0;->d(Lio/grpc/t0$e;)V

    return-void

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lio/grpc/Status;->t:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bug, invalid URI creation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Leh/s0$c$c;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    iput-object v0, p0, Leh/s0$c$a;->e:Lio/grpc/Status;

    .line 8
    iget-object v0, p0, Leh/s0$c$c;->p:Leh/s0$c;

    invoke-static {v0}, Leh/s0$c;->h(Leh/s0$c;)V

    return-void
.end method

.method o()V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/s0$c$c;->m:Lio/grpc/t0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Leh/s0$c$c;->n()V

    .line 3
    iget-object v0, p0, Leh/s0$c$c;->m:Lio/grpc/t0;

    invoke-virtual {v0}, Lio/grpc/t0;->b()V

    return-void
.end method
