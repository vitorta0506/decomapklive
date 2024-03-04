.class public abstract Lcom/google/api/gax/retrying/RetrySettings$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/retrying/RetrySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/api/gax/retrying/RetrySettings;
.end method

.method public b()Lcom/google/api/gax/retrying/RetrySettings;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/api/gax/retrying/RetrySettings$a;->a()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getTotalTimeout()Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_7

    .line 3
    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getInitialRetryDelay()Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_6

    .line 4
    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getRetryDelayMultiplier()D

    move-result-wide v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v1, v5

    if-ltz v7, :cond_5

    .line 5
    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxRetryDelay()Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getInitialRetryDelay()Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/Duration;->compareTo(Lorg/threeten/bp/Duration;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 6
    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxAttempts()I

    move-result v1

    if-ltz v1, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getInitialRpcTimeout()Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v1

    cmp-long v7, v1, v3

    if-ltz v7, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxRpcTimeout()Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getInitialRpcTimeout()Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/Duration;->compareTo(Lorg/threeten/bp/Duration;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/google/api/gax/retrying/RetrySettings;->getRpcTimeoutMultiplier()D

    move-result-wide v1

    cmpg-double v3, v1, v5

    if-ltz v3, :cond_0

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rpc timeout multiplier must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "max rpc timeout must not be shorter than initial timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initial rpc timeout must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "max attempts must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "max retry delay must not be shorter than initial delay"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "retry delay multiplier must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initial retry delay must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "total timeout must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract c(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
.end method

.method public abstract d(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
.end method

.method public abstract e(Z)Lcom/google/api/gax/retrying/RetrySettings$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract f(I)Lcom/google/api/gax/retrying/RetrySettings$a;
.end method

.method public abstract g(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
.end method

.method public abstract h(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
.end method

.method public abstract i(D)Lcom/google/api/gax/retrying/RetrySettings$a;
.end method

.method public abstract j(D)Lcom/google/api/gax/retrying/RetrySettings$a;
.end method

.method public abstract k(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
.end method
