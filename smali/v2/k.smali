.class public final Lv2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/n;
.implements Lv2/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/k$a;
    }
.end annotation


# instance fields
.field public final a:Lv2/q$b;

.field private final b:J

.field private final c:Lj3/b;

.field private d:Lv2/q;

.field private e:Lv2/n;

.field private f:Lv2/n$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lv2/k$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lv2/q$b;Lj3/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/k;->a:Lv2/q$b;

    .line 3
    iput-object p2, p0, Lv2/k;->c:Lj3/b;

    .line 4
    iput-wide p3, p0, Lv2/k;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide p1, p0, Lv2/k;->i:J

    return-void
.end method

.method private l(J)J
    .locals 5

    iget-wide v0, p0, Lv2/k;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public bridge synthetic a(Lv2/j0;)V
    .locals 0

    check-cast p1, Lv2/n;

    invoke-virtual {p0, p1}, Lv2/k;->o(Lv2/n;)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n;

    invoke-interface {v0}, Lv2/n;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lv2/q$b;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lv2/k;->b:J

    invoke-direct {p0, v0, v1}, Lv2/k;->l(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lv2/k;->d:Lv2/q;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/q;

    iget-object v3, p0, Lv2/k;->c:Lj3/b;

    invoke-interface {v2, p1, v3, v0, v1}, Lv2/q;->h(Lv2/q$b;Lj3/b;J)Lv2/n;

    move-result-object p1

    iput-object p1, p0, Lv2/k;->e:Lv2/n;

    .line 3
    iget-object v2, p0, Lv2/k;->f:Lv2/n$a;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, p0, v0, v1}, Lv2/n;->k(Lv2/n$a;J)V

    :cond_0
    return-void
.end method

.method public d(Lv2/n;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lv2/k;->f:Lv2/n$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/n$a;

    invoke-interface {p1, p0}, Lv2/n$a;->d(Lv2/n;)V

    .line 2
    iget-object p1, p0, Lv2/k;->g:Lv2/k$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lv2/k;->a:Lv2/q$b;

    invoke-interface {p1, v0}, Lv2/k$a;->b(Lv2/q$b;)V

    :cond_0
    return-void
.end method

.method public e(J)J
    .locals 1

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n;

    invoke-interface {v0, p1, p2}, Lv2/n;->e(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public f(JLcom/google/android/exoplayer2/z2;)J
    .locals 1

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n;

    invoke-interface {v0, p1, p2, p3}, Lv2/n;->f(JLcom/google/android/exoplayer2/z2;)J

    move-result-wide p1

    return-wide p1
.end method

.method public g([Lh3/s;[Z[Lv2/i0;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lv2/k;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lv2/k;->b:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    .line 2
    iput-wide v3, v0, Lv2/k;->i:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    .line 3
    :goto_0
    iget-object v1, v0, Lv2/k;->e:Lv2/n;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lv2/n;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 4
    invoke-interface/range {v8 .. v14}, Lv2/n;->g([Lh3/s;[Z[Lv2/i0;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n;

    invoke-interface {v0}, Lv2/n;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lv2/k;->i:J

    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lv2/n;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lv2/k;->b:J

    return-wide v0
.end method

.method public k(Lv2/n$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv2/k;->f:Lv2/n$a;

    .line 2
    iget-object p1, p0, Lv2/k;->e:Lv2/n;

    if-eqz p1, :cond_0

    .line 3
    iget-wide p2, p0, Lv2/k;->b:J

    .line 4
    invoke-direct {p0, p2, p3}, Lv2/k;->l(J)J

    move-result-wide p2

    .line 5
    invoke-interface {p1, p0, p2, p3}, Lv2/n;->k(Lv2/n$a;J)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lv2/n;->m()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lv2/k;->d:Lv2/q;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lv2/q;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lv2/k;->g:Lv2/k$a;

    if-eqz v1, :cond_2

    .line 6
    iget-boolean v2, p0, Lv2/k;->h:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lv2/k;->h:Z

    .line 8
    iget-object v2, p0, Lv2/k;->a:Lv2/q$b;

    invoke-interface {v1, v2, v0}, Lv2/k$a;->a(Lv2/q$b;Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    throw v0
.end method

.method public n(J)Z
    .locals 1

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lv2/n;->n(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Lv2/n;)V
    .locals 0

    iget-object p1, p0, Lv2/k;->f:Lv2/n$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/n$a;

    invoke-interface {p1, p0}, Lv2/j0$a;->a(Lv2/j0;)V

    return-void
.end method

.method public p()Lv2/q0;
    .locals 1

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n;

    invoke-interface {v0}, Lv2/n;->p()Lv2/q0;

    move-result-object v0

    return-object v0
.end method

.method public q(J)V
    .locals 0

    iput-wide p1, p0, Lv2/k;->i:J

    return-void
.end method

.method public r()J
    .locals 2

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n;

    invoke-interface {v0}, Lv2/n;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public s(JZ)V
    .locals 1

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n;

    invoke-interface {v0, p1, p2, p3}, Lv2/n;->s(JZ)V

    return-void
.end method

.method public t(J)V
    .locals 1

    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n;

    invoke-interface {v0, p1, p2}, Lv2/n;->t(J)V

    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/k;->e:Lv2/n;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv2/k;->d:Lv2/q;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/q;

    iget-object v1, p0, Lv2/k;->e:Lv2/n;

    invoke-interface {v0, v1}, Lv2/q;->d(Lv2/n;)V

    :cond_0
    return-void
.end method

.method public v(Lv2/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/k;->d:Lv2/q;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iput-object p1, p0, Lv2/k;->d:Lv2/q;

    return-void
.end method
