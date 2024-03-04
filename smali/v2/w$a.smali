.class public Lv2/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/w$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lv2/q$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lv2/w$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lv2/w$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILv2/q$b;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILv2/q$b;J)V
    .locals 0
    .param p3    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lv2/w$a$a;",
            ">;I",
            "Lv2/q$b;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lv2/w$a;->a:I

    .line 5
    iput-object p3, p0, Lv2/w$a;->b:Lv2/q$b;

    .line 6
    iput-wide p4, p0, Lv2/w$a;->d:J

    return-void
.end method

.method public static synthetic a(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lv2/w$a;->m(Lv2/w;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic b(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lv2/w$a;->l(Lv2/w;Lv2/j;Lv2/m;)V

    return-void
.end method

.method public static synthetic c(Lv2/w$a;Lv2/w;Lv2/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lv2/w$a;->j(Lv2/w;Lv2/m;)V

    return-void
.end method

.method public static synthetic d(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lv2/w$a;->n(Lv2/w;Lv2/j;Lv2/m;)V

    return-void
.end method

.method public static synthetic e(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lv2/w$a;->k(Lv2/w;Lv2/j;Lv2/m;)V

    return-void
.end method

.method private g(J)J
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/l0;->P0(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lv2/w$a;->d:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method private synthetic j(Lv2/w;Lv2/m;)V
    .locals 2

    iget v0, p0, Lv2/w$a;->a:I

    iget-object v1, p0, Lv2/w$a;->b:Lv2/q$b;

    invoke-interface {p1, v0, v1, p2}, Lv2/w;->c0(ILv2/q$b;Lv2/m;)V

    return-void
.end method

.method private synthetic k(Lv2/w;Lv2/j;Lv2/m;)V
    .locals 2

    iget v0, p0, Lv2/w$a;->a:I

    iget-object v1, p0, Lv2/w$a;->b:Lv2/q$b;

    invoke-interface {p1, v0, v1, p2, p3}, Lv2/w;->r(ILv2/q$b;Lv2/j;Lv2/m;)V

    return-void
.end method

.method private synthetic l(Lv2/w;Lv2/j;Lv2/m;)V
    .locals 2

    iget v0, p0, Lv2/w$a;->a:I

    iget-object v1, p0, Lv2/w$a;->b:Lv2/q$b;

    invoke-interface {p1, v0, v1, p2, p3}, Lv2/w;->D(ILv2/q$b;Lv2/j;Lv2/m;)V

    return-void
.end method

.method private synthetic m(Lv2/w;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V
    .locals 7

    iget v1, p0, Lv2/w$a;->a:I

    iget-object v2, p0, Lv2/w$a;->b:Lv2/q$b;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lv2/w;->d0(ILv2/q$b;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V

    return-void
.end method

.method private synthetic n(Lv2/w;Lv2/j;Lv2/m;)V
    .locals 2

    iget v0, p0, Lv2/w$a;->a:I

    iget-object v1, p0, Lv2/w$a;->b:Lv2/q$b;

    invoke-interface {p1, v0, v1, p2, p3}, Lv2/w;->i0(ILv2/q$b;Lv2/j;Lv2/m;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/os/Handler;Lv2/w;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lv2/w$a$a;

    invoke-direct {v1, p1, p2}, Lv2/w$a$a;-><init>(Landroid/os/Handler;Lv2/w;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(ILcom/google/android/exoplayer2/k1;ILjava/lang/Object;J)V
    .locals 12
    .param p2    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lv2/m;

    move-wide/from16 v1, p5

    .line 2
    invoke-direct {p0, v1, v2}, Lv2/w$a;->g(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lv2/m;-><init>(IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJ)V

    .line 3
    invoke-virtual {p0, v11}, Lv2/w$a;->i(Lv2/m;)V

    return-void
.end method

.method public i(Lv2/m;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/w$a$a;

    .line 2
    iget-object v2, v1, Lv2/w$a$a;->b:Lv2/w;

    .line 3
    iget-object v1, v1, Lv2/w$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lv2/v;

    invoke-direct {v3, p0, v2, p1}, Lv2/v;-><init>(Lv2/w$a;Lv2/w;Lv2/m;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/l0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Lv2/j;IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lv2/m;

    move-wide/from16 v1, p7

    .line 2
    invoke-direct {p0, v1, v2}, Lv2/w$a;->g(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-direct {p0, v1, v2}, Lv2/w$a;->g(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lv2/m;-><init>(IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 4
    invoke-virtual {p0, p1, v11}, Lv2/w$a;->p(Lv2/j;Lv2/m;)V

    return-void
.end method

.method public p(Lv2/j;Lv2/m;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/w$a$a;

    .line 2
    iget-object v2, v1, Lv2/w$a$a;->b:Lv2/w;

    .line 3
    iget-object v1, v1, Lv2/w$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lv2/t;

    invoke-direct {v3, p0, v2, p1, p2}, Lv2/t;-><init>(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/l0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lv2/j;IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lv2/m;

    move-wide/from16 v1, p7

    .line 2
    invoke-direct {p0, v1, v2}, Lv2/w$a;->g(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-direct {p0, v1, v2}, Lv2/w$a;->g(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lv2/m;-><init>(IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 4
    invoke-virtual {p0, p1, v11}, Lv2/w$a;->r(Lv2/j;Lv2/m;)V

    return-void
.end method

.method public r(Lv2/j;Lv2/m;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/w$a$a;

    .line 2
    iget-object v2, v1, Lv2/w$a$a;->b:Lv2/w;

    .line 3
    iget-object v1, v1, Lv2/w$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lv2/r;

    invoke-direct {v3, p0, v2, p1, p2}, Lv2/r;-><init>(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/l0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(Lv2/j;IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lv2/m;

    move-wide/from16 v1, p7

    .line 2
    invoke-direct {p0, v1, v2}, Lv2/w$a;->g(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-direct {p0, v1, v2}, Lv2/w$a;->g(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lv2/m;-><init>(IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJ)V

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    .line 4
    invoke-virtual {p0, p1, v11, v2, v3}, Lv2/w$a;->t(Lv2/j;Lv2/m;Ljava/io/IOException;Z)V

    return-void
.end method

.method public t(Lv2/j;Lv2/m;Ljava/io/IOException;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/w$a$a;

    .line 2
    iget-object v4, v1, Lv2/w$a$a;->b:Lv2/w;

    .line 3
    iget-object v1, v1, Lv2/w$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lv2/u;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lv2/u;-><init>(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lcom/google/android/exoplayer2/util/l0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u(Lv2/j;IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    new-instance v11, Lv2/m;

    move-wide/from16 v1, p7

    .line 2
    invoke-direct {p0, v1, v2}, Lv2/w$a;->g(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-direct {p0, v1, v2}, Lv2/w$a;->g(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lv2/m;-><init>(IILcom/google/android/exoplayer2/k1;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 4
    invoke-virtual {p0, p1, v11}, Lv2/w$a;->v(Lv2/j;Lv2/m;)V

    return-void
.end method

.method public v(Lv2/j;Lv2/m;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/w$a$a;

    .line 2
    iget-object v2, v1, Lv2/w$a$a;->b:Lv2/w;

    .line 3
    iget-object v1, v1, Lv2/w$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lv2/s;

    invoke-direct {v3, p0, v2, p1, p2}, Lv2/s;-><init>(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/l0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Lv2/w;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/w$a$a;

    .line 2
    iget-object v2, v1, Lv2/w$a$a;->b:Lv2/w;

    if-ne v2, p1, :cond_0

    .line 3
    iget-object v2, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x(ILv2/q$b;J)Lv2/w$a;
    .locals 7
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    new-instance v6, Lv2/w$a;

    iget-object v1, p0, Lv2/w$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lv2/w$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILv2/q$b;J)V

    return-object v6
.end method
