.class public abstract Lcom/google/api/gax/rpc/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/rpc/g0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SettingsT:",
        "Lcom/google/api/gax/rpc/g0<",
        "TSettingsT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ll5/h;

.field private final b:Ll5/f;

.field private final c:Lcom/google/api/gax/rpc/p;

.field private final d:Lcom/google/api/gax/rpc/p;

.field private final e:Lcom/google/api/gax/rpc/i0;

.field private final f:Lk5/a;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/api/gax/rpc/m0;

.field private final k:Lorg/threeten/bp/Duration;

.field private final l:Lcom/google/api/gax/tracing/ApiTracerFactory;

.field private m:Z

.field private final n:Z


# direct methods
.method protected constructor <init>(Lcom/google/api/gax/rpc/g0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->a(Lcom/google/api/gax/rpc/g0$a;)Ll5/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->a:Ll5/h;

    .line 3
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->b(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/rpc/i0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->e:Lcom/google/api/gax/rpc/i0;

    .line 4
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->g(Lcom/google/api/gax/rpc/g0$a;)Ll5/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->b:Ll5/f;

    .line 5
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->h(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/rpc/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->c:Lcom/google/api/gax/rpc/p;

    .line 6
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->i(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/rpc/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->d:Lcom/google/api/gax/rpc/p;

    .line 7
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->j(Lcom/google/api/gax/rpc/g0$a;)Lk5/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->f:Lk5/a;

    .line 8
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->k(Lcom/google/api/gax/rpc/g0$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->g:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->l(Lcom/google/api/gax/rpc/g0$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->h:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->m(Lcom/google/api/gax/rpc/g0$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/api/gax/rpc/g0;->n:Z

    .line 11
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->n(Lcom/google/api/gax/rpc/g0$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->i:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->c(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/rpc/m0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->j:Lcom/google/api/gax/rpc/m0;

    .line 13
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->d(Lcom/google/api/gax/rpc/g0$a;)Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->k:Lorg/threeten/bp/Duration;

    .line 14
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->e(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/tracing/ApiTracerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0;->l:Lcom/google/api/gax/tracing/ApiTracerFactory;

    .line 15
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->f(Lcom/google/api/gax/rpc/g0$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/api/gax/rpc/g0;->m:Z

    return-void
.end method


# virtual methods
.method public final a()Ll5/h;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->a:Ll5/h;

    return-object v0
.end method

.method public final b()Lk5/a;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->f:Lk5/a;

    return-object v0
.end method

.method public final c()Ll5/f;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->b:Ll5/f;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ll5/h;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/api/gax/rpc/g0;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->a:Ll5/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f()Lcom/google/api/gax/rpc/p;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->c:Lcom/google/api/gax/rpc/p;

    return-object v0
.end method

.method protected final g()Lcom/google/api/gax/rpc/p;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->d:Lcom/google/api/gax/rpc/p;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->k:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public final k()Lcom/google/api/gax/rpc/m0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->j:Lcom/google/api/gax/rpc/m0;

    return-object v0
.end method

.method final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/gax/rpc/g0;->n:Z

    return v0
.end method

.method public m()Lcom/google/api/gax/tracing/ApiTracerFactory;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->l:Lcom/google/api/gax/tracing/ApiTracerFactory;

    return-object v0
.end method

.method public final n()Lcom/google/api/gax/rpc/i0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0;->e:Lcom/google/api/gax/rpc/i0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->a:Ll5/h;

    const-string v2, "backgroundExecutorProvider"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->e:Lcom/google/api/gax/rpc/i0;

    const-string v2, "transportChannelProvider"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->b:Ll5/f;

    const-string v2, "credentialsProvider"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->c:Lcom/google/api/gax/rpc/p;

    const-string v2, "headerProvider"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->d:Lcom/google/api/gax/rpc/p;

    const-string v2, "internalHeaderProvider"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->f:Lk5/a;

    const-string v2, "clock"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->g:Ljava/lang/String;

    const-string v2, "endpoint"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->h:Ljava/lang/String;

    const-string v2, "mtlsEndpoint"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/api/gax/rpc/g0;->n:Z

    const-string v2, "switchToMtlsEndpointAllowed"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->i:Ljava/lang/String;

    const-string v2, "quotaProjectId"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->j:Lcom/google/api/gax/rpc/m0;

    const-string v2, "streamWatchdogProvider"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->k:Lorg/threeten/bp/Duration;

    const-string v2, "streamWatchdogCheckInterval"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0;->l:Lcom/google/api/gax/tracing/ApiTracerFactory;

    const-string v2, "tracerFactory"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
