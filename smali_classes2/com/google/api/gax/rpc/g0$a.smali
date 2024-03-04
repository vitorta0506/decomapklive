.class public abstract Lcom/google/api/gax/rpc/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SettingsT:",
        "Lcom/google/api/gax/rpc/g0<",
        "TSettingsT;>;B:",
        "Lcom/google/api/gax/rpc/g0$a<",
        "TSettingsT;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ll5/h;

.field private b:Ll5/f;

.field private c:Lcom/google/api/gax/rpc/p;

.field private d:Lcom/google/api/gax/rpc/p;

.field private e:Lcom/google/api/gax/rpc/i0;

.field private f:Lk5/a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/api/gax/rpc/m0;

.field private k:Lorg/threeten/bp/Duration;

.field private l:Lcom/google/api/gax/tracing/ApiTracerFactory;

.field private m:Z

.field private n:Z


# direct methods
.method protected constructor <init>(Lcom/google/api/gax/rpc/j;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/api/gax/rpc/g0$a;->n:Z

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Ll5/m;->e()Ll5/m$b;

    move-result-object p1

    invoke-virtual {p1}, Ll5/m$b;->a()Ll5/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->a:Ll5/h;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->e:Lcom/google/api/gax/rpc/i0;

    .line 5
    invoke-static {}, Ll5/n;->b()Ll5/n;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->b:Ll5/f;

    .line 6
    new-instance v1, Lcom/google/api/gax/rpc/NoHeaderProvider;

    invoke-direct {v1}, Lcom/google/api/gax/rpc/NoHeaderProvider;-><init>()V

    iput-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->c:Lcom/google/api/gax/rpc/p;

    .line 7
    new-instance v1, Lcom/google/api/gax/rpc/NoHeaderProvider;

    invoke-direct {v1}, Lcom/google/api/gax/rpc/NoHeaderProvider;-><init>()V

    iput-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->d:Lcom/google/api/gax/rpc/p;

    .line 8
    invoke-static {}, Lcom/google/api/core/NanoClock;->getDefaultClock()Lk5/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->f:Lk5/a;

    .line 9
    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->g:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->h:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->i:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/google/api/gax/rpc/q;->i()Lcom/google/api/gax/rpc/m0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->j:Lcom/google/api/gax/rpc/m0;

    const-wide/16 v1, 0xa

    .line 13
    invoke-static {v1, v2}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->k:Lorg/threeten/bp/Duration;

    .line 14
    invoke-static {}, Lcom/google/api/gax/tracing/a;->b()Lcom/google/api/gax/tracing/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->l:Lcom/google/api/gax/tracing/ApiTracerFactory;

    .line 15
    iput-boolean v0, p0, Lcom/google/api/gax/rpc/g0$a;->m:Z

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->h()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Ll5/j;->c(Ljava/util/concurrent/ScheduledExecutorService;)Ll5/j;

    move-result-object v0

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/google/api/gax/rpc/g0$a;->m:Z

    .line 18
    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->a:Ll5/h;

    .line 19
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->p()Lcom/google/api/gax/rpc/h0;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gax/rpc/n;->k(Lcom/google/api/gax/rpc/h0;)Lcom/google/api/gax/rpc/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->e:Lcom/google/api/gax/rpc/i0;

    .line 20
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->d()Lcom/google/auth/Credentials;

    move-result-object v0

    invoke-static {v0}, Ll5/i;->b(Lcom/google/auth/Credentials;)Ll5/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->b:Ll5/f;

    .line 21
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gax/rpc/FixedHeaderProvider;->create(Ljava/util/Map;)Lcom/google/api/gax/rpc/FixedHeaderProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->c:Lcom/google/api/gax/rpc/p;

    .line 22
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->k()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gax/rpc/FixedHeaderProvider;->create(Ljava/util/Map;)Lcom/google/api/gax/rpc/FixedHeaderProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->d:Lcom/google/api/gax/rpc/p;

    .line 23
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->c()Lk5/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->f:Lk5/a;

    .line 24
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "googleapis.com"

    const-string v2, "mtls.googleapis.com"

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->h:Ljava/lang/String;

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->m()Lcom/google/api/gax/rpc/l0;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gax/rpc/o;->i(Lcom/google/api/gax/rpc/l0;)Lcom/google/api/gax/rpc/m0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->j:Lcom/google/api/gax/rpc/m0;

    .line 27
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->n()Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->k:Lorg/threeten/bp/Duration;

    .line 28
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->o()Lcom/google/api/gax/tracing/ApiTracerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->l:Lcom/google/api/gax/tracing/ApiTracerFactory;

    .line 29
    invoke-static {p1}, Lcom/google/api/gax/rpc/g0$a;->x(Lcom/google/api/gax/rpc/j;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->i:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/api/gax/rpc/g0$a;)Ll5/h;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->a:Ll5/h;

    return-object p0
.end method

.method static synthetic b(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/rpc/i0;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->e:Lcom/google/api/gax/rpc/i0;

    return-object p0
.end method

.method static synthetic c(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/rpc/m0;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->j:Lcom/google/api/gax/rpc/m0;

    return-object p0
.end method

.method static synthetic d(Lcom/google/api/gax/rpc/g0$a;)Lorg/threeten/bp/Duration;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->k:Lorg/threeten/bp/Duration;

    return-object p0
.end method

.method static synthetic e(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/tracing/ApiTracerFactory;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->l:Lcom/google/api/gax/tracing/ApiTracerFactory;

    return-object p0
.end method

.method static synthetic f(Lcom/google/api/gax/rpc/g0$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/api/gax/rpc/g0$a;->m:Z

    return p0
.end method

.method static synthetic g(Lcom/google/api/gax/rpc/g0$a;)Ll5/f;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->b:Ll5/f;

    return-object p0
.end method

.method static synthetic h(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/rpc/p;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->c:Lcom/google/api/gax/rpc/p;

    return-object p0
.end method

.method static synthetic i(Lcom/google/api/gax/rpc/g0$a;)Lcom/google/api/gax/rpc/p;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->d:Lcom/google/api/gax/rpc/p;

    return-object p0
.end method

.method static synthetic j(Lcom/google/api/gax/rpc/g0$a;)Lk5/a;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->f:Lk5/a;

    return-object p0
.end method

.method static synthetic k(Lcom/google/api/gax/rpc/g0$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/google/api/gax/rpc/g0$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/google/api/gax/rpc/g0$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/api/gax/rpc/g0$a;->n:Z

    return p0
.end method

.method static synthetic n(Lcom/google/api/gax/rpc/g0$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/g0$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method private static x(Lcom/google/api/gax/rpc/j;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/j;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/j;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/j;->d()Lcom/google/auth/Credentials;

    move-result-object v0

    instance-of v0, v0, Lcom/google/auth/oauth2/p;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/j;->d()Lcom/google/auth/Credentials;

    move-result-object p0

    check-cast p0, Lcom/google/auth/oauth2/p;

    invoke-interface {p0}, Lcom/google/auth/oauth2/p;->getQuotaProjectId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/j;->i()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-goog-user-project"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/j;->i()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/j;->k()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/j;->k()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Lcom/google/api/gax/rpc/i0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->e:Lcom/google/api/gax/rpc/i0;

    return-object v0
.end method

.method protected B()Lcom/google/api/gax/rpc/g0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    return-object p0
.end method

.method public C(Ll5/f;)Lcom/google/api/gax/rpc/g0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll5/f;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll5/f;

    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->b:Ll5/f;

    .line 2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0$a;->B()Lcom/google/api/gax/rpc/g0$a;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/String;)Lcom/google/api/gax/rpc/g0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/api/gax/rpc/g0$a;->n:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "googleapis.com"

    const-string v1, "mtls.googleapis.com"

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->h:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0$a;->B()Lcom/google/api/gax/rpc/g0$a;

    move-result-object p1

    return-object p1
.end method

.method protected E(Lcom/google/api/gax/rpc/p;)Lcom/google/api/gax/rpc/g0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/p;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->d:Lcom/google/api/gax/rpc/p;

    .line 2
    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/api/gax/rpc/p;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-goog-user-project"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/api/gax/rpc/p;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->i:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0$a;->B()Lcom/google/api/gax/rpc/g0$a;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljava/lang/String;)Lcom/google/api/gax/rpc/g0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->h:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0$a;->B()Lcom/google/api/gax/rpc/g0$a;

    move-result-object p1

    return-object p1
.end method

.method protected G(Z)Lcom/google/api/gax/rpc/g0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/api/gax/rpc/g0$a;->n:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0$a;->B()Lcom/google/api/gax/rpc/g0$a;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/google/api/gax/rpc/i0;)Lcom/google/api/gax/rpc/g0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/i0;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/gax/rpc/g0$a;->e:Lcom/google/api/gax/rpc/i0;

    .line 2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0$a;->B()Lcom/google/api/gax/rpc/g0$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract o()Lcom/google/api/gax/rpc/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lcom/google/api/gax/rpc/g0<",
            "TB;>;>()",
            "Lcom/google/api/gax/rpc/g0<",
            "TB;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public p()Ll5/h;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->a:Ll5/h;

    return-object v0
.end method

.method public q()Lk5/a;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->f:Lk5/a;

    return-object v0
.end method

.method public r()Ll5/f;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->b:Ll5/f;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ll5/h;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/api/gax/rpc/g0$a;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->a:Ll5/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->a:Ll5/h;

    const-string v2, "backgroundExecutorProvider"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->e:Lcom/google/api/gax/rpc/i0;

    const-string v2, "transportChannelProvider"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->b:Ll5/f;

    const-string v2, "credentialsProvider"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->c:Lcom/google/api/gax/rpc/p;

    const-string v2, "headerProvider"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->d:Lcom/google/api/gax/rpc/p;

    const-string v2, "internalHeaderProvider"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->f:Lk5/a;

    const-string v2, "clock"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->g:Ljava/lang/String;

    const-string v2, "endpoint"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->h:Ljava/lang/String;

    const-string v2, "mtlsEndpoint"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/api/gax/rpc/g0$a;->n:Z

    const-string v2, "switchToMtlsEndpointAllowed"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->i:Ljava/lang/String;

    const-string v2, "quotaProjectId"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->j:Lcom/google/api/gax/rpc/m0;

    const-string v2, "streamWatchdogProvider"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->k:Lorg/threeten/bp/Duration;

    const-string v2, "streamWatchdogCheckInterval"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/g0$a;->l:Lcom/google/api/gax/tracing/ApiTracerFactory;

    const-string v2, "tracerFactory"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/google/api/gax/rpc/p;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->c:Lcom/google/api/gax/rpc/p;

    return-object v0
.end method

.method protected v()Lcom/google/api/gax/rpc/p;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->d:Lcom/google/api/gax/rpc/p;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public y()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->k:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public z()Lcom/google/api/gax/rpc/m0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/g0$a;->j:Lcom/google/api/gax/rpc/m0;

    return-object v0
.end method
