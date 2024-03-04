.class public abstract Lcom/google/api/gax/retrying/RetrySettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/retrying/RetrySettings$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x729bff7f6b4774b3L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/api/gax/retrying/a$b;

    invoke-direct {v0}, Lcom/google/api/gax/retrying/a$b;-><init>()V

    sget-object v1, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/api/gax/retrying/a$b;->k(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->c(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/google/api/gax/retrying/RetrySettings$a;->i(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->g(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0, v4}, Lcom/google/api/gax/retrying/RetrySettings$a;->f(I)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v0, v4}, Lcom/google/api/gax/retrying/RetrySettings$a;->e(Z)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->d(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/google/api/gax/retrying/RetrySettings$a;->j(D)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/api/gax/retrying/RetrySettings$a;->h(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getInitialRetryDelay()Lorg/threeten/bp/Duration;
.end method

.method public abstract getInitialRpcTimeout()Lorg/threeten/bp/Duration;
.end method

.method public abstract getMaxAttempts()I
.end method

.method public abstract getMaxRetryDelay()Lorg/threeten/bp/Duration;
.end method

.method public abstract getMaxRpcTimeout()Lorg/threeten/bp/Duration;
.end method

.method public abstract getRetryDelayMultiplier()D
.end method

.method public abstract getRpcTimeoutMultiplier()D
.end method

.method public abstract getTotalTimeout()Lorg/threeten/bp/Duration;
.end method

.method public abstract isJittered()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;
.end method
