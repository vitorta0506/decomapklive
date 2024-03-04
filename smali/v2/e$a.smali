.class final Lv2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/w;
.implements Lcom/google/android/exoplayer2/drm/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lv2/w$a;

.field private c:Lcom/google/android/exoplayer2/drm/s$a;

.field final synthetic d:Lv2/e;


# direct methods
.method public constructor <init>(Lv2/e;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv2/e$a;->d:Lv2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lv2/a;->s(Lv2/q$b;)Lv2/w$a;

    move-result-object v1

    iput-object v1, p0, Lv2/e$a;->b:Lv2/w$a;

    .line 3
    invoke-virtual {p1, v0}, Lv2/a;->q(Lv2/q$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lv2/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    .line 4
    iput-object p2, p0, Lv2/e$a;->a:Ljava/lang/Object;

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
    iget-object v0, p0, Lv2/e$a;->d:Lv2/e;

    iget-object v1, p0, Lv2/e$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lv2/e;->B(Ljava/lang/Object;Lv2/q$b;)Lv2/q$b;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 2
    :cond_1
    iget-object v0, p0, Lv2/e$a;->d:Lv2/e;

    iget-object v1, p0, Lv2/e$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lv2/e;->D(Ljava/lang/Object;I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lv2/e$a;->b:Lv2/w$a;

    iget v1, v0, Lv2/w$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lv2/w$a;->b:Lv2/q$b;

    .line 4
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lv2/e$a;->d:Lv2/e;

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, p2, v1, v2}, Lv2/a;->r(ILv2/q$b;J)Lv2/w$a;

    move-result-object v0

    iput-object v0, p0, Lv2/e$a;->b:Lv2/w$a;

    .line 7
    :cond_3
    iget-object v0, p0, Lv2/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    iget v1, v0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lv2/q$b;

    .line 8
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    :cond_4
    iget-object v0, p0, Lv2/e$a;->d:Lv2/e;

    invoke-virtual {v0, p1, p2}, Lv2/a;->p(ILv2/q$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lv2/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private g(Lv2/m;)Lv2/m;
    .locals 14

    .line 1
    iget-object v0, p0, Lv2/e$a;->d:Lv2/e;

    iget-object v1, p0, Lv2/e$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lv2/m;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lv2/e;->C(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 2
    iget-object v0, p0, Lv2/e$a;->d:Lv2/e;

    iget-object v1, p0, Lv2/e$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lv2/m;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lv2/e;->C(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 3
    iget-wide v0, p1, Lv2/m;->f:J

    cmp-long v2, v10, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Lv2/m;->g:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lv2/m;

    iget v5, p1, Lv2/m;->a:I

    iget v6, p1, Lv2/m;->b:I

    iget-object v7, p1, Lv2/m;->c:Lcom/google/android/exoplayer2/k1;

    iget v8, p1, Lv2/m;->d:I

    iget-object v9, p1, Lv2/m;->e:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lv2/m;-><init>(IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJ)V

    return-object v0
.end method


# virtual methods
.method public D(ILv2/q$b;Lv2/j;Lv2/m;)V
    .locals 0
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->b:Lv2/w$a;

    .line 3
    invoke-direct {p0, p4}, Lv2/e$a;->g(Lv2/m;)Lv2/m;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lv2/w$a;->r(Lv2/j;Lv2/m;)V

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->b:Lv2/w$a;

    invoke-direct {p0, p3}, Lv2/e$a;->g(Lv2/m;)Lv2/m;

    move-result-object p2

    invoke-virtual {p1, p2}, Lv2/w$a;->i(Lv2/m;)V

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->b:Lv2/w$a;

    .line 3
    invoke-direct {p0, p4}, Lv2/e$a;->g(Lv2/m;)Lv2/m;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2, p5, p6}, Lv2/w$a;->t(Lv2/j;Lv2/m;Ljava/io/IOException;Z)V

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->b:Lv2/w$a;

    .line 3
    invoke-direct {p0, p4}, Lv2/e$a;->g(Lv2/m;)Lv2/m;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lv2/w$a;->v(Lv2/j;Lv2/m;)V

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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
    invoke-direct {p0, p1, p2}, Lv2/e$a;->a(ILv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/e$a;->b:Lv2/w$a;

    .line 3
    invoke-direct {p0, p4}, Lv2/e$a;->g(Lv2/m;)Lv2/m;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lv2/w$a;->p(Lv2/j;Lv2/m;)V

    :cond_0
    return-void
.end method
