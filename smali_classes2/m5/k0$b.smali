.class public final Lm5/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;

.field private c:Lcom/google/api/gax/rpc/p;

.field private d:Ljava/lang/String;

.field private e:Lp5/b;

.field private f:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

.field private g:Lm5/a0;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Lorg/threeten/bp/Duration;

.field private k:Lorg/threeten/bp/Duration;

.field private l:Ljava/lang/Boolean;

.field private m:Lk5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/b<",
            "Lio/grpc/r0;",
            "Lio/grpc/r0;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/auth/Credentials;

.field private o:Lm5/l;

.field private p:Lm5/k;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    invoke-direct {v0}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;-><init>()V

    iput-object v0, p0, Lm5/k0$b;->f:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lm5/k0$b;->a:I

    .line 6
    sget-object v0, Lm5/l0;->a:Lm5/l0;

    iput-object v0, p0, Lm5/k0$b;->e:Lp5/b;

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lm5/k;->i(I)Lm5/k;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->p:Lm5/k;

    return-void
.end method

.method synthetic constructor <init>(Lm5/k0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm5/k0$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lm5/k0;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    invoke-direct {v0}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;-><init>()V

    iput-object v0, p0, Lm5/k0$b;->f:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    .line 10
    invoke-static {p1}, Lm5/k0;->l(Lm5/k0;)I

    move-result v0

    iput v0, p0, Lm5/k0$b;->a:I

    .line 11
    invoke-static {p1}, Lm5/k0;->m(Lm5/k0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->b:Ljava/util/concurrent/Executor;

    .line 12
    invoke-static {p1}, Lm5/k0;->n(Lm5/k0;)Lcom/google/api/gax/rpc/p;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->c:Lcom/google/api/gax/rpc/p;

    .line 13
    invoke-static {p1}, Lm5/k0;->o(Lm5/k0;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->d:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lm5/k0;->p(Lm5/k0;)Lp5/b;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->e:Lp5/b;

    .line 15
    invoke-static {p1}, Lm5/k0;->q(Lm5/k0;)Lm5/a0;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->g:Lm5/a0;

    .line 16
    invoke-static {p1}, Lm5/k0;->r(Lm5/k0;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->h:Ljava/lang/Integer;

    .line 17
    invoke-static {p1}, Lm5/k0;->s(Lm5/k0;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->i:Ljava/lang/Integer;

    .line 18
    invoke-static {p1}, Lm5/k0;->t(Lm5/k0;)Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->j:Lorg/threeten/bp/Duration;

    .line 19
    invoke-static {p1}, Lm5/k0;->u(Lm5/k0;)Lorg/threeten/bp/Duration;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->k:Lorg/threeten/bp/Duration;

    .line 20
    invoke-static {p1}, Lm5/k0;->v(Lm5/k0;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->l:Ljava/lang/Boolean;

    .line 21
    invoke-static {p1}, Lm5/k0;->w(Lm5/k0;)Lk5/b;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->m:Lk5/b;

    .line 22
    invoke-static {p1}, Lm5/k0;->x(Lm5/k0;)Lcom/google/auth/Credentials;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->n:Lcom/google/auth/Credentials;

    .line 23
    invoke-static {p1}, Lm5/k0;->y(Lm5/k0;)Lm5/l;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->o:Lm5/l;

    .line 24
    invoke-static {p1}, Lm5/k0;->z(Lm5/k0;)Lm5/k;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->p:Lm5/k;

    .line 25
    invoke-static {p1}, Lm5/k0;->A(Lm5/k0;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->q:Ljava/lang/Boolean;

    .line 26
    invoke-static {p1}, Lm5/k0;->B(Lm5/k0;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lm5/k0$b;->r:Ljava/lang/Boolean;

    .line 27
    iget-object v0, p1, Lm5/k0;->q:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lm5/k0$b;->s:Lcom/google/common/collect/ImmutableMap;

    .line 28
    invoke-static {p1}, Lm5/k0;->C(Lm5/k0;)Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    move-result-object p1

    iput-object p1, p0, Lm5/k0$b;->f:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    return-void
.end method

.method synthetic constructor <init>(Lm5/k0;Lm5/k0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lm5/k0$b;-><init>(Lm5/k0;)V

    return-void
.end method

.method static synthetic a(Lm5/k0$b;)I
    .locals 0

    iget p0, p0, Lm5/k0$b;->a:I

    return p0
.end method

.method static synthetic b(Lm5/k0$b;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lm5/k0$b;)Lorg/threeten/bp/Duration;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->k:Lorg/threeten/bp/Duration;

    return-object p0
.end method

.method static synthetic d(Lm5/k0$b;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->l:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic e(Lm5/k0$b;)Lm5/k;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->p:Lm5/k;

    return-object p0
.end method

.method static synthetic f(Lm5/k0$b;)Lk5/b;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->m:Lk5/b;

    return-object p0
.end method

.method static synthetic g(Lm5/k0$b;)Lcom/google/auth/Credentials;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->n:Lcom/google/auth/Credentials;

    return-object p0
.end method

.method static synthetic h(Lm5/k0$b;)Lm5/l;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->o:Lm5/l;

    return-object p0
.end method

.method static synthetic i(Lm5/k0$b;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->q:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic j(Lm5/k0$b;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->r:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic k(Lm5/k0$b;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->s:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method static synthetic l(Lm5/k0$b;)Lcom/google/api/gax/rpc/p;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->c:Lcom/google/api/gax/rpc/p;

    return-object p0
.end method

.method static synthetic m(Lm5/k0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lm5/k0$b;)Lcom/google/api/gax/rpc/mtls/MtlsProvider;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->f:Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    return-object p0
.end method

.method static synthetic o(Lm5/k0$b;)Lp5/b;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->e:Lp5/b;

    return-object p0
.end method

.method static synthetic p(Lm5/k0$b;)Lm5/a0;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->g:Lm5/a0;

    return-object p0
.end method

.method static synthetic q(Lm5/k0$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic r(Lm5/k0$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic s(Lm5/k0$b;)Lorg/threeten/bp/Duration;
    .locals 0

    iget-object p0, p0, Lm5/k0$b;->j:Lorg/threeten/bp/Duration;

    return-object p0
.end method


# virtual methods
.method public t()Lm5/k0;
    .locals 2

    new-instance v0, Lm5/k0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm5/k0;-><init>(Lm5/k0$b;Lm5/k0$a;)V

    return-object v0
.end method

.method public u(Lcom/google/auth/Credentials;)Lm5/k0$b;
    .locals 0

    iput-object p1, p0, Lm5/k0$b;->n:Lcom/google/auth/Credentials;

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lm5/k0$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lm5/k0;->D(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lm5/k0$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public w(Ljava/util/concurrent/Executor;)Lm5/k0$b;
    .locals 0

    iput-object p1, p0, Lm5/k0$b;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public x(Lcom/google/api/gax/rpc/p;)Lm5/k0$b;
    .locals 0

    iput-object p1, p0, Lm5/k0$b;->c:Lcom/google/api/gax/rpc/p;

    return-object p0
.end method

.method public y(Ljava/lang/Integer;)Lm5/k0$b;
    .locals 0

    iput-object p1, p0, Lm5/k0$b;->h:Ljava/lang/Integer;

    return-object p0
.end method
