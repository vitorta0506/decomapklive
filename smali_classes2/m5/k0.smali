.class public final Lm5/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/k0$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/api/gax/rpc/p;

.field private final d:Ljava/lang/String;

.field private final e:Lp5/b;

.field private final f:Lm5/a0;

.field private final g:Ljava/lang/Integer;

.field private final h:Ljava/lang/Integer;

.field private final i:Lorg/threeten/bp/Duration;

.field private final j:Lorg/threeten/bp/Duration;

.field private final k:Ljava/lang/Boolean;

.field private final l:Lm5/k;

.field private final m:Lcom/google/auth/Credentials;

.field private final n:Lm5/l;

.field private final o:Ljava/lang/Boolean;

.field private final p:Ljava/lang/Boolean;

.field final q:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

.field private final s:Lk5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/b<",
            "Lio/grpc/r0;",
            "Lio/grpc/r0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lm5/k0$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lm5/k0$b;->a(Lm5/k0$b;)I

    move-result v0

    iput v0, p0, Lm5/k0;->a:I

    .line 4
    invoke-static {p1}, Lm5/k0$b;->b(Lm5/k0$b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->b:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {p1}, Lm5/k0$b;->l(Lm5/k0$b;)Lcom/google/api/gax/rpc/p;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->c:Lcom/google/api/gax/rpc/p;

    .line 6
    invoke-static {p1}, Lm5/k0$b;->m(Lm5/k0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lm5/k0$b;->n(Lm5/k0$b;)Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->r:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    .line 8
    invoke-static {p1}, Lm5/k0$b;->o(Lm5/k0$b;)Lp5/b;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->e:Lp5/b;

    .line 9
    invoke-static {p1}, Lm5/k0$b;->p(Lm5/k0$b;)Lm5/a0;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->f:Lm5/a0;

    .line 10
    invoke-static {p1}, Lm5/k0$b;->q(Lm5/k0$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->g:Ljava/lang/Integer;

    .line 11
    invoke-static {p1}, Lm5/k0$b;->r(Lm5/k0$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->h:Ljava/lang/Integer;

    .line 12
    invoke-static {p1}, Lm5/k0$b;->s(Lm5/k0$b;)Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->i:Lorg/threeten/bp/Duration;

    .line 13
    invoke-static {p1}, Lm5/k0$b;->c(Lm5/k0$b;)Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->j:Lorg/threeten/bp/Duration;

    .line 14
    invoke-static {p1}, Lm5/k0$b;->d(Lm5/k0$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->k:Ljava/lang/Boolean;

    .line 15
    invoke-static {p1}, Lm5/k0$b;->e(Lm5/k0$b;)Lm5/k;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->l:Lm5/k;

    .line 16
    invoke-static {p1}, Lm5/k0$b;->f(Lm5/k0$b;)Lk5/b;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->s:Lk5/b;

    .line 17
    invoke-static {p1}, Lm5/k0$b;->g(Lm5/k0$b;)Lcom/google/auth/Credentials;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->m:Lcom/google/auth/Credentials;

    .line 18
    invoke-static {p1}, Lm5/k0$b;->h(Lm5/k0$b;)Lm5/l;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->n:Lm5/l;

    .line 19
    invoke-static {p1}, Lm5/k0$b;->i(Lm5/k0$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->o:Ljava/lang/Boolean;

    .line 20
    invoke-static {p1}, Lm5/k0$b;->j(Lm5/k0$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lm5/k0;->p:Ljava/lang/Boolean;

    .line 21
    invoke-static {p1}, Lm5/k0$b;->k(Lm5/k0$b;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lm5/k0;->H()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Lm5/k0$b;->k(Lm5/k0$b;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lm5/k0;->q:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method synthetic constructor <init>(Lm5/k0$b;Lm5/k0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm5/k0;-><init>(Lm5/k0$b;)V

    return-void
.end method

.method static synthetic A(Lm5/k0;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lm5/k0;->o:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic B(Lm5/k0;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lm5/k0;->p:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic C(Lm5/k0;)Lcom/google/api/gax/rpc/mtls/MtlsProvider;
    .locals 0

    iget-object p0, p0, Lm5/k0;->r:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    return-object p0
.end method

.method static synthetic D(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lm5/k0;->N(Ljava/lang/String;)V

    return-void
.end method

.method private E()Lcom/google/api/gax/rpc/h0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm5/k0;->l:Lm5/k;

    new-instance v1, Lm5/j0;

    invoke-direct {v1, p0}, Lm5/j0;-><init>(Lm5/k0;)V

    .line 2
    invoke-static {v0, v1}, Lm5/j;->s(Lm5/k;Lm5/e;)Lm5/j;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lm5/h0;->b(Lio/grpc/q0;)Lm5/h0;

    move-result-object v0

    return-object v0
.end method

.method private G()Lio/grpc/q0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lm5/z;

    iget-object v1, p0, Lm5/k0;->c:Lcom/google/api/gax/rpc/p;

    .line 2
    invoke-interface {v1}, Lcom/google/api/gax/rpc/p;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lm5/z;-><init>(Ljava/util/Map;)V

    .line 3
    new-instance v1, Lm5/c0;

    invoke-direct {v1}, Lm5/c0;-><init>()V

    .line 4
    iget-object v2, p0, Lm5/k0;->d:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_c

    .line 5
    iget-object v3, p0, Lm5/k0;->d:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 6
    iget-object v4, p0, Lm5/k0;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-direct {p0, v2}, Lm5/k0;->I(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-direct {p0}, Lm5/k0;->J()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-static {}, Lm5/k0;->K()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, p0, Lm5/k0;->m:Lcom/google/auth/Credentials;

    invoke-static {v4}, Lgg/b;->a(Lcom/google/auth/Credentials;)Lio/grpc/b;

    move-result-object v4

    .line 11
    invoke-static {}, Lfg/b;->b()Lfg/b$b;

    move-result-object v6

    invoke-virtual {v6, v4}, Lfg/b$b;->b(Lio/grpc/b;)Lfg/b$b;

    move-result-object v4

    invoke-virtual {v4}, Lfg/b$b;->a()Lio/grpc/e;

    move-result-object v4

    .line 12
    iget-object v6, p0, Lm5/k0;->e:Lp5/b;

    const-string v7, "GOOGLE_CLOUD_ENABLE_DIRECT_PATH_XDS"

    invoke-interface {v6, v7}, Lp5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "google-c2p-experimental:///"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2, v4}, Lio/grpc/a0;->b(Ljava/lang/String;Lio/grpc/e;)Lio/grpc/r0;

    move-result-object v2

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v2, v3, v4}, Lio/grpc/a0;->c(Ljava/lang/String;ILio/grpc/e;)Lio/grpc/r0;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lm5/k0;->q:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v3}, Lio/grpc/r0;->b(Ljava/util/Map;)Lio/grpc/r0;

    :goto_0
    const-wide/16 v3, 0xe10

    .line 17
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v7}, Lio/grpc/r0;->i(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;

    const-wide/16 v3, 0x14

    .line 18
    invoke-virtual {v2, v3, v4, v7}, Lio/grpc/r0;->j(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;

    goto :goto_2

    .line 19
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lm5/k0;->F()Lio/grpc/e;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    .line 20
    iget-object v2, p0, Lm5/k0;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Lio/grpc/a0;->b(Ljava/lang/String;Lio/grpc/e;)Lio/grpc/r0;

    move-result-object v2

    goto :goto_1

    .line 21
    :cond_2
    invoke-static {v2, v3}, Lio/grpc/r0;->f(Ljava/lang/String;I)Lio/grpc/r0;

    move-result-object v2

    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    .line 22
    invoke-virtual {v2}, Lio/grpc/r0;->d()Lio/grpc/r0;

    :cond_3
    const/4 v3, 0x1

    new-array v4, v3, [Lio/grpc/h;

    .line 23
    new-instance v6, Lm5/s;

    invoke-direct {v6}, Lm5/s;-><init>()V

    aput-object v6, v4, v5

    .line 24
    invoke-virtual {v2, v4}, Lio/grpc/r0;->h([Lio/grpc/h;)Lio/grpc/r0;

    move-result-object v2

    new-array v4, v3, [Lio/grpc/h;

    aput-object v0, v4, v5

    .line 25
    invoke-virtual {v2, v4}, Lio/grpc/r0;->h([Lio/grpc/h;)Lio/grpc/r0;

    move-result-object v2

    new-array v3, v3, [Lio/grpc/h;

    aput-object v1, v3, v5

    .line 26
    invoke-virtual {v2, v3}, Lio/grpc/r0;->h([Lio/grpc/h;)Lio/grpc/r0;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lm5/z;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/r0;->o(Ljava/lang/String;)Lio/grpc/r0;

    move-result-object v0

    iget-object v1, p0, Lm5/k0;->b:Ljava/util/concurrent/Executor;

    .line 28
    invoke-virtual {v0, v1}, Lio/grpc/r0;->e(Ljava/util/concurrent/Executor;)Lio/grpc/r0;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lm5/k0;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/r0;->m(I)Lio/grpc/r0;

    .line 31
    :cond_4
    iget-object v1, p0, Lm5/k0;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/r0;->l(I)Lio/grpc/r0;

    .line 33
    :cond_5
    iget-object v1, p0, Lm5/k0;->i:Lorg/threeten/bp/Duration;

    if-eqz v1, :cond_6

    .line 34
    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/r0;->i(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;

    .line 35
    :cond_6
    iget-object v1, p0, Lm5/k0;->j:Lorg/threeten/bp/Duration;

    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/r0;->j(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;

    .line 37
    :cond_7
    iget-object v1, p0, Lm5/k0;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 38
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/r0;->k(Z)Lio/grpc/r0;

    .line 39
    :cond_8
    iget-object v1, p0, Lm5/k0;->f:Lm5/a0;

    if-eqz v1, :cond_9

    .line 40
    invoke-interface {v1}, Lm5/a0;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/r0;->g(Ljava/util/List;)Lio/grpc/r0;

    .line 41
    :cond_9
    iget-object v1, p0, Lm5/k0;->s:Lk5/b;

    if-eqz v1, :cond_a

    .line 42
    invoke-interface {v1, v0}, Lk5/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/r0;

    .line 43
    :cond_a
    invoke-virtual {v0}, Lio/grpc/r0;->a()Lio/grpc/q0;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lm5/k0;->n:Lm5/l;

    if-eqz v1, :cond_b

    .line 45
    invoke-interface {v1, v0}, Lm5/l;->a(Lio/grpc/q0;)V

    :cond_b
    return-object v0

    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 47
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid endpoint - should have been validated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm5/k0;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static H()Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const-string v1, "pick_first"

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "childPolicy"

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const-string v1, "grpclb"

    .line 3
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "loadBalancingConfig"

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private I(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lm5/k0;->e:Lp5/b;

    const-string v1, "GOOGLE_CLOUD_DISABLE_DIRECT_PATH"

    invoke-interface {v0, v1}, Lp5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lm5/k0;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lm5/k0;->e:Lp5/b;

    const-string v2, "GOOGLE_CLOUD_ENABLE_DIRECT_PATH"

    invoke-interface {v0, v2}, Lp5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/k0;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lm5/k0;->m:Lcom/google/auth/Credentials;

    instance-of v0, v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    return v0
.end method

.method static K()Z
    .locals 3

    const-string v0, "os.name"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/dmi/id/product_name"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    invoke-static {v0, v2}, Lcom/google/common/io/i;->b(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/d;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/io/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Google"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Google Compute Engine"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method public static L()Lm5/k0$b;
    .locals 2

    new-instance v0, Lm5/k0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm5/k0$b;-><init>(Lm5/k0$a;)V

    return-object v0
.end method

.method private static N(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3a

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "invalid endpoint, expecting \"<host>:<port>\""

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic k(Lm5/k0;)Lio/grpc/q0;
    .locals 0

    invoke-direct {p0}, Lm5/k0;->G()Lio/grpc/q0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lm5/k0;)I
    .locals 0

    iget p0, p0, Lm5/k0;->a:I

    return p0
.end method

.method static synthetic m(Lm5/k0;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lm5/k0;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic n(Lm5/k0;)Lcom/google/api/gax/rpc/p;
    .locals 0

    iget-object p0, p0, Lm5/k0;->c:Lcom/google/api/gax/rpc/p;

    return-object p0
.end method

.method static synthetic o(Lm5/k0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/k0;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lm5/k0;)Lp5/b;
    .locals 0

    iget-object p0, p0, Lm5/k0;->e:Lp5/b;

    return-object p0
.end method

.method static synthetic q(Lm5/k0;)Lm5/a0;
    .locals 0

    iget-object p0, p0, Lm5/k0;->f:Lm5/a0;

    return-object p0
.end method

.method static synthetic r(Lm5/k0;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lm5/k0;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic s(Lm5/k0;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lm5/k0;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic t(Lm5/k0;)Lorg/threeten/bp/Duration;
    .locals 0

    iget-object p0, p0, Lm5/k0;->i:Lorg/threeten/bp/Duration;

    return-object p0
.end method

.method static synthetic u(Lm5/k0;)Lorg/threeten/bp/Duration;
    .locals 0

    iget-object p0, p0, Lm5/k0;->j:Lorg/threeten/bp/Duration;

    return-object p0
.end method

.method static synthetic v(Lm5/k0;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lm5/k0;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic w(Lm5/k0;)Lk5/b;
    .locals 0

    iget-object p0, p0, Lm5/k0;->s:Lk5/b;

    return-object p0
.end method

.method static synthetic x(Lm5/k0;)Lcom/google/auth/Credentials;
    .locals 0

    iget-object p0, p0, Lm5/k0;->m:Lcom/google/auth/Credentials;

    return-object p0
.end method

.method static synthetic y(Lm5/k0;)Lm5/l;
    .locals 0

    iget-object p0, p0, Lm5/k0;->n:Lm5/l;

    return-object p0
.end method

.method static synthetic z(Lm5/k0;)Lm5/k;
    .locals 0

    iget-object p0, p0, Lm5/k0;->l:Lm5/k;

    return-object p0
.end method


# virtual methods
.method F()Lio/grpc/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm5/k0;->r:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    invoke-virtual {v0}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm5/k0;->r:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    invoke-virtual {v0}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->b()Ljava/security/KeyStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [C

    .line 4
    invoke-virtual {v1, v0, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 5
    invoke-static {}, Lio/grpc/TlsChannelCredentials;->i()Lio/grpc/TlsChannelCredentials$b;

    move-result-object v0

    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/TlsChannelCredentials$b;->j([Ljavax/net/ssl/KeyManager;)Lio/grpc/TlsChannelCredentials$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/TlsChannelCredentials$b;->h()Lio/grpc/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public M()Lm5/k0$b;
    .locals 2

    new-instance v0, Lm5/k0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm5/k0$b;-><init>(Lm5/k0;Lm5/k0$a;)V

    return-object v0
.end method

.method public O(Ljava/util/concurrent/Executor;)Lcom/google/api/gax/rpc/i0;
    .locals 1

    invoke-virtual {p0}, Lm5/k0;->M()Lm5/k0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm5/k0$b;->w(Ljava/util/concurrent/Executor;)Lm5/k0$b;

    move-result-object p1

    invoke-virtual {p1}, Lm5/k0$b;->t()Lm5/k0;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/google/auth/Credentials;)Lcom/google/api/gax/rpc/i0;
    .locals 1

    invoke-virtual {p0}, Lm5/k0;->M()Lm5/k0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm5/k0$b;->u(Lcom/google/auth/Credentials;)Lm5/k0$b;

    move-result-object p1

    invoke-virtual {p1}, Lm5/k0$b;->t()Lm5/k0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/i0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lm5/k0;->O(Ljava/util/concurrent/Executor;)Lcom/google/api/gax/rpc/i0;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lm5/k0;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Lcom/google/api/gax/rpc/h0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lm5/k0;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lm5/k0;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lm5/k0;->E()Lcom/google/api/gax/rpc/h0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getTransportChannel() called when needsEndpoint() is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getTransportChannel() called when needsHeaders() is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lm5/k0;->c:Lcom/google/api/gax/rpc/p;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/google/api/gax/rpc/i0;
    .locals 1

    .line 1
    invoke-static {p1}, Lm5/k0;->N(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lm5/k0;->M()Lm5/k0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm5/k0$b;->v(Ljava/lang/String;)Lm5/k0$b;

    move-result-object p1

    invoke-virtual {p1}, Lm5/k0$b;->t()Lm5/k0;

    move-result-object p1

    return-object p1
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lm5/h0;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lm5/k0;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Ljava/util/Map;)Lcom/google/api/gax/rpc/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/gax/rpc/i0;"
        }
    .end annotation

    invoke-virtual {p0}, Lm5/k0;->M()Lm5/k0$b;

    move-result-object v0

    invoke-static {p1}, Lcom/google/api/gax/rpc/FixedHeaderProvider;->create(Ljava/util/Map;)Lcom/google/api/gax/rpc/FixedHeaderProvider;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm5/k0$b;->x(Lcom/google/api/gax/rpc/p;)Lm5/k0$b;

    move-result-object p1

    invoke-virtual {p1}, Lm5/k0$b;->t()Lm5/k0;

    move-result-object p1

    return-object p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lm5/k0;->m:Lcom/google/auth/Credentials;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
