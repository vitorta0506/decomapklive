.class final Lv2/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;
.implements Lv2/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroid/net/Uri;

.field private final c:Lj3/a0;

.field private final d:Lv2/x;

.field private final e:Lc2/n;

.field private final f:Lcom/google/android/exoplayer2/util/g;

.field private final g:Lc2/a0;

.field private volatile h:Z

.field private i:Z

.field private j:J

.field private k:Lj3/l;

.field private l:Lc2/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Z

.field final synthetic n:Lv2/c0;


# direct methods
.method public constructor <init>(Lv2/c0;Landroid/net/Uri;Lj3/i;Lv2/x;Lc2/n;Lcom/google/android/exoplayer2/util/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv2/c0$a;->n:Lv2/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lv2/c0$a;->b:Landroid/net/Uri;

    .line 3
    new-instance p1, Lj3/a0;

    invoke-direct {p1, p3}, Lj3/a0;-><init>(Lj3/i;)V

    iput-object p1, p0, Lv2/c0$a;->c:Lj3/a0;

    .line 4
    iput-object p4, p0, Lv2/c0$a;->d:Lv2/x;

    .line 5
    iput-object p5, p0, Lv2/c0$a;->e:Lc2/n;

    .line 6
    iput-object p6, p0, Lv2/c0$a;->f:Lcom/google/android/exoplayer2/util/g;

    .line 7
    new-instance p1, Lc2/a0;

    invoke-direct {p1}, Lc2/a0;-><init>()V

    iput-object p1, p0, Lv2/c0$a;->g:Lc2/a0;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lv2/c0$a;->i:Z

    .line 9
    invoke-static {}, Lv2/j;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lv2/c0$a;->a:J

    const-wide/16 p1, 0x0

    .line 10
    invoke-direct {p0, p1, p2}, Lv2/c0$a;->i(J)Lj3/l;

    move-result-object p1

    iput-object p1, p0, Lv2/c0$a;->k:Lj3/l;

    return-void
.end method

.method static synthetic d(Lv2/c0$a;)Lj3/a0;
    .locals 0

    iget-object p0, p0, Lv2/c0$a;->c:Lj3/a0;

    return-object p0
.end method

.method static synthetic e(Lv2/c0$a;)J
    .locals 2

    iget-wide v0, p0, Lv2/c0$a;->a:J

    return-wide v0
.end method

.method static synthetic f(Lv2/c0$a;)Lj3/l;
    .locals 0

    iget-object p0, p0, Lv2/c0$a;->k:Lj3/l;

    return-object p0
.end method

.method static synthetic g(Lv2/c0$a;)J
    .locals 2

    iget-wide v0, p0, Lv2/c0$a;->j:J

    return-wide v0
.end method

.method static synthetic h(Lv2/c0$a;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lv2/c0$a;->j(JJ)V

    return-void
.end method

.method private i(J)Lj3/l;
    .locals 2

    .line 1
    new-instance v0, Lj3/l$b;

    invoke-direct {v0}, Lj3/l$b;-><init>()V

    iget-object v1, p0, Lv2/c0$a;->b:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0, v1}, Lj3/l$b;->h(Landroid/net/Uri;)Lj3/l$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2}, Lj3/l$b;->g(J)Lj3/l$b;

    move-result-object p1

    iget-object p2, p0, Lv2/c0$a;->n:Lv2/c0;

    .line 4
    invoke-static {p2}, Lv2/c0;->C(Lv2/c0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj3/l$b;->f(Ljava/lang/String;)Lj3/l$b;

    move-result-object p1

    const/4 p2, 0x6

    .line 5
    invoke-virtual {p1, p2}, Lj3/l$b;->b(I)Lj3/l$b;

    move-result-object p1

    .line 6
    invoke-static {}, Lv2/c0;->B()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj3/l$b;->e(Ljava/util/Map;)Lj3/l$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lj3/l$b;->a()Lj3/l;

    move-result-object p1

    return-object p1
.end method

.method private j(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/c0$a;->g:Lc2/a0;

    iput-wide p1, v0, Lc2/a0;->a:J

    .line 2
    iput-wide p3, p0, Lv2/c0$a;->j:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lv2/c0$a;->i:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lv2/c0$a;->m:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_9

    .line 1
    iget-boolean v3, v1, Lv2/c0$a;->h:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    .line 2
    :try_start_0
    iget-object v6, v1, Lv2/c0$a;->g:Lc2/a0;

    iget-wide v13, v6, Lc2/a0;->a:J

    .line 3
    invoke-direct {v1, v13, v14}, Lv2/c0$a;->i(J)Lj3/l;

    move-result-object v6

    iput-object v6, v1, Lv2/c0$a;->k:Lj3/l;

    .line 4
    iget-object v7, v1, Lv2/c0$a;->c:Lj3/a0;

    invoke-virtual {v7, v6}, Lj3/a0;->b(Lj3/l;)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    add-long/2addr v6, v13

    .line 5
    iget-object v8, v1, Lv2/c0$a;->n:Lv2/c0;

    invoke-static {v8}, Lv2/c0;->D(Lv2/c0;)V

    :cond_0
    move-wide v15, v6

    .line 6
    iget-object v6, v1, Lv2/c0$a;->n:Lv2/c0;

    iget-object v7, v1, Lv2/c0$a;->c:Lj3/a0;

    invoke-virtual {v7}, Lj3/a0;->e()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->a(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    invoke-static {v6, v7}, Lv2/c0;->F(Lv2/c0;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 7
    iget-object v6, v1, Lv2/c0$a;->c:Lj3/a0;

    .line 8
    iget-object v7, v1, Lv2/c0$a;->n:Lv2/c0;

    invoke-static {v7}, Lv2/c0;->E(Lv2/c0;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lv2/c0$a;->n:Lv2/c0;

    invoke-static {v7}, Lv2/c0;->E(Lv2/c0;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 9
    new-instance v6, Lv2/i;

    iget-object v7, v1, Lv2/c0$a;->c:Lj3/a0;

    iget-object v8, v1, Lv2/c0$a;->n:Lv2/c0;

    invoke-static {v8}, Lv2/c0;->E(Lv2/c0;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v6, v7, v8, v1}, Lv2/i;-><init>(Lj3/i;ILv2/i$a;)V

    .line 10
    iget-object v7, v1, Lv2/c0$a;->n:Lv2/c0;

    invoke-virtual {v7}, Lv2/c0;->N()Lc2/e0;

    move-result-object v7

    iput-object v7, v1, Lv2/c0$a;->l:Lc2/e0;

    .line 11
    invoke-static {}, Lv2/c0;->G()Lcom/google/android/exoplayer2/k1;

    move-result-object v8

    invoke-interface {v7, v8}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    :cond_1
    move-object v8, v6

    .line 12
    iget-object v7, v1, Lv2/c0$a;->d:Lv2/x;

    iget-object v9, v1, Lv2/c0$a;->b:Landroid/net/Uri;

    iget-object v6, v1, Lv2/c0$a;->c:Lj3/a0;

    .line 13
    invoke-virtual {v6}, Lj3/a0;->e()Ljava/util/Map;

    move-result-object v10

    iget-object v6, v1, Lv2/c0$a;->e:Lc2/n;

    move-wide v11, v13

    move-wide v4, v13

    move-wide v13, v15

    move-object v15, v6

    .line 14
    invoke-interface/range {v7 .. v15}, Lv2/x;->d(Lj3/f;Landroid/net/Uri;Ljava/util/Map;JJLc2/n;)V

    .line 15
    iget-object v6, v1, Lv2/c0$a;->n:Lv2/c0;

    invoke-static {v6}, Lv2/c0;->E(Lv2/c0;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 16
    iget-object v6, v1, Lv2/c0$a;->d:Lv2/x;

    invoke-interface {v6}, Lv2/x;->b()V

    .line 17
    :cond_2
    iget-boolean v6, v1, Lv2/c0$a;->i:Z

    if-eqz v6, :cond_3

    .line 18
    iget-object v6, v1, Lv2/c0$a;->d:Lv2/x;

    iget-wide v7, v1, Lv2/c0$a;->j:J

    invoke-interface {v6, v4, v5, v7, v8}, Lv2/x;->a(JJ)V

    .line 19
    iput-boolean v0, v1, Lv2/c0$a;->i:Z

    :cond_3
    :goto_1
    move-wide v13, v4

    :cond_4
    if-nez v2, :cond_5

    .line 20
    iget-boolean v4, v1, Lv2/c0$a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 21
    :try_start_1
    iget-object v4, v1, Lv2/c0$a;->f:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/g;->a()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    iget-object v4, v1, Lv2/c0$a;->d:Lv2/x;

    iget-object v5, v1, Lv2/c0$a;->g:Lc2/a0;

    invoke-interface {v4, v5}, Lv2/x;->c(Lc2/a0;)I

    move-result v2

    .line 23
    iget-object v4, v1, Lv2/c0$a;->d:Lv2/x;

    invoke-interface {v4}, Lv2/x;->e()J

    move-result-wide v4

    .line 24
    iget-object v6, v1, Lv2/c0$a;->n:Lv2/c0;

    invoke-static {v6}, Lv2/c0;->H(Lv2/c0;)J

    move-result-wide v6

    add-long/2addr v6, v13

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 25
    iget-object v6, v1, Lv2/c0$a;->f:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/g;->c()Z

    .line 26
    iget-object v6, v1, Lv2/c0$a;->n:Lv2/c0;

    invoke-static {v6}, Lv2/c0;->z(Lv2/c0;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lv2/c0$a;->n:Lv2/c0;

    invoke-static {v7}, Lv2/c0;->y(Lv2/c0;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 27
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    .line 28
    :cond_6
    iget-object v3, v1, Lv2/c0$a;->d:Lv2/x;

    invoke-interface {v3}, Lv2/x;->e()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7

    .line 29
    iget-object v3, v1, Lv2/c0$a;->g:Lc2/a0;

    iget-object v4, v1, Lv2/c0$a;->d:Lv2/x;

    invoke-interface {v4}, Lv2/x;->e()J

    move-result-wide v4

    iput-wide v4, v3, Lc2/a0;->a:J

    .line 30
    :cond_7
    :goto_2
    iget-object v3, v1, Lv2/c0$a;->c:Lj3/a0;

    invoke-static {v3}, Lj3/k;->a(Lj3/i;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eq v2, v3, :cond_8

    .line 31
    iget-object v2, v1, Lv2/c0$a;->d:Lv2/x;

    invoke-interface {v2}, Lv2/x;->e()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    .line 32
    iget-object v2, v1, Lv2/c0$a;->g:Lc2/a0;

    iget-object v3, v1, Lv2/c0$a;->d:Lv2/x;

    invoke-interface {v3}, Lv2/x;->e()J

    move-result-wide v3

    iput-wide v3, v2, Lc2/a0;->a:J

    .line 33
    :cond_8
    iget-object v2, v1, Lv2/c0$a;->c:Lj3/a0;

    invoke-static {v2}, Lj3/k;->a(Lj3/i;)V

    .line 34
    throw v0

    :cond_9
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/b0;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lv2/c0$a;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-wide v2, p0, Lv2/c0$a;->j:J

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lv2/c0$a;->n:Lv2/c0;

    invoke-static {v0, v1}, Lv2/c0;->A(Lv2/c0;Z)J

    move-result-wide v2

    iget-wide v4, p0, Lv2/c0$a;->j:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    move-wide v5, v2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result v8

    .line 5
    iget-object v0, p0, Lv2/c0$a;->l:Lc2/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lc2/e0;

    .line 6
    invoke-interface {v4, p1, v8}, Lc2/e0;->a(Lcom/google/android/exoplayer2/util/b0;I)V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 7
    invoke-interface/range {v4 .. v10}, Lc2/e0;->c(JIIILc2/e0$a;)V

    .line 8
    iput-boolean v1, p0, Lv2/c0$a;->m:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/c0$a;->h:Z

    return-void
.end method
