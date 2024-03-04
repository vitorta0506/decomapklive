.class final Lcom/google/api/gax/retrying/a;
.super Lcom/google/api/gax/retrying/RetrySettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/retrying/a$b;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x729bff7f6b4774b3L


# instance fields
.field private final a:Lorg/threeten/bp/Duration;

.field private final b:Lorg/threeten/bp/Duration;

.field private final c:D

.field private final d:Lorg/threeten/bp/Duration;

.field private final e:I

.field private final f:Z

.field private final g:Lorg/threeten/bp/Duration;

.field private final h:D

.field private final i:Lorg/threeten/bp/Duration;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;DLorg/threeten/bp/Duration;IZLorg/threeten/bp/Duration;DLorg/threeten/bp/Duration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/api/gax/retrying/RetrySettings;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/api/gax/retrying/a;->a:Lorg/threeten/bp/Duration;

    .line 4
    iput-object p2, p0, Lcom/google/api/gax/retrying/a;->b:Lorg/threeten/bp/Duration;

    .line 5
    iput-wide p3, p0, Lcom/google/api/gax/retrying/a;->c:D

    .line 6
    iput-object p5, p0, Lcom/google/api/gax/retrying/a;->d:Lorg/threeten/bp/Duration;

    .line 7
    iput p6, p0, Lcom/google/api/gax/retrying/a;->e:I

    .line 8
    iput-boolean p7, p0, Lcom/google/api/gax/retrying/a;->f:Z

    .line 9
    iput-object p8, p0, Lcom/google/api/gax/retrying/a;->g:Lorg/threeten/bp/Duration;

    .line 10
    iput-wide p9, p0, Lcom/google/api/gax/retrying/a;->h:D

    .line 11
    iput-object p11, p0, Lcom/google/api/gax/retrying/a;->i:Lorg/threeten/bp/Duration;

    return-void
.end method

.method synthetic constructor <init>(Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;DLorg/threeten/bp/Duration;IZLorg/threeten/bp/Duration;DLorg/threeten/bp/Duration;Lcom/google/api/gax/retrying/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/google/api/gax/retrying/a;-><init>(Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;DLorg/threeten/bp/Duration;IZLorg/threeten/bp/Duration;DLorg/threeten/bp/Duration;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/api/gax/retrying/RetrySettings;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lcom/google/api/gax/retrying/RetrySettings;

    .line 3
    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->a:Lorg/threeten/bp/Duration;

    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getTotalTimeout()Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/threeten/bp/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->b:Lorg/threeten/bp/Duration;

    .line 4
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getInitialRetryDelay()Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/threeten/bp/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/api/gax/retrying/a;->c:D

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getRetryDelayMultiplier()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->d:Lorg/threeten/bp/Duration;

    .line 6
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxRetryDelay()Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/threeten/bp/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/api/gax/retrying/a;->e:I

    .line 7
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxAttempts()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/api/gax/retrying/a;->f:Z

    .line 8
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->isJittered()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->g:Lorg/threeten/bp/Duration;

    .line 9
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getInitialRpcTimeout()Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/threeten/bp/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/api/gax/retrying/a;->h:D

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getRpcTimeoutMultiplier()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->i:Lorg/threeten/bp/Duration;

    .line 11
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxRpcTimeout()Lorg/threeten/bp/Duration;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/threeten/bp/Duration;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getInitialRetryDelay()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/retrying/a;->b:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public getInitialRpcTimeout()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/retrying/a;->g:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public getMaxAttempts()I
    .locals 1

    iget v0, p0, Lcom/google/api/gax/retrying/a;->e:I

    return v0
.end method

.method public getMaxRetryDelay()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/retrying/a;->d:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public getMaxRpcTimeout()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/retrying/a;->i:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public getRetryDelayMultiplier()D
    .locals 2

    iget-wide v0, p0, Lcom/google/api/gax/retrying/a;->c:D

    return-wide v0
.end method

.method public getRpcTimeoutMultiplier()D
    .locals 2

    iget-wide v0, p0, Lcom/google/api/gax/retrying/a;->h:D

    return-wide v0
.end method

.method public getTotalTimeout()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/retrying/a;->a:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/retrying/a;->a:Lorg/threeten/bp/Duration;

    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Lcom/google/api/gax/retrying/a;->b:Lorg/threeten/bp/Duration;

    invoke-virtual {v2}, Lorg/threeten/bp/Duration;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-wide v2, p0, Lcom/google/api/gax/retrying/a;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v5, p0, Lcom/google/api/gax/retrying/a;->c:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Lcom/google/api/gax/retrying/a;->d:Lorg/threeten/bp/Duration;

    invoke-virtual {v2}, Lorg/threeten/bp/Duration;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget v2, p0, Lcom/google/api/gax/retrying/a;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-boolean v2, p0, Lcom/google/api/gax/retrying/a;->f:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget-object v2, p0, Lcom/google/api/gax/retrying/a;->g:Lorg/threeten/bp/Duration;

    invoke-virtual {v2}, Lorg/threeten/bp/Duration;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 8
    iget-wide v2, p0, Lcom/google/api/gax/retrying/a;->h:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/api/gax/retrying/a;->h:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 9
    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->i:Lorg/threeten/bp/Duration;

    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isJittered()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/api/gax/retrying/a;->f:Z

    return v0
.end method

.method public toBuilder()Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 2

    new-instance v0, Lcom/google/api/gax/retrying/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/gax/retrying/a$b;-><init>(Lcom/google/api/gax/retrying/RetrySettings;Lcom/google/api/gax/retrying/a$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrySettings{totalTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->a:Lorg/threeten/bp/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialRetryDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->b:Lorg/threeten/bp/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/api/gax/retrying/a;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxRetryDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->d:Lorg/threeten/bp/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/api/gax/retrying/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jittered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/api/gax/retrying/a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", initialRpcTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->g:Lorg/threeten/bp/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rpcTimeoutMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/api/gax/retrying/a;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxRpcTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/retrying/a;->i:Lorg/threeten/bp/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
