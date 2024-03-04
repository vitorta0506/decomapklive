.class final Lcom/google/android/exoplayer2/e2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/w;
.implements Lcom/google/android/exoplayer2/drm/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/e2$c;

.field private b:Lv2/w$a;

.field private c:Lcom/google/android/exoplayer2/drm/s$a;

.field final synthetic d:Lcom/google/android/exoplayer2/e2;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/e2$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->d:Lcom/google/android/exoplayer2/e2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/e2;->b(Lcom/google/android/exoplayer2/e2;)Lv2/w$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/e2$a;->b:Lv2/w$a;

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/e2;->c(Lcom/google/android/exoplayer2/e2;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/e2$a;->a:Lcom/google/android/exoplayer2/e2$c;

    return-void
.end method

.method private a(ILv2/q$b;)Z
    .locals 3
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2$a;->a:Lcom/google/android/exoplayer2/e2$c;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/e2;->d(Lcom/google/android/exoplayer2/e2$c;Lv2/q$b;)Lv2/q$b;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2$a;->a:Lcom/google/android/exoplayer2/e2$c;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/e2;->e(Lcom/google/android/exoplayer2/e2$c;I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2$a;->b:Lv2/w$a;

    iget v1, v0, Lv2/w$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lv2/w$a;->b:Lv2/q$b;

    .line 4
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2$a;->d:Lcom/google/android/exoplayer2/e2;

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/e2;->b(Lcom/google/android/exoplayer2/e2;)Lv2/w$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lv2/w$a;->x(ILv2/q$b;J)Lv2/w$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/e2$a;->b:Lv2/w$a;

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    iget v1, v0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lv2/q$b;

    .line 8
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2$a;->d:Lcom/google/android/exoplayer2/e2;

    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/e2;->c(Lcom/google/android/exoplayer2/e2;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->u(ILv2/q$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public D(ILv2/q$b;Lv2/j;Lv2/m;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->b:Lv2/w$a;

    invoke-virtual {p1, p3, p4}, Lv2/w$a;->r(Lv2/j;Lv2/m;)V

    :cond_0
    return-void
.end method

.method public E(ILv2/q$b;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->j()V

    :cond_0
    return-void
.end method

.method public P(ILv2/q$b;I)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->k(I)V

    :cond_0
    return-void
.end method

.method public Q(ILv2/q$b;Ljava/lang/Exception;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->l(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public a0(ILv2/q$b;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->m()V

    :cond_0
    return-void
.end method

.method public c0(ILv2/q$b;Lv2/m;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->b:Lv2/w$a;

    invoke-virtual {p1, p3}, Lv2/w$a;->i(Lv2/m;)V

    :cond_0
    return-void
.end method

.method public d0(ILv2/q$b;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->b:Lv2/w$a;

    invoke-virtual {p1, p3, p4, p5, p6}, Lv2/w$a;->t(Lv2/j;Lv2/m;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public e0(ILv2/q$b;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->h()V

    :cond_0
    return-void
.end method

.method public i0(ILv2/q$b;Lv2/j;Lv2/m;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->b:Lv2/w$a;

    invoke-virtual {p1, p3, p4}, Lv2/w$a;->v(Lv2/j;Lv2/m;)V

    :cond_0
    return-void
.end method

.method public synthetic k0(ILv2/q$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/l;->a(Lcom/google/android/exoplayer2/drm/s;ILv2/q$b;)V

    return-void
.end method

.method public l0(ILv2/q$b;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->i()V

    :cond_0
    return-void
.end method

.method public r(ILv2/q$b;Lv2/j;Lv2/m;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/e2$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$a;->b:Lv2/w$a;

    invoke-virtual {p1, p3, p4}, Lv2/w$a;->p(Lv2/j;Lv2/m;)V

    :cond_0
    return-void
.end method
