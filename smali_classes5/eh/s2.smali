.class public final Leh/s2;
.super Lio/grpc/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/s2$a;,
        Leh/s2$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "xds"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Leh/s2;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/grpc/u0;-><init>()V

    const-string v0, "scheme"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/s2;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Leh/s2;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/s2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/net/URI;Lio/grpc/t0$b;)Lio/grpc/t0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Leh/s2;->f(Ljava/net/URI;Lio/grpc/t0$b;)Leh/r2;

    move-result-object p1

    return-object p1
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public f(Ljava/net/URI;Lio/grpc/t0$b;)Leh/r2;
    .locals 9

    .line 1
    iget-object v0, p0, Leh/s2;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetPath"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "the path component (%s) of the target (%s) must start with \'/\'"

    .line 4
    invoke-static {v1, v2, v0, p1}, Lcom/google/common/base/o;->n(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v0, Leh/r2;

    .line 7
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lio/grpc/t0$b;->e()Lio/grpc/t0$h;

    move-result-object v5

    .line 8
    invoke-virtual {p2}, Lio/grpc/t0$b;->f()Lio/grpc/d1;

    move-result-object v6

    invoke-virtual {p2}, Lio/grpc/t0$b;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    iget-object v8, p0, Leh/s2;->b:Ljava/util/Map;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Leh/r2;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/t0$h;Lio/grpc/d1;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/Map;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
