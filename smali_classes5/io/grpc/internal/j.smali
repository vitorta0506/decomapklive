.class public final Lio/grpc/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/j$d;,
        Lio/grpc/internal/j$c;,
        Lio/grpc/internal/j$f;,
        Lio/grpc/internal/j$b;,
        Lio/grpc/internal/j$e;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/p0;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/grpc/p0;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "registry"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/p0;

    iput-object p1, p0, Lio/grpc/internal/j;->a:Lio/grpc/p0;

    const-string p1, "defaultPolicy"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/j;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/p0;->b()Lio/grpc/p0;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/grpc/internal/j;-><init>(Lio/grpc/p0;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/grpc/internal/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/internal/j;)Lio/grpc/p0;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/j;->a:Lio/grpc/p0;

    return-object p0
.end method

.method static synthetic c(Lio/grpc/internal/j;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/o0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/internal/j$f;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/grpc/internal/j;->d(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/o0;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/o0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/internal/j$f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/j;->a:Lio/grpc/p0;

    invoke-virtual {v0, p1}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/internal/j$f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to load \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' because "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but it\'s unavailable"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lio/grpc/internal/j$f;-><init>(Ljava/lang/String;Lio/grpc/internal/j$a;)V

    throw v0
.end method


# virtual methods
.method public e(Lio/grpc/n0$d;)Lio/grpc/internal/j$b;
    .locals 1

    new-instance v0, Lio/grpc/internal/j$b;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/j$b;-><init>(Lio/grpc/internal/j;Lio/grpc/n0$d;)V

    return-object v0
.end method

.method f(Ljava/util/Map;)Lio/grpc/t0$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/grpc/internal/e2;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lio/grpc/internal/e2;->B(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/internal/j;->a:Lio/grpc/p0;

    invoke-static {p1, v0}, Lio/grpc/internal/e2;->z(Ljava/util/List;Lio/grpc/p0;)Lio/grpc/t0$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5
    :goto_1
    sget-object v0, Lio/grpc/Status;->h:Lio/grpc/Status;

    const-string v1, "can\'t parse load balancer configuration"

    .line 6
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method
