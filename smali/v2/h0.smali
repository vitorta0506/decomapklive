.class public Lv2/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/e0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/h0$c;,
        Lv2/h0$b;,
        Lv2/h0$d;
    }
.end annotation


# instance fields
.field private A:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C:I

.field private D:Z

.field private E:Z

.field private F:J

.field private G:Z

.field private final a:Lv2/f0;

.field private final b:Lv2/h0$b;

.field private final c:Lv2/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/m0<",
            "Lv2/h0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/drm/u;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer2/drm/s$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lv2/h0$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:[I

.field private k:[J

.field private l:[I

.field private m:[I

.field private n:[J

.field private o:[Lc2/e0$a;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method protected constructor <init>(Lj3/b;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/drm/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lv2/h0;->d:Lcom/google/android/exoplayer2/drm/u;

    .line 3
    iput-object p3, p0, Lv2/h0;->e:Lcom/google/android/exoplayer2/drm/s$a;

    .line 4
    new-instance p2, Lv2/f0;

    invoke-direct {p2, p1}, Lv2/f0;-><init>(Lj3/b;)V

    iput-object p2, p0, Lv2/h0;->a:Lv2/f0;

    .line 5
    new-instance p1, Lv2/h0$b;

    invoke-direct {p1}, Lv2/h0$b;-><init>()V

    iput-object p1, p0, Lv2/h0;->b:Lv2/h0$b;

    const/16 p1, 0x3e8

    .line 6
    iput p1, p0, Lv2/h0;->i:I

    new-array p2, p1, [I

    .line 7
    iput-object p2, p0, Lv2/h0;->j:[I

    new-array p2, p1, [J

    .line 8
    iput-object p2, p0, Lv2/h0;->k:[J

    new-array p2, p1, [J

    .line 9
    iput-object p2, p0, Lv2/h0;->n:[J

    new-array p2, p1, [I

    .line 10
    iput-object p2, p0, Lv2/h0;->m:[I

    new-array p2, p1, [I

    .line 11
    iput-object p2, p0, Lv2/h0;->l:[I

    new-array p1, p1, [Lc2/e0$a;

    .line 12
    iput-object p1, p0, Lv2/h0;->o:[Lc2/e0$a;

    .line 13
    new-instance p1, Lv2/m0;

    sget-object p2, Lv2/g0;->a:Lv2/g0;

    invoke-direct {p1, p2}, Lv2/m0;-><init>(Lcom/google/android/exoplayer2/util/h;)V

    iput-object p1, p0, Lv2/h0;->c:Lv2/m0;

    const-wide/high16 p1, -0x8000000000000000L

    .line 14
    iput-wide p1, p0, Lv2/h0;->t:J

    .line 15
    iput-wide p1, p0, Lv2/h0;->u:J

    .line 16
    iput-wide p1, p0, Lv2/h0;->v:J

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lv2/h0;->y:Z

    .line 18
    iput-boolean p1, p0, Lv2/h0;->x:Z

    return-void
.end method

.method private B()Z
    .locals 2

    iget v0, p0, Lv2/h0;->s:I

    iget v1, p0, Lv2/h0;->p:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic E(Lv2/h0$c;)V
    .locals 0

    iget-object p0, p0, Lv2/h0$c;->b:Lcom/google/android/exoplayer2/drm/u$b;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/u$b;->release()V

    return-void
.end method

.method private F(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/h0;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lv2/h0;->m:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lv2/h0;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private H(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/l1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv2/h0;->g:Lcom/google/android/exoplayer2/k1;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/k1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 3
    :goto_1
    iput-object p1, p0, Lv2/h0;->g:Lcom/google/android/exoplayer2/k1;

    .line 4
    iget-object v2, p1, Lcom/google/android/exoplayer2/k1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 5
    iget-object v3, p0, Lv2/h0;->d:Lcom/google/android/exoplayer2/drm/u;

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/drm/u;->a(Lcom/google/android/exoplayer2/k1;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/k1;->c(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    .line 7
    :goto_2
    iput-object v3, p2, Lcom/google/android/exoplayer2/l1;->b:Lcom/google/android/exoplayer2/k1;

    .line 8
    iget-object v3, p0, Lv2/h0;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v3, p2, Lcom/google/android/exoplayer2/l1;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 9
    iget-object v3, p0, Lv2/h0;->d:Lcom/google/android/exoplayer2/drm/u;

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 11
    :cond_4
    iget-object v0, p0, Lv2/h0;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 12
    iget-object v1, p0, Lv2/h0;->d:Lcom/google/android/exoplayer2/drm/u;

    iget-object v2, p0, Lv2/h0;->e:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-interface {v1, v2, p1}, Lcom/google/android/exoplayer2/drm/u;->c(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lv2/h0;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 13
    iput-object p1, p2, Lcom/google/android/exoplayer2/l1;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_5

    .line 14
    iget-object p1, p0, Lv2/h0;->e:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->b(Lcom/google/android/exoplayer2/drm/s$a;)V

    :cond_5
    return-void
.end method

.method private declared-synchronized I(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLv2/h0$b;)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Z

    .line 2
    invoke-direct {p0}, Lv2/h0;->B()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    .line 3
    iget-boolean p4, p0, Lv2/h0;->w:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Lv2/h0;->g:Lcom/google/android/exoplayer2/k1;

    if-eq p2, p3, :cond_2

    .line 5
    :cond_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/k1;

    invoke-direct {p0, p2, p1}, Lv2/h0;->H(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/l1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return v1

    .line 7
    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 8
    :try_start_1
    invoke-virtual {p2, p1}, Lb2/a;->o(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return v3

    .line 10
    :cond_4
    :try_start_2
    iget-object p4, p0, Lv2/h0;->c:Lv2/m0;

    invoke-virtual {p0}, Lv2/h0;->w()I

    move-result v0

    invoke-virtual {p4, v0}, Lv2/m0;->e(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lv2/h0$c;

    iget-object p4, p4, Lv2/h0$c;->a:Lcom/google/android/exoplayer2/k1;

    if-nez p3, :cond_8

    .line 11
    iget-object p3, p0, Lv2/h0;->g:Lcom/google/android/exoplayer2/k1;

    if-eq p4, p3, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    iget p1, p0, Lv2/h0;->s:I

    invoke-direct {p0, p1}, Lv2/h0;->x(I)I

    move-result p1

    .line 13
    invoke-direct {p0, p1}, Lv2/h0;->F(I)Z

    move-result p3

    if-nez p3, :cond_6

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    monitor-exit p0

    return v2

    .line 16
    :cond_6
    :try_start_3
    iget-object p3, p0, Lv2/h0;->m:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lb2/a;->o(I)V

    .line 17
    iget-object p3, p0, Lv2/h0;->n:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 18
    iget-wide p3, p0, Lv2/h0;->t:J

    cmp-long v2, v0, p3

    if-gez v2, :cond_7

    const/high16 p3, -0x80000000

    .line 19
    invoke-virtual {p2, p3}, Lb2/a;->e(I)V

    .line 20
    :cond_7
    iget-object p2, p0, Lv2/h0;->l:[I

    aget p2, p2, p1

    iput p2, p5, Lv2/h0$b;->a:I

    .line 21
    iget-object p2, p0, Lv2/h0;->k:[J

    aget-wide p3, p2, p1

    iput-wide p3, p5, Lv2/h0$b;->b:J

    .line 22
    iget-object p2, p0, Lv2/h0;->o:[Lc2/e0$a;

    aget-object p1, p2, p1

    iput-object p1, p5, Lv2/h0$b;->c:Lc2/e0$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    monitor-exit p0

    return v3

    .line 24
    :cond_8
    :goto_1
    :try_start_4
    invoke-direct {p0, p4, p1}, Lv2/h0;->H(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/l1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/h0;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lv2/h0;->e:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->b(Lcom/google/android/exoplayer2/drm/s$a;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lv2/h0;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 4
    iput-object v0, p0, Lv2/h0;->g:Lcom/google/android/exoplayer2/k1;

    :cond_0
    return-void
.end method

.method private declared-synchronized P()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lv2/h0;->s:I

    .line 2
    iget-object v0, p0, Lv2/h0;->a:Lv2/f0;

    invoke-virtual {v0}, Lv2/f0;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized S(Lcom/google/android/exoplayer2/k1;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lv2/h0;->y:Z

    .line 2
    iget-object v1, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Lv2/h0;->c:Lv2/m0;

    invoke-virtual {v1}, Lv2/m0;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lv2/h0;->c:Lv2/m0;

    .line 5
    invoke-virtual {v1}, Lv2/m0;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/h0$c;

    iget-object v1, v1, Lv2/h0$c;->a:Lcom/google/android/exoplayer2/k1;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/k1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p0, Lv2/h0;->c:Lv2/m0;

    invoke-virtual {p1}, Lv2/m0;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/h0$c;

    iget-object p1, p1, Lv2/h0$c;->a:Lcom/google/android/exoplayer2/k1;

    iput-object p1, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    .line 8
    :goto_0
    iget-object p1, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    iget-object v1, p1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    .line 9
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lv2/h0;->D:Z

    .line 10
    iput-boolean v0, p0, Lv2/h0;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 11
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic g(Lv2/h0$c;)V
    .locals 0

    invoke-static {p0}, Lv2/h0;->E(Lv2/h0$c;)V

    return-void
.end method

.method private declared-synchronized h(J)Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lv2/h0;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-wide v3, p0, Lv2/h0;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 3
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lv2/h0;->u()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 4
    monitor-exit p0

    return v2

    .line 5
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lv2/h0;->j(J)I

    move-result p1

    .line 6
    iget p2, p0, Lv2/h0;->q:I

    add-int/2addr p2, p1

    invoke-direct {p0, p2}, Lv2/h0;->q(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized i(JIJILc2/e0$a;)V
    .locals 8
    .param p7    # Lc2/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lv2/h0;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    .line 2
    invoke-direct {p0, v0}, Lv2/h0;->x(I)I

    move-result v0

    .line 3
    iget-object v3, p0, Lv2/h0;->k:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lv2/h0;->l:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_1
    iput-boolean v0, p0, Lv2/h0;->w:Z

    .line 5
    iget-wide v3, p0, Lv2/h0;->v:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lv2/h0;->v:J

    .line 6
    iget v0, p0, Lv2/h0;->p:I

    invoke-direct {p0, v0}, Lv2/h0;->x(I)I

    move-result v0

    .line 7
    iget-object v3, p0, Lv2/h0;->n:[J

    aput-wide p1, v3, v0

    .line 8
    iget-object p1, p0, Lv2/h0;->k:[J

    aput-wide p4, p1, v0

    .line 9
    iget-object p1, p0, Lv2/h0;->l:[I

    aput p6, p1, v0

    .line 10
    iget-object p1, p0, Lv2/h0;->m:[I

    aput p3, p1, v0

    .line 11
    iget-object p1, p0, Lv2/h0;->o:[Lc2/e0$a;

    aput-object p7, p1, v0

    .line 12
    iget-object p1, p0, Lv2/h0;->j:[I

    iget p2, p0, Lv2/h0;->C:I

    aput p2, p1, v0

    .line 13
    iget-object p1, p0, Lv2/h0;->c:Lv2/m0;

    invoke-virtual {p1}, Lv2/m0;->g()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lv2/h0;->c:Lv2/m0;

    .line 14
    invoke-virtual {p1}, Lv2/m0;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/h0$c;

    iget-object p1, p1, Lv2/h0$c;->a:Lcom/google/android/exoplayer2/k1;

    iget-object p2, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/k1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    :cond_3
    iget-object p1, p0, Lv2/h0;->d:Lcom/google/android/exoplayer2/drm/u;

    if-eqz p1, :cond_4

    .line 16
    iget-object p2, p0, Lv2/h0;->e:Lcom/google/android/exoplayer2/drm/s$a;

    iget-object p3, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/drm/u;->d(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/drm/u$b;

    move-result-object p1

    goto :goto_2

    .line 17
    :cond_4
    sget-object p1, Lcom/google/android/exoplayer2/drm/u$b;->a:Lcom/google/android/exoplayer2/drm/u$b;

    .line 18
    :goto_2
    iget-object p2, p0, Lv2/h0;->c:Lv2/m0;

    .line 19
    invoke-virtual {p0}, Lv2/h0;->A()I

    move-result p3

    new-instance p4, Lv2/h0$c;

    iget-object p5, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    .line 20
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/exoplayer2/k1;

    const/4 p6, 0x0

    invoke-direct {p4, p5, p1, p6}, Lv2/h0$c;-><init>(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/drm/u$b;Lv2/h0$a;)V

    .line 21
    invoke-virtual {p2, p3, p4}, Lv2/m0;->a(ILjava/lang/Object;)V

    .line 22
    :cond_5
    iget p1, p0, Lv2/h0;->p:I

    add-int/2addr p1, v1

    iput p1, p0, Lv2/h0;->p:I

    .line 23
    iget p2, p0, Lv2/h0;->i:I

    if-ne p1, p2, :cond_6

    add-int/lit16 p1, p2, 0x3e8

    .line 24
    new-array p3, p1, [I

    .line 25
    new-array p4, p1, [J

    .line 26
    new-array p5, p1, [J

    .line 27
    new-array p6, p1, [I

    .line 28
    new-array p7, p1, [I

    .line 29
    new-array v0, p1, [Lc2/e0$a;

    .line 30
    iget v1, p0, Lv2/h0;->r:I

    sub-int/2addr p2, v1

    .line 31
    iget-object v3, p0, Lv2/h0;->k:[J

    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v1, p0, Lv2/h0;->n:[J

    iget v3, p0, Lv2/h0;->r:I

    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v1, p0, Lv2/h0;->m:[I

    iget v3, p0, Lv2/h0;->r:I

    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v1, p0, Lv2/h0;->l:[I

    iget v3, p0, Lv2/h0;->r:I

    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v1, p0, Lv2/h0;->o:[Lc2/e0$a;

    iget v3, p0, Lv2/h0;->r:I

    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v1, p0, Lv2/h0;->j:[I

    iget v3, p0, Lv2/h0;->r:I

    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget v1, p0, Lv2/h0;->r:I

    .line 38
    iget-object v3, p0, Lv2/h0;->k:[J

    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v3, p0, Lv2/h0;->n:[J

    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object v3, p0, Lv2/h0;->m:[I

    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget-object v3, p0, Lv2/h0;->l:[I

    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object v3, p0, Lv2/h0;->o:[Lc2/e0$a;

    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v3, p0, Lv2/h0;->j:[I

    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object p4, p0, Lv2/h0;->k:[J

    .line 45
    iput-object p5, p0, Lv2/h0;->n:[J

    .line 46
    iput-object p6, p0, Lv2/h0;->m:[I

    .line 47
    iput-object p7, p0, Lv2/h0;->l:[I

    .line 48
    iput-object v0, p0, Lv2/h0;->o:[Lc2/e0$a;

    .line 49
    iput-object p3, p0, Lv2/h0;->j:[I

    .line 50
    iput v2, p0, Lv2/h0;->r:I

    .line 51
    iput p1, p0, Lv2/h0;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private j(J)I
    .locals 5

    .line 1
    iget v0, p0, Lv2/h0;->p:I

    add-int/lit8 v1, v0, -0x1

    .line 2
    invoke-direct {p0, v1}, Lv2/h0;->x(I)I

    move-result v1

    .line 3
    :cond_0
    :goto_0
    iget v2, p0, Lv2/h0;->s:I

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lv2/h0;->n:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lv2/h0;->i:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static k(Lj3/b;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;)Lv2/h0;
    .locals 1

    .line 1
    new-instance v0, Lv2/h0;

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/u;

    .line 3
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/drm/s$a;

    invoke-direct {v0, p0, p1, p2}, Lv2/h0;-><init>(Lj3/b;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;)V

    return-object v0
.end method

.method private declared-synchronized l(JZZ)J
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lv2/h0;->p:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lv2/h0;->n:[J

    iget v5, p0, Lv2/h0;->r:I

    aget-wide v6, v3, v5

    cmp-long v3, p1, v6

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 2
    iget p4, p0, Lv2/h0;->s:I

    if-eq p4, v0, :cond_1

    add-int/lit8 v0, p4, 0x1

    :cond_1
    move v6, v0

    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    .line 3
    invoke-direct/range {v4 .. v9}, Lv2/h0;->r(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 4
    monitor-exit p0

    return-wide v1

    .line 5
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lv2/h0;->n(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 6
    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized m()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lv2/h0;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 2
    monitor-exit p0

    return-wide v0

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lv2/h0;->n(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n(I)J
    .locals 5
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    iget-wide v0, p0, Lv2/h0;->u:J

    .line 2
    invoke-direct {p0, p1}, Lv2/h0;->v(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lv2/h0;->u:J

    .line 3
    iget v0, p0, Lv2/h0;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lv2/h0;->p:I

    .line 4
    iget v0, p0, Lv2/h0;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lv2/h0;->q:I

    .line 5
    iget v1, p0, Lv2/h0;->r:I

    add-int/2addr v1, p1

    iput v1, p0, Lv2/h0;->r:I

    .line 6
    iget v2, p0, Lv2/h0;->i:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 7
    iput v1, p0, Lv2/h0;->r:I

    .line 8
    :cond_0
    iget v1, p0, Lv2/h0;->s:I

    sub-int/2addr v1, p1

    iput v1, p0, Lv2/h0;->s:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lv2/h0;->s:I

    .line 10
    :cond_1
    iget-object p1, p0, Lv2/h0;->c:Lv2/m0;

    invoke-virtual {p1, v0}, Lv2/m0;->d(I)V

    .line 11
    iget p1, p0, Lv2/h0;->p:I

    if-nez p1, :cond_3

    .line 12
    iget p1, p0, Lv2/h0;->r:I

    if-nez p1, :cond_2

    iget p1, p0, Lv2/h0;->i:I

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 13
    iget-object v0, p0, Lv2/h0;->k:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lv2/h0;->l:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    .line 14
    :cond_3
    iget-object p1, p0, Lv2/h0;->k:[J

    iget v0, p0, Lv2/h0;->r:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private q(I)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lv2/h0;->A()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    .line 2
    iget v3, p0, Lv2/h0;->p:I

    iget v4, p0, Lv2/h0;->s:I

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3
    iget v3, p0, Lv2/h0;->p:I

    sub-int/2addr v3, v0

    iput v3, p0, Lv2/h0;->p:I

    .line 4
    iget-wide v4, p0, Lv2/h0;->u:J

    invoke-direct {p0, v3}, Lv2/h0;->v(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lv2/h0;->v:J

    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lv2/h0;->w:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lv2/h0;->w:Z

    .line 6
    iget-object v0, p0, Lv2/h0;->c:Lv2/m0;

    invoke-virtual {v0, p1}, Lv2/m0;->c(I)V

    .line 7
    iget p1, p0, Lv2/h0;->p:I

    if-eqz p1, :cond_2

    sub-int/2addr p1, v2

    .line 8
    invoke-direct {p0, p1}, Lv2/h0;->x(I)I

    move-result p1

    .line 9
    iget-object v0, p0, Lv2/h0;->k:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lv2/h0;->l:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private r(IIJZ)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_4

    .line 1
    iget-object v3, p0, Lv2/h0;->n:[J

    aget-wide v4, v3, p1

    cmp-long v6, v4, p3

    if-gtz v6, :cond_4

    if-eqz p5, :cond_0

    .line 2
    iget-object v4, p0, Lv2/h0;->m:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 3
    :cond_0
    aget-wide v4, v3, p1

    cmp-long v1, v4, p3

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 4
    iget v3, p0, Lv2/h0;->i:I

    if-ne p1, v3, :cond_3

    const/4 p1, 0x0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method private v(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 1
    invoke-direct {p0, v2}, Lv2/h0;->x(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 2
    iget-object v4, p0, Lv2/h0;->n:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3
    iget-object v4, p0, Lv2/h0;->m:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 4
    iget v2, p0, Lv2/h0;->i:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private x(I)I
    .locals 1

    .line 1
    iget v0, p0, Lv2/h0;->r:I

    add-int/2addr v0, p1

    .line 2
    iget p1, p0, Lv2/h0;->i:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public final A()I
    .locals 2

    iget v0, p0, Lv2/h0;->q:I

    iget v1, p0, Lv2/h0;->p:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized C()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lv2/h0;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized D(Z)Z
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lv2/h0;->B()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lv2/h0;->w:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lv2/h0;->g:Lcom/google/android/exoplayer2/k1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 3
    :cond_2
    :try_start_1
    iget-object p1, p0, Lv2/h0;->c:Lv2/m0;

    invoke-virtual {p0}, Lv2/h0;->w()I

    move-result v0

    invoke-virtual {p1, v0}, Lv2/m0;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/h0$c;

    iget-object p1, p1, Lv2/h0$c;->a:Lcom/google/android/exoplayer2/k1;

    iget-object v0, p0, Lv2/h0;->g:Lcom/google/android/exoplayer2/k1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_3

    .line 4
    monitor-exit p0

    return v1

    .line 5
    :cond_3
    :try_start_2
    iget p1, p0, Lv2/h0;->s:I

    invoke-direct {p0, p1}, Lv2/h0;->x(I)I

    move-result p1

    invoke-direct {p0, p1}, Lv2/h0;->F(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public G()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/h0;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lv2/h0;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public J()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv2/h0;->p()V

    .line 2
    invoke-direct {p0}, Lv2/h0;->M()V

    return-void
.end method

.method public K(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I
    .locals 9
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1
    :goto_0
    iget-object v8, p0, Lv2/h0;->b:Lv2/h0$b;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    .line 2
    invoke-direct/range {v3 .. v8}, Lv2/h0;->I(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLv2/h0$b;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_4

    .line 3
    invoke-virtual {p2}, Lb2/a;->k()Z

    move-result p4

    if-nez p4, :cond_4

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_3

    if-eqz v1, :cond_2

    .line 4
    iget-object p3, p0, Lv2/h0;->a:Lv2/f0;

    iget-object p4, p0, Lv2/h0;->b:Lv2/h0$b;

    invoke-virtual {p3, p2, p4}, Lv2/f0;->e(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lv2/h0$b;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p3, p0, Lv2/h0;->a:Lv2/f0;

    iget-object p4, p0, Lv2/h0;->b:Lv2/h0$b;

    invoke-virtual {p3, p2, p4}, Lv2/f0;->l(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lv2/h0$b;)V

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 6
    iget p2, p0, Lv2/h0;->s:I

    add-int/2addr p2, v2

    iput p2, p0, Lv2/h0;->s:I

    :cond_4
    return p1
.end method

.method public L()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lv2/h0;->O(Z)V

    .line 2
    invoke-direct {p0}, Lv2/h0;->M()V

    return-void
.end method

.method public final N()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv2/h0;->O(Z)V

    return-void
.end method

.method public O(Z)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/h0;->a:Lv2/f0;

    invoke-virtual {v0}, Lv2/f0;->m()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv2/h0;->p:I

    .line 3
    iput v0, p0, Lv2/h0;->q:I

    .line 4
    iput v0, p0, Lv2/h0;->r:I

    .line 5
    iput v0, p0, Lv2/h0;->s:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lv2/h0;->x:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 7
    iput-wide v2, p0, Lv2/h0;->t:J

    .line 8
    iput-wide v2, p0, Lv2/h0;->u:J

    .line 9
    iput-wide v2, p0, Lv2/h0;->v:J

    .line 10
    iput-boolean v0, p0, Lv2/h0;->w:Z

    .line 11
    iget-object v0, p0, Lv2/h0;->c:Lv2/m0;

    invoke-virtual {v0}, Lv2/m0;->b()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lv2/h0;->A:Lcom/google/android/exoplayer2/k1;

    .line 13
    iput-object p1, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    .line 14
    iput-boolean v1, p0, Lv2/h0;->y:Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized Q(JZ)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lv2/h0;->P()V

    .line 2
    iget v0, p0, Lv2/h0;->s:I

    invoke-direct {p0, v0}, Lv2/h0;->x(I)I

    move-result v2

    .line 3
    invoke-direct {p0}, Lv2/h0;->B()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv2/h0;->n:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lv2/h0;->v:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget p3, p0, Lv2/h0;->p:I

    iget v0, p0, Lv2/h0;->s:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 5
    invoke-direct/range {v1 .. v6}, Lv2/h0;->r(IIJZ)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 6
    monitor-exit p0

    return v7

    .line 7
    :cond_1
    :try_start_1
    iput-wide p1, p0, Lv2/h0;->t:J

    .line 8
    iget p1, p0, Lv2/h0;->s:I

    add-int/2addr p1, p3

    iput p1, p0, Lv2/h0;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 9
    monitor-exit p0

    return p1

    .line 10
    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final R(J)V
    .locals 0

    iput-wide p1, p0, Lv2/h0;->t:J

    return-void
.end method

.method public final T(Lv2/h0$d;)V
    .locals 0
    .param p1    # Lv2/h0$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lv2/h0;->f:Lv2/h0$d;

    return-void
.end method

.method public final declared-synchronized U(I)V
    .locals 2

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 1
    :try_start_0
    iget v0, p0, Lv2/h0;->s:I

    add-int/2addr v0, p1

    iget v1, p0, Lv2/h0;->p:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget v0, p0, Lv2/h0;->s:I

    add-int/2addr v0, p1

    iput v0, p0, Lv2/h0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/util/b0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lc2/d0;->b(Lc2/e0;Lcom/google/android/exoplayer2/util/b0;I)V

    return-void
.end method

.method public synthetic b(Lj3/f;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lc2/d0;->a(Lc2/e0;Lj3/f;IZ)I

    move-result p1

    return p1
.end method

.method public c(JIIILc2/e0$a;)V
    .locals 11
    .param p6    # Lc2/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v8, p0

    .line 1
    iget-boolean v0, v8, Lv2/h0;->z:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v8, Lv2/h0;->A:Lcom/google/android/exoplayer2/k1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/k1;

    invoke-virtual {p0, v0}, Lv2/h0;->d(Lcom/google/android/exoplayer2/k1;)V

    :cond_0
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-boolean v4, v8, Lv2/h0;->x:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    return-void

    .line 4
    :cond_2
    iput-boolean v1, v8, Lv2/h0;->x:Z

    .line 5
    :cond_3
    iget-wide v4, v8, Lv2/h0;->F:J

    add-long/2addr v4, p1

    .line 6
    iget-boolean v6, v8, Lv2/h0;->D:Z

    if-eqz v6, :cond_6

    .line 7
    iget-wide v6, v8, Lv2/h0;->t:J

    cmp-long v9, v4, v6

    if-gez v9, :cond_4

    return-void

    :cond_4
    if-nez v0, :cond_6

    .line 8
    iget-boolean v0, v8, Lv2/h0;->E:Z

    if-nez v0, :cond_5

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SampleQueue"

    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-boolean v2, v8, Lv2/h0;->E:Z

    :cond_5
    or-int/lit8 v0, p3, 0x1

    move v6, v0

    goto :goto_1

    :cond_6
    move v6, p3

    .line 11
    :goto_1
    iget-boolean v0, v8, Lv2/h0;->G:Z

    if-eqz v0, :cond_9

    if-eqz v3, :cond_8

    .line 12
    invoke-direct {p0, v4, v5}, Lv2/h0;->h(J)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    iput-boolean v1, v8, Lv2/h0;->G:Z

    goto :goto_3

    :cond_8
    :goto_2
    return-void

    .line 14
    :cond_9
    :goto_3
    iget-object v0, v8, Lv2/h0;->a:Lv2/f0;

    invoke-virtual {v0}, Lv2/f0;->d()J

    move-result-wide v0

    move v7, p4

    int-to-long v2, v7

    sub-long/2addr v0, v2

    move/from16 v2, p5

    int-to-long v2, v2

    sub-long v9, v0, v2

    move-object v0, p0

    move-wide v1, v4

    move v3, v6

    move-wide v4, v9

    move v6, p4

    move-object/from16 v7, p6

    .line 15
    invoke-direct/range {v0 .. v7}, Lv2/h0;->i(JIJILc2/e0$a;)V

    return-void
.end method

.method public final d(Lcom/google/android/exoplayer2/k1;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lv2/h0;->s(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/k1;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lv2/h0;->z:Z

    .line 3
    iput-object p1, p0, Lv2/h0;->A:Lcom/google/android/exoplayer2/k1;

    .line 4
    invoke-direct {p0, v0}, Lv2/h0;->S(Lcom/google/android/exoplayer2/k1;)Z

    move-result p1

    .line 5
    iget-object v1, p0, Lv2/h0;->f:Lv2/h0$d;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {v1, v0}, Lv2/h0$d;->c(Lcom/google/android/exoplayer2/k1;)V

    :cond_0
    return-void
.end method

.method public final e(Lj3/f;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p4, p0, Lv2/h0;->a:Lv2/f0;

    invoke-virtual {p4, p1, p2, p3}, Lv2/f0;->o(Lj3/f;IZ)I

    move-result p1

    return p1
.end method

.method public final f(Lcom/google/android/exoplayer2/util/b0;II)V
    .locals 0

    iget-object p3, p0, Lv2/h0;->a:Lv2/f0;

    invoke-virtual {p3, p1, p2}, Lv2/f0;->p(Lcom/google/android/exoplayer2/util/b0;I)V

    return-void
.end method

.method public final o(JZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/h0;->a:Lv2/f0;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lv2/h0;->l(JZZ)J

    move-result-wide p1

    .line 3
    invoke-virtual {v0, p1, p2}, Lv2/f0;->b(J)V

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lv2/h0;->a:Lv2/f0;

    invoke-direct {p0}, Lv2/h0;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lv2/f0;->b(J)V

    return-void
.end method

.method protected s(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/k1;
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-wide v0, p0, Lv2/h0;->F:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/k1;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k1;->b()Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/exoplayer2/k1;->p:J

    iget-wide v3, p0, Lv2/h0;->F:J

    add-long/2addr v1, v3

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k1$b;->i0(J)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final declared-synchronized t()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lv2/h0;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lv2/h0;->u:J

    iget v2, p0, Lv2/h0;->s:I

    invoke-direct {p0, v2}, Lv2/h0;->v(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final w()I
    .locals 2

    iget v0, p0, Lv2/h0;->q:I

    iget v1, p0, Lv2/h0;->s:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized y(JZ)I
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lv2/h0;->s:I

    invoke-direct {p0, v0}, Lv2/h0;->x(I)I

    move-result v2

    .line 2
    invoke-direct {p0}, Lv2/h0;->B()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv2/h0;->n:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lv2/h0;->v:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    if-eqz p3, :cond_1

    .line 4
    iget p1, p0, Lv2/h0;->p:I

    iget p2, p0, Lv2/h0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, p2

    monitor-exit p0

    return p1

    .line 5
    :cond_1
    :try_start_1
    iget p3, p0, Lv2/h0;->p:I

    iget v0, p0, Lv2/h0;->s:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 6
    invoke-direct/range {v1 .. v6}, Lv2/h0;->r(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 7
    monitor-exit p0

    return v7

    .line 8
    :cond_2
    monitor-exit p0

    return p1

    .line 9
    :cond_3
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized z()Lcom/google/android/exoplayer2/k1;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lv2/h0;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv2/h0;->B:Lcom/google/android/exoplayer2/k1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
