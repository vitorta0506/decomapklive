.class final Lcom/google/api/gax/retrying/a$b;
.super Lcom/google/api/gax/retrying/RetrySettings$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/retrying/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lorg/threeten/bp/Duration;

.field private b:Lorg/threeten/bp/Duration;

.field private c:Ljava/lang/Double;

.field private d:Lorg/threeten/bp/Duration;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Boolean;

.field private g:Lorg/threeten/bp/Duration;

.field private h:Ljava/lang/Double;

.field private i:Lorg/threeten/bp/Duration;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/api/gax/retrying/RetrySettings$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/api/gax/retrying/RetrySettings;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/api/gax/retrying/RetrySettings$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getTotalTimeout()Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/retrying/a$b;->a:Lorg/threeten/bp/Duration;

    .line 5
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getInitialRetryDelay()Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/retrying/a$b;->b:Lorg/threeten/bp/Duration;

    .line 6
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getRetryDelayMultiplier()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/retrying/a$b;->c:Ljava/lang/Double;

    .line 7
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxRetryDelay()Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/retrying/a$b;->d:Lorg/threeten/bp/Duration;

    .line 8
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxAttempts()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/retrying/a$b;->e:Ljava/lang/Integer;

    .line 9
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->isJittered()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/retrying/a$b;->f:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getInitialRpcTimeout()Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/retrying/a$b;->g:Lorg/threeten/bp/Duration;

    .line 11
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getRpcTimeoutMultiplier()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/retrying/a$b;->h:Ljava/lang/Double;

    .line 12
    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings;->getMaxRpcTimeout()Lorg/threeten/bp/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->i:Lorg/threeten/bp/Duration;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/gax/retrying/RetrySettings;Lcom/google/api/gax/retrying/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/gax/retrying/a$b;-><init>(Lcom/google/api/gax/retrying/RetrySettings;)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/api/gax/retrying/RetrySettings;
    .locals 14

    .line 1
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->a:Lorg/threeten/bp/Duration;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/api/gax/retrying/a$b;->b:Lorg/threeten/bp/Duration;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/api/gax/retrying/a$b;->c:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/api/gax/retrying/a$b;->d:Lorg/threeten/bp/Duration;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/api/gax/retrying/a$b;->e:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/api/gax/retrying/a$b;->f:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/api/gax/retrying/a$b;->g:Lorg/threeten/bp/Duration;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/api/gax/retrying/a$b;->h:Ljava/lang/Double;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/api/gax/retrying/a$b;->i:Lorg/threeten/bp/Duration;

    if-nez v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v13, Lcom/google/api/gax/retrying/a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/api/gax/retrying/a$b;->d:Lorg/threeten/bp/Duration;

    iget-object v0, p0, Lcom/google/api/gax/retrying/a$b;->e:Ljava/lang/Integer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/google/api/gax/retrying/a$b;->f:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lcom/google/api/gax/retrying/a$b;->g:Lorg/threeten/bp/Duration;

    iget-object v0, p0, Lcom/google/api/gax/retrying/a$b;->h:Ljava/lang/Double;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-object v11, p0, Lcom/google/api/gax/retrying/a$b;->i:Lorg/threeten/bp/Duration;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/api/gax/retrying/a;-><init>(Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;DLorg/threeten/bp/Duration;IZLorg/threeten/bp/Duration;DLorg/threeten/bp/Duration;Lcom/google/api/gax/retrying/a$a;)V

    return-object v13

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->a:Lorg/threeten/bp/Duration;

    if-nez v1, :cond_2

    const-string v1, " totalTimeout"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->b:Lorg/threeten/bp/Duration;

    if-nez v1, :cond_3

    const-string v1, " initialRetryDelay"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->c:Ljava/lang/Double;

    if-nez v1, :cond_4

    const-string v1, " retryDelayMultiplier"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->d:Lorg/threeten/bp/Duration;

    if-nez v1, :cond_5

    const-string v1, " maxRetryDelay"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->e:Ljava/lang/Integer;

    if-nez v1, :cond_6

    const-string v1, " maxAttempts"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    const-string v1, " jittered"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_7
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->g:Lorg/threeten/bp/Duration;

    if-nez v1, :cond_8

    const-string v1, " initialRpcTimeout"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->h:Ljava/lang/Double;

    if-nez v1, :cond_9

    const-string v1, " rpcTimeoutMultiplier"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_9
    iget-object v1, p0, Lcom/google/api/gax/retrying/a$b;->i:Lorg/threeten/bp/Duration;

    if-nez v1, :cond_a

    const-string v1, " maxRpcTimeout"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 1

    const-string v0, "Null initialRetryDelay"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->b:Lorg/threeten/bp/Duration;

    return-object p0
.end method

.method public d(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 1

    const-string v0, "Null initialRpcTimeout"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->g:Lorg/threeten/bp/Duration;

    return-object p0
.end method

.method public e(Z)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f(I)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public g(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 1

    const-string v0, "Null maxRetryDelay"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->d:Lorg/threeten/bp/Duration;

    return-object p0
.end method

.method public h(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 1

    const-string v0, "Null maxRpcTimeout"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->i:Lorg/threeten/bp/Duration;

    return-object p0
.end method

.method public i(D)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->c:Ljava/lang/Double;

    return-object p0
.end method

.method public j(D)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->h:Ljava/lang/Double;

    return-object p0
.end method

.method public k(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/retrying/RetrySettings$a;
    .locals 1

    const-string v0, "Null totalTimeout"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/retrying/a$b;->a:Lorg/threeten/bp/Duration;

    return-object p0
.end method
