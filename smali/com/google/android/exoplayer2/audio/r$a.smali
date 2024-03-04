.class public final Lcom/google/android/exoplayer2/audio/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/android/exoplayer2/audio/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    return-void
.end method

.method private synthetic A(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/audio/r;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/r;->x(IJJ)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/audio/r$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->z(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/audio/r$a;Lb2/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->v(Lb2/e;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->r(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->s(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/audio/r$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/r$a;->x(Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/r$a;->t(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/audio/r$a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/r$a;->y(J)V

    return-void
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/audio/r$a;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/r$a;->A(IJJ)V

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/audio/r$a;Lb2/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->w(Lb2/e;)V

    return-void
.end method

.method private synthetic r(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/r;->v(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic s(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/r;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic t(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/audio/r;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/r;->f(Ljava/lang/String;JJ)V

    return-void
.end method

.method private synthetic u(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/r;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic v(Lb2/e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lb2/e;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/r;->w(Lb2/e;)V

    return-void
.end method

.method private synthetic w(Lb2/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/r;->i(Lb2/e;)V

    return-void
.end method

.method private synthetic x(Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/r;->G(Lcom/google/android/exoplayer2/k1;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/r;->h(Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    return-void
.end method

.method private synthetic y(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/r;->m(J)V

    return-void
.end method

.method private synthetic z(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->b:Lcom/google/android/exoplayer2/audio/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/r;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/r;->a(Z)V

    return-void
.end method


# virtual methods
.method public B(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/audio/i;-><init>(Lcom/google/android/exoplayer2/audio/r$a;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public C(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/q;-><init>(Lcom/google/android/exoplayer2/audio/r$a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public D(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/audio/h;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/h;-><init>(Lcom/google/android/exoplayer2/audio/r$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/m;-><init>(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/n;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/n;-><init>(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/audio/p;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/p;-><init>(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/o;-><init>(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public o(Lb2/e;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lb2/e;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/audio/j;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/j;-><init>(Lcom/google/android/exoplayer2/audio/r$a;Lb2/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public p(Lb2/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/k;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/k;-><init>(Lcom/google/android/exoplayer2/audio/r$a;Lb2/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public q(Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 2
    .param p2    # Lb2/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/audio/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/audio/l;-><init>(Lcom/google/android/exoplayer2/audio/r$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
