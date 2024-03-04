.class public final Lcom/google/api/gax/rpc/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/m0;


# instance fields
.field private final a:Lk5/a;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lorg/threeten/bp/Duration;


# direct methods
.method private constructor <init>(Lk5/a;Ljava/util/concurrent/ScheduledExecutorService;Lorg/threeten/bp/Duration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/q;->a:Lk5/a;

    .line 3
    iput-object p2, p0, Lcom/google/api/gax/rpc/q;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/api/gax/rpc/q;->c:Lorg/threeten/bp/Duration;

    return-void
.end method

.method public static i()Lcom/google/api/gax/rpc/m0;
    .locals 2

    new-instance v0, Lcom/google/api/gax/rpc/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/api/gax/rpc/q;-><init>(Lk5/a;Ljava/util/concurrent/ScheduledExecutorService;Lorg/threeten/bp/Duration;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lk5/a;)Lcom/google/api/gax/rpc/m0;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/gax/rpc/q;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/a;

    iget-object v1, p0, Lcom/google/api/gax/rpc/q;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/api/gax/rpc/q;->c:Lorg/threeten/bp/Duration;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/api/gax/rpc/q;-><init>(Lk5/a;Ljava/util/concurrent/ScheduledExecutorService;Lorg/threeten/bp/Duration;)V

    return-object v0
.end method

.method public c(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/m0;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/gax/rpc/q;

    iget-object v1, p0, Lcom/google/api/gax/rpc/q;->a:Lk5/a;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/api/gax/rpc/q;->c:Lorg/threeten/bp/Duration;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/api/gax/rpc/q;-><init>(Lk5/a;Ljava/util/concurrent/ScheduledExecutorService;Lorg/threeten/bp/Duration;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/q;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/rpc/m0;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/gax/rpc/q;

    iget-object v1, p0, Lcom/google/api/gax/rpc/q;->a:Lk5/a;

    iget-object v2, p0, Lcom/google/api/gax/rpc/q;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/Duration;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/api/gax/rpc/q;-><init>(Lk5/a;Ljava/util/concurrent/ScheduledExecutorService;Lorg/threeten/bp/Duration;)V

    return-object v0
.end method

.method public f()Lcom/google/api/gax/rpc/l0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/q;->h()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "A clock is needed"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/q;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "A check interval is needed"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/q;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "An executor is needed"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/api/gax/rpc/q;->c:Lorg/threeten/bp/Duration;

    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/api/gax/rpc/q;->a:Lk5/a;

    iget-object v1, p0, Lcom/google/api/gax/rpc/q;->c:Lorg/threeten/bp/Duration;

    iget-object v2, p0, Lcom/google/api/gax/rpc/q;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/api/gax/rpc/l0;->d(Lk5/a;Lorg/threeten/bp/Duration;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/l0;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/q;->c:Lorg/threeten/bp/Duration;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/q;->a:Lk5/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
