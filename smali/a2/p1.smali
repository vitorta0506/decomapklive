.class public final La2/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/p1$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Random;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/i3$d;

.field private final b:Lcom/google/android/exoplayer2/i3$b;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "La2/p1$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:La2/r1$a;

.field private f:Lcom/google/android/exoplayer2/i3;

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, La2/o1;->a:La2/o1;

    sput-object v0, La2/p1;->h:Lcom/google/common/base/w;

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, La2/p1;->i:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, La2/p1;->h:Lcom/google/common/base/w;

    invoke-direct {p0, v0}, La2/p1;-><init>(Lcom/google/common/base/w;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/w<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La2/p1;->d:Lcom/google/common/base/w;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    iput-object p1, p0, La2/p1;->a:Lcom/google/android/exoplayer2/i3$d;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    iput-object p1, p0, La2/p1;->b:Lcom/google/android/exoplayer2/i3$b;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La2/p1;->c:Ljava/util/HashMap;

    .line 7
    sget-object p1, Lcom/google/android/exoplayer2/i3;->a:Lcom/google/android/exoplayer2/i3;

    iput-object p1, p0, La2/p1;->f:Lcom/google/android/exoplayer2/i3;

    return-void
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    invoke-static {}, La2/p1;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(La2/p1;)Lcom/google/android/exoplayer2/i3$d;
    .locals 0

    iget-object p0, p0, La2/p1;->a:Lcom/google/android/exoplayer2/i3$d;

    return-object p0
.end method

.method static synthetic j(La2/p1;)Lcom/google/android/exoplayer2/i3$b;
    .locals 0

    iget-object p0, p0, La2/p1;->b:Lcom/google/android/exoplayer2/i3$b;

    return-object p0
.end method

.method private static k()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 1
    sget-object v1, La2/p1;->i:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    .line 2
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l(ILv2/q$b;)La2/p1$a;
    .locals 10
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, La2/p1;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/p1$a;

    .line 2
    invoke-virtual {v4, p1, p2}, La2/p1$a;->k(ILv2/q$b;)V

    .line 3
    invoke-virtual {v4, p1, p2}, La2/p1$a;->i(ILv2/q$b;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-static {v4}, La2/p1$a;->b(La2/p1$a;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    if-nez v7, :cond_0

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/p1$a;

    invoke-static {v5}, La2/p1$a;->h(La2/p1$a;)Lv2/q$b;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6
    invoke-static {v4}, La2/p1$a;->h(La2/p1$a;)Lv2/q$b;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    move-object v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 7
    iget-object v0, p0, La2/p1;->d:Lcom/google/common/base/w;

    invoke-interface {v0}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    new-instance v1, La2/p1$a;

    invoke-direct {v1, p0, v0, p1, p2}, La2/p1$a;-><init>(La2/p1;Ljava/lang/String;ILv2/q$b;)V

    .line 9
    iget-object p1, p0, La2/p1;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method private m(La2/c$a;)V
    .locals 7

    .line 1
    iget-object v0, p1, La2/c$a;->b:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, La2/p1;->g:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, La2/p1;->c:Ljava/util/HashMap;

    iget-object v1, p0, La2/p1;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/p1$a;

    .line 4
    iget v1, p1, La2/c$a;->c:I

    iget-object v2, p1, La2/c$a;->d:Lv2/q$b;

    .line 5
    invoke-direct {p0, v1, v2}, La2/p1;->l(ILv2/q$b;)La2/p1$a;

    move-result-object v1

    .line 6
    invoke-static {v1}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La2/p1;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, La2/p1;->b(La2/c$a;)V

    .line 8
    iget-object v2, p1, La2/c$a;->d:Lv2/q$b;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Lv2/o;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 10
    invoke-static {v0}, La2/p1$a;->b(La2/p1$a;)J

    move-result-wide v2

    iget-object v4, p1, La2/c$a;->d:Lv2/q$b;

    iget-wide v4, v4, Lv2/o;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 11
    invoke-static {v0}, La2/p1$a;->h(La2/p1$a;)Lv2/q$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {v0}, La2/p1$a;->h(La2/p1$a;)Lv2/q$b;

    move-result-object v2

    iget v2, v2, Lv2/o;->b:I

    iget-object v3, p1, La2/c$a;->d:Lv2/q$b;

    iget v3, v3, Lv2/o;->b:I

    if-ne v2, v3, :cond_1

    .line 13
    invoke-static {v0}, La2/p1$a;->h(La2/p1$a;)Lv2/q$b;

    move-result-object v0

    iget v0, v0, Lv2/o;->c:I

    iget-object v2, p1, La2/c$a;->d:Lv2/q$b;

    iget v2, v2, Lv2/o;->c:I

    if-eq v0, v2, :cond_2

    .line 14
    :cond_1
    new-instance v0, Lv2/q$b;

    iget-object v2, p1, La2/c$a;->d:Lv2/q$b;

    iget-object v3, v2, Lv2/o;->a:Ljava/lang/Object;

    iget-wide v4, v2, Lv2/o;->d:J

    invoke-direct {v0, v3, v4, v5}, Lv2/q$b;-><init>(Ljava/lang/Object;J)V

    .line 15
    iget v2, p1, La2/c$a;->c:I

    .line 16
    invoke-direct {p0, v2, v0}, La2/p1;->l(ILv2/q$b;)La2/p1$a;

    move-result-object v0

    .line 17
    iget-object v2, p0, La2/p1;->e:La2/r1$a;

    .line 18
    invoke-static {v0}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-interface {v2, p1, v0, v1}, La2/r1$a;->q0(La2/c$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La2/p1;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(La2/c$a;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v2, v1, La2/p1;->e:La2/r1$a;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v0, La2/c$a;->b:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v2, v1, La2/p1;->c:Ljava/util/HashMap;

    iget-object v3, v1, La2/p1;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/p1$a;

    .line 5
    iget-object v3, v0, La2/c$a;->d:Lv2/q$b;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 6
    invoke-static {v2}, La2/p1$a;->b(La2/p1$a;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v3, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 7
    invoke-static {v2}, La2/p1$a;->c(La2/p1$a;)I

    move-result v2

    iget v5, v0, La2/c$a;->c:I

    if-eq v2, v5, :cond_2

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v5, v0, La2/c$a;->d:Lv2/q$b;

    iget-wide v5, v5, Lv2/o;->d:J

    invoke-static {v2}, La2/p1$a;->b(La2/p1$a;)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v5, v7

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :try_start_2
    iget v2, v0, La2/c$a;->c:I

    iget-object v3, v0, La2/c$a;->d:Lv2/q$b;

    .line 11
    invoke-direct {v1, v2, v3}, La2/p1;->l(ILv2/q$b;)La2/p1$a;

    move-result-object v2

    .line 12
    iget-object v3, v1, La2/p1;->g:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 13
    invoke-static {v2}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, La2/p1;->g:Ljava/lang/String;

    .line 14
    :cond_4
    iget-object v3, v0, La2/c$a;->d:Lv2/q$b;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lv2/o;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    new-instance v10, Lv2/q$b;

    iget-object v3, v0, La2/c$a;->d:Lv2/q$b;

    iget-object v5, v3, Lv2/o;->a:Ljava/lang/Object;

    iget-wide v6, v3, Lv2/o;->d:J

    iget v3, v3, Lv2/o;->b:I

    invoke-direct {v10, v5, v6, v7, v3}, Lv2/q$b;-><init>(Ljava/lang/Object;JI)V

    .line 16
    iget v3, v0, La2/c$a;->c:I

    .line 17
    invoke-direct {v1, v3, v10}, La2/p1;->l(ILv2/q$b;)La2/p1$a;

    move-result-object v3

    .line 18
    invoke-static {v3}, La2/p1$a;->d(La2/p1$a;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 19
    invoke-static {v3, v4}, La2/p1$a;->e(La2/p1$a;Z)Z

    .line 20
    iget-object v5, v0, La2/c$a;->b:Lcom/google/android/exoplayer2/i3;

    iget-object v6, v0, La2/c$a;->d:Lv2/q$b;

    iget-object v6, v6, Lv2/o;->a:Ljava/lang/Object;

    iget-object v7, v1, La2/p1;->b:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 21
    iget-object v5, v1, La2/p1;->b:Lcom/google/android/exoplayer2/i3$b;

    iget-object v6, v0, La2/c$a;->d:Lv2/q$b;

    iget v6, v6, Lv2/o;->b:I

    .line 22
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/i3$b;->i(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/l0;->P0(J)J

    move-result-wide v5

    iget-object v7, v1, La2/p1;->b:Lcom/google/android/exoplayer2/i3$b;

    .line 23
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/i3$b;->p()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    .line 24
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 25
    new-instance v15, La2/c$a;

    iget-wide v6, v0, La2/c$a;->a:J

    iget-object v8, v0, La2/c$a;->b:Lcom/google/android/exoplayer2/i3;

    iget v9, v0, La2/c$a;->c:I

    iget-object v13, v0, La2/c$a;->f:Lcom/google/android/exoplayer2/i3;

    iget v14, v0, La2/c$a;->g:I

    iget-object v5, v0, La2/c$a;->h:Lv2/q$b;

    move-object/from16 v16, v5

    iget-wide v4, v0, La2/c$a;->i:J

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    iget-wide v2, v0, La2/c$a;->j:J

    move-wide/from16 v22, v4

    move-object/from16 v4, v16

    move-wide/from16 v16, v22

    move-object v5, v15

    move-object v0, v15

    move-object v15, v4

    move-wide/from16 v18, v2

    invoke-direct/range {v5 .. v19}, La2/c$a;-><init>(JLcom/google/android/exoplayer2/i3;ILv2/q$b;JLcom/google/android/exoplayer2/i3;ILv2/q$b;JJ)V

    .line 26
    iget-object v2, v1, La2/p1;->e:La2/r1$a;

    invoke-static/range {v21 .. v21}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, La2/r1$a;->i0(La2/c$a;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v20, v2

    .line 27
    :goto_2
    invoke-static/range {v20 .. v20}, La2/p1$a;->d(La2/p1$a;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object/from16 v0, v20

    const/4 v2, 0x1

    .line 28
    invoke-static {v0, v2}, La2/p1$a;->e(La2/p1$a;Z)Z

    .line 29
    iget-object v2, v1, La2/p1;->e:La2/r1$a;

    invoke-static {v0}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3}, La2/r1$a;->i0(La2/c$a;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object/from16 v4, p1

    move-object/from16 v0, v20

    .line 30
    :goto_3
    invoke-static {v0}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, La2/p1;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, La2/p1$a;->f(La2/p1$a;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 31
    invoke-static {v0, v2}, La2/p1$a;->g(La2/p1$a;Z)Z

    .line 32
    iget-object v2, v1, La2/p1;->e:La2/r1$a;

    invoke-static {v0}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, La2/r1$a;->K(La2/c$a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p2, Lv2/o;->a:Ljava/lang/Object;

    iget-object v1, p0, La2/p1;->b:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 2
    invoke-direct {p0, p1, p2}, La2/p1;->l(ILv2/q$b;)La2/p1$a;

    move-result-object p1

    invoke-static {p1}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(La2/c$a;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La2/p1;->e:La2/r1$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, La2/p1;->f:Lcom/google/android/exoplayer2/i3;

    .line 3
    iget-object v1, p1, La2/c$a;->b:Lcom/google/android/exoplayer2/i3;

    iput-object v1, p0, La2/p1;->f:Lcom/google/android/exoplayer2/i3;

    .line 4
    iget-object v1, p0, La2/p1;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/p1$a;

    .line 7
    iget-object v3, p0, La2/p1;->f:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v2, v0, v3}, La2/p1$a;->m(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2, p1}, La2/p1$a;->j(La2/c$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 10
    invoke-static {v2}, La2/p1$a;->d(La2/p1$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-static {v2}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, La2/p1;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 12
    iput-object v3, p0, La2/p1;->g:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v3, p0, La2/p1;->e:La2/r1$a;

    .line 14
    invoke-static {v2}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 15
    invoke-interface {v3, p1, v2, v4}, La2/r1$a;->l0(La2/c$a;Ljava/lang/String;Z)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {p0, p1}, La2/p1;->m(La2/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(La2/r1$a;)V
    .locals 0

    iput-object p1, p0, La2/p1;->e:La2/r1$a;

    return-void
.end method

.method public declared-synchronized f(La2/c$a;I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La2/p1;->e:La2/r1$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, La2/p1;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/p1$a;

    .line 5
    invoke-virtual {v3, p1}, La2/p1$a;->j(La2/c$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 7
    invoke-static {v3}, La2/p1$a;->d(La2/p1$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-static {v3}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, La2/p1;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz p2, :cond_2

    if-eqz v4, :cond_2

    .line 9
    invoke-static {v3}, La2/p1$a;->f(La2/p1$a;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 10
    iput-object v4, p0, La2/p1;->g:Ljava/lang/String;

    .line 11
    :cond_3
    iget-object v4, p0, La2/p1;->e:La2/r1$a;

    invoke-static {v3}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, p1, v3, v5}, La2/r1$a;->l0(La2/c$a;Ljava/lang/String;Z)V

    goto :goto_1

    .line 12
    :cond_4
    invoke-direct {p0, p1}, La2/p1;->m(La2/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(La2/c$a;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, La2/p1;->g:Ljava/lang/String;

    .line 2
    iget-object v0, p0, La2/p1;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/p1$a;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    invoke-static {v1}, La2/p1$a;->d(La2/p1$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La2/p1;->e:La2/r1$a;

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v1}, La2/p1$a;->a(La2/p1$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 8
    invoke-interface {v2, p1, v1, v3}, La2/r1$a;->l0(La2/c$a;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
