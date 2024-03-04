.class public final Ldh/d;
.super Ldh/a;
.source "SourceFile"


# static fields
.field static final l:Lio/grpc/n0$i;


# instance fields
.field private final c:Lio/grpc/n0;

.field private final d:Lio/grpc/n0$d;

.field private e:Lio/grpc/n0$c;

.field private f:Lio/grpc/n0;

.field private g:Lio/grpc/n0$c;

.field private h:Lio/grpc/n0;

.field private i:Lio/grpc/ConnectivityState;

.field private j:Lio/grpc/n0$i;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldh/d$c;

    invoke-direct {v0}, Ldh/d$c;-><init>()V

    sput-object v0, Ldh/d;->l:Lio/grpc/n0$i;

    return-void
.end method

.method public constructor <init>(Lio/grpc/n0$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldh/a;-><init>()V

    .line 2
    new-instance v0, Ldh/d$a;

    invoke-direct {v0, p0}, Ldh/d$a;-><init>(Ldh/d;)V

    iput-object v0, p0, Ldh/d;->c:Lio/grpc/n0;

    .line 3
    iput-object v0, p0, Ldh/d;->f:Lio/grpc/n0;

    .line 4
    iput-object v0, p0, Ldh/d;->h:Lio/grpc/n0;

    const-string v0, "helper"

    .line 5
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$d;

    iput-object p1, p0, Ldh/d;->d:Lio/grpc/n0$d;

    return-void
.end method

.method static synthetic g(Ldh/d;)Lio/grpc/n0$d;
    .locals 0

    iget-object p0, p0, Ldh/d;->d:Lio/grpc/n0$d;

    return-object p0
.end method

.method static synthetic h(Ldh/d;)Lio/grpc/n0;
    .locals 0

    iget-object p0, p0, Ldh/d;->h:Lio/grpc/n0;

    return-object p0
.end method

.method static synthetic i(Ldh/d;)Z
    .locals 0

    iget-boolean p0, p0, Ldh/d;->k:Z

    return p0
.end method

.method static synthetic j(Ldh/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldh/d;->k:Z

    return p1
.end method

.method static synthetic k(Ldh/d;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;
    .locals 0

    iput-object p1, p0, Ldh/d;->i:Lio/grpc/ConnectivityState;

    return-object p1
.end method

.method static synthetic l(Ldh/d;Lio/grpc/n0$i;)Lio/grpc/n0$i;
    .locals 0

    iput-object p1, p0, Ldh/d;->j:Lio/grpc/n0$i;

    return-object p1
.end method

.method static synthetic m(Ldh/d;)V
    .locals 0

    invoke-direct {p0}, Ldh/d;->p()V

    return-void
.end method

.method static synthetic n(Ldh/d;)Lio/grpc/n0;
    .locals 0

    iget-object p0, p0, Ldh/d;->f:Lio/grpc/n0;

    return-object p0
.end method

.method static synthetic o(Ldh/d;)Lio/grpc/n0;
    .locals 0

    iget-object p0, p0, Ldh/d;->c:Lio/grpc/n0;

    return-object p0
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldh/d;->d:Lio/grpc/n0$d;

    iget-object v1, p0, Ldh/d;->i:Lio/grpc/ConnectivityState;

    iget-object v2, p0, Ldh/d;->j:Lio/grpc/n0$i;

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    .line 2
    iget-object v0, p0, Ldh/d;->f:Lio/grpc/n0;

    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    .line 3
    iget-object v0, p0, Ldh/d;->h:Lio/grpc/n0;

    iput-object v0, p0, Ldh/d;->f:Lio/grpc/n0;

    .line 4
    iget-object v0, p0, Ldh/d;->g:Lio/grpc/n0$c;

    iput-object v0, p0, Ldh/d;->e:Lio/grpc/n0$c;

    .line 5
    iget-object v0, p0, Ldh/d;->c:Lio/grpc/n0;

    iput-object v0, p0, Ldh/d;->h:Lio/grpc/n0;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ldh/d;->g:Lio/grpc/n0$c;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldh/d;->h:Lio/grpc/n0;

    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    .line 2
    iget-object v0, p0, Ldh/d;->f:Lio/grpc/n0;

    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    return-void
.end method

.method protected f()Lio/grpc/n0;
    .locals 2

    iget-object v0, p0, Ldh/d;->h:Lio/grpc/n0;

    iget-object v1, p0, Ldh/d;->c:Lio/grpc/n0;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldh/d;->f:Lio/grpc/n0;

    :cond_0
    return-object v0
.end method

.method public q(Lio/grpc/n0$c;)V
    .locals 2

    const-string v0, "newBalancerFactory"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ldh/d;->g:Lio/grpc/n0$c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ldh/d;->h:Lio/grpc/n0;

    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    .line 4
    iget-object v0, p0, Ldh/d;->c:Lio/grpc/n0;

    iput-object v0, p0, Ldh/d;->h:Lio/grpc/n0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ldh/d;->g:Lio/grpc/n0$c;

    .line 6
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Ldh/d;->i:Lio/grpc/ConnectivityState;

    .line 7
    sget-object v0, Ldh/d;->l:Lio/grpc/n0$i;

    iput-object v0, p0, Ldh/d;->j:Lio/grpc/n0$i;

    .line 8
    iget-object v0, p0, Ldh/d;->e:Lio/grpc/n0$c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance v0, Ldh/d$b;

    invoke-direct {v0, p0}, Ldh/d$b;-><init>(Ldh/d;)V

    .line 10
    invoke-virtual {p1, v0}, Lio/grpc/n0$c;->a(Lio/grpc/n0$d;)Lio/grpc/n0;

    move-result-object v1

    iput-object v1, v0, Ldh/d$b;->a:Lio/grpc/n0;

    .line 11
    iput-object v1, p0, Ldh/d;->h:Lio/grpc/n0;

    .line 12
    iput-object p1, p0, Ldh/d;->g:Lio/grpc/n0$c;

    .line 13
    iget-boolean p1, p0, Ldh/d;->k:Z

    if-nez p1, :cond_2

    .line 14
    invoke-direct {p0}, Ldh/d;->p()V

    :cond_2
    return-void
.end method
