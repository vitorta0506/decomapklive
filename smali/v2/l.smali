.class public final Lv2/l;
.super Lv2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/l$b;,
        Lv2/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/e<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final k:Lv2/q;

.field private final l:Z

.field private final m:Lcom/google/android/exoplayer2/i3$d;

.field private final n:Lcom/google/android/exoplayer2/i3$b;

.field private o:Lv2/l$a;

.field private p:Lv2/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Lv2/q;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv2/e;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/l;->k:Lv2/q;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lv2/q;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lv2/l;->l:Z

    .line 4
    new-instance p2, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    iput-object p2, p0, Lv2/l;->m:Lcom/google/android/exoplayer2/i3$d;

    .line 5
    new-instance p2, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    iput-object p2, p0, Lv2/l;->n:Lcom/google/android/exoplayer2/i3$b;

    .line 6
    invoke-interface {p1}, Lv2/q;->m()Lcom/google/android/exoplayer2/i3;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-static {p2, p1, p1}, Lv2/l$a;->A(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;Ljava/lang/Object;)Lv2/l$a;

    move-result-object p1

    iput-object p1, p0, Lv2/l;->o:Lv2/l$a;

    .line 8
    iput-boolean v0, p0, Lv2/l;->s:Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1}, Lv2/q;->b()Lcom/google/android/exoplayer2/s1;

    move-result-object p1

    invoke-static {p1}, Lv2/l$a;->z(Lcom/google/android/exoplayer2/s1;)Lv2/l$a;

    move-result-object p1

    iput-object p1, p0, Lv2/l;->o:Lv2/l$a;

    :goto_1
    return-void
.end method

.method private I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/l;->o:Lv2/l$a;

    .line 2
    invoke-static {v0}, Lv2/l$a;->x(Lv2/l$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/l;->o:Lv2/l$a;

    .line 3
    invoke-static {v0}, Lv2/l$a;->x(Lv2/l$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lv2/l$a;->f:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private J(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/l;->o:Lv2/l$a;

    .line 2
    invoke-static {v0}, Lv2/l$a;->x(Lv2/l$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lv2/l$a;->f:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lv2/l;->o:Lv2/l$a;

    invoke-static {p1}, Lv2/l$a;->x(Lv2/l$a;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private N(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lv2/l;->p:Lv2/k;

    .line 2
    iget-object v1, p0, Lv2/l;->o:Lv2/l$a;

    iget-object v2, v0, Lv2/k;->a:Lv2/q$b;

    iget-object v2, v2, Lv2/o;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lv2/l$a;->f(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lv2/l;->o:Lv2/l$a;

    iget-object v3, p0, Lv2/l;->n:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/i3;->j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/i3$b;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 4
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1, p2}, Lv2/k;->q(J)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic B(Ljava/lang/Object;Lv2/q$b;)Lv2/q$b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lv2/l;->K(Ljava/lang/Void;Lv2/q$b;)Lv2/q$b;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic F(Ljava/lang/Object;Lv2/q;Lcom/google/android/exoplayer2/i3;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lv2/l;->M(Ljava/lang/Void;Lv2/q;Lcom/google/android/exoplayer2/i3;)V

    return-void
.end method

.method public H(Lv2/q$b;Lj3/b;J)Lv2/k;
    .locals 1

    .line 1
    new-instance v0, Lv2/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lv2/k;-><init>(Lv2/q$b;Lj3/b;J)V

    .line 2
    iget-object p2, p0, Lv2/l;->k:Lv2/q;

    invoke-virtual {v0, p2}, Lv2/k;->v(Lv2/q;)V

    .line 3
    iget-boolean p2, p0, Lv2/l;->r:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p1, Lv2/o;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lv2/l;->J(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lv2/q$b;->c(Ljava/lang/Object;)Lv2/q$b;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lv2/k;->c(Lv2/q$b;)V

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lv2/l;->p:Lv2/k;

    .line 7
    iget-boolean p1, p0, Lv2/l;->q:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lv2/l;->q:Z

    const/4 p1, 0x0

    .line 9
    iget-object p2, p0, Lv2/l;->k:Lv2/q;

    invoke-virtual {p0, p1, p2}, Lv2/e;->G(Ljava/lang/Object;Lv2/q;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected K(Ljava/lang/Void;Lv2/q$b;)Lv2/q$b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p2, Lv2/o;->a:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lv2/l;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lv2/q$b;->c(Ljava/lang/Object;)Lv2/q$b;

    move-result-object p1

    return-object p1
.end method

.method public L()Lcom/google/android/exoplayer2/i3;
    .locals 1

    iget-object v0, p0, Lv2/l;->o:Lv2/l$a;

    return-object v0
.end method

.method protected M(Ljava/lang/Void;Lv2/q;Lcom/google/android/exoplayer2/i3;)V
    .locals 12

    .line 1
    iget-boolean p1, p0, Lv2/l;->r:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lv2/l;->o:Lv2/l$a;

    invoke-virtual {p1, p3}, Lv2/l$a;->y(Lcom/google/android/exoplayer2/i3;)Lv2/l$a;

    move-result-object p1

    iput-object p1, p0, Lv2/l;->o:Lv2/l$a;

    .line 3
    iget-object p1, p0, Lv2/l;->p:Lv2/k;

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Lv2/k;->i()J

    move-result-wide p1

    .line 5
    invoke-direct {p0, p1, p2}, Lv2/l;->N(J)V

    goto/16 :goto_3

    .line 6
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-boolean p1, p0, Lv2/l;->s:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lv2/l;->o:Lv2/l$a;

    invoke-virtual {p1, p3}, Lv2/l$a;->y(Lcom/google/android/exoplayer2/i3;)Lv2/l$a;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/i3$d;->r:Ljava/lang/Object;

    sget-object p2, Lv2/l$a;->f:Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lv2/l$a;->A(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;Ljava/lang/Object;)Lv2/l$a;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lv2/l;->o:Lv2/l$a;

    goto/16 :goto_3

    .line 10
    :cond_2
    iget-object p1, p0, Lv2/l;->m:Lcom/google/android/exoplayer2/i3$d;

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    .line 11
    iget-object p1, p0, Lv2/l;->m:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3$d;->e()J

    move-result-wide v0

    .line 12
    iget-object p1, p0, Lv2/l;->m:Lcom/google/android/exoplayer2/i3$d;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i3$d;->a:Ljava/lang/Object;

    .line 13
    iget-object v2, p0, Lv2/l;->p:Lv2/k;

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v2}, Lv2/k;->j()J

    move-result-wide v2

    .line 15
    iget-object v4, p0, Lv2/l;->o:Lv2/l$a;

    iget-object v5, p0, Lv2/l;->p:Lv2/k;

    iget-object v5, v5, Lv2/k;->a:Lv2/q$b;

    iget-object v5, v5, Lv2/o;->a:Ljava/lang/Object;

    iget-object v6, p0, Lv2/l;->n:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 16
    iget-object v4, p0, Lv2/l;->n:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/i3$b;->q()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 17
    iget-object v2, p0, Lv2/l;->o:Lv2/l$a;

    iget-object v3, p0, Lv2/l;->m:Lcom/google/android/exoplayer2/i3$d;

    .line 18
    invoke-virtual {v2, p2, v3}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/i3$d;->e()J

    move-result-wide v2

    cmp-long p2, v4, v2

    if-eqz p2, :cond_3

    move-wide v10, v4

    goto :goto_1

    :cond_3
    move-wide v10, v0

    .line 19
    :goto_1
    iget-object v7, p0, Lv2/l;->m:Lcom/google/android/exoplayer2/i3$d;

    iget-object v8, p0, Lv2/l;->n:Lcom/google/android/exoplayer2/i3$b;

    const/4 v9, 0x0

    move-object v6, p3

    .line 20
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/i3;->n(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJ)Landroid/util/Pair;

    move-result-object p2

    .line 21
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 23
    iget-boolean p2, p0, Lv2/l;->s:Z

    if-eqz p2, :cond_4

    .line 24
    iget-object p1, p0, Lv2/l;->o:Lv2/l$a;

    invoke-virtual {p1, p3}, Lv2/l$a;->y(Lcom/google/android/exoplayer2/i3;)Lv2/l$a;

    move-result-object p1

    goto :goto_2

    .line 25
    :cond_4
    invoke-static {p3, p1, v0}, Lv2/l$a;->A(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;Ljava/lang/Object;)Lv2/l$a;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lv2/l;->o:Lv2/l$a;

    .line 26
    iget-object p1, p0, Lv2/l;->p:Lv2/k;

    if-eqz p1, :cond_5

    .line 27
    invoke-direct {p0, v1, v2}, Lv2/l;->N(J)V

    .line 28
    iget-object p1, p1, Lv2/k;->a:Lv2/q$b;

    iget-object p2, p1, Lv2/o;->a:Ljava/lang/Object;

    .line 29
    invoke-direct {p0, p2}, Lv2/l;->J(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lv2/q$b;->c(Ljava/lang/Object;)Lv2/q$b;

    move-result-object p1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x0

    :goto_4
    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lv2/l;->s:Z

    .line 31
    iput-boolean p2, p0, Lv2/l;->r:Z

    .line 32
    iget-object p2, p0, Lv2/l;->o:Lv2/l$a;

    invoke-virtual {p0, p2}, Lv2/a;->y(Lcom/google/android/exoplayer2/i3;)V

    if-eqz p1, :cond_6

    .line 33
    iget-object p2, p0, Lv2/l;->p:Lv2/k;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv2/k;

    .line 34
    invoke-virtual {p2, p1}, Lv2/k;->c(Lv2/q$b;)V

    :cond_6
    return-void
.end method

.method public b()Lcom/google/android/exoplayer2/s1;
    .locals 1

    iget-object v0, p0, Lv2/l;->k:Lv2/q;

    invoke-interface {v0}, Lv2/q;->b()Lcom/google/android/exoplayer2/s1;

    move-result-object v0

    return-object v0
.end method

.method public d(Lv2/n;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lv2/k;

    invoke-virtual {v0}, Lv2/k;->u()V

    .line 2
    iget-object v0, p0, Lv2/l;->p:Lv2/k;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lv2/l;->p:Lv2/k;

    :cond_0
    return-void
.end method

.method public bridge synthetic h(Lv2/q$b;Lj3/b;J)Lv2/n;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lv2/l;->H(Lv2/q$b;Lj3/b;J)Lv2/k;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public x(Lj3/b0;)V
    .locals 1
    .param p1    # Lj3/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lv2/e;->x(Lj3/b0;)V

    .line 2
    iget-boolean p1, p0, Lv2/l;->l:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lv2/l;->q:Z

    const/4 p1, 0x0

    .line 4
    iget-object v0, p0, Lv2/l;->k:Lv2/q;

    invoke-virtual {p0, p1, v0}, Lv2/e;->G(Ljava/lang/Object;Lv2/q;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lv2/l;->r:Z

    .line 2
    iput-boolean v0, p0, Lv2/l;->q:Z

    .line 3
    invoke-super {p0}, Lv2/e;->z()V

    return-void
.end method
