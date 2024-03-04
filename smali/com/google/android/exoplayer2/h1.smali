.class final Lcom/google/android/exoplayer2/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lv2/n$a;
.implements Lh3/b0$a;
.implements Lcom/google/android/exoplayer2/e2$d;
.implements Lcom/google/android/exoplayer2/l$a;
.implements Lcom/google/android/exoplayer2/p2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/h1$c;,
        Lcom/google/android/exoplayer2/h1$b;,
        Lcom/google/android/exoplayer2/h1$d;,
        Lcom/google/android/exoplayer2/h1$g;,
        Lcom/google/android/exoplayer2/h1$h;,
        Lcom/google/android/exoplayer2/h1$f;,
        Lcom/google/android/exoplayer2/h1$e;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Lcom/google/android/exoplayer2/h1$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private L:J

.field private M:I

.field private N:Z

.field private O:Lcom/google/android/exoplayer2/ExoPlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private P:J

.field private Q:J

.field private final a:[Lcom/google/android/exoplayer2/u2;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/u2;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/google/android/exoplayer2/w2;

.field private final d:Lh3/b0;

.field private final e:Lh3/c0;

.field private final f:Lcom/google/android/exoplayer2/q1;

.field private final g:Lj3/d;

.field private final h:Lcom/google/android/exoplayer2/util/n;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Landroid/os/Looper;

.field private final k:Lcom/google/android/exoplayer2/i3$d;

.field private final l:Lcom/google/android/exoplayer2/i3$b;

.field private final m:J

.field private final n:Z

.field private final o:Lcom/google/android/exoplayer2/l;

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/h1$d;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/android/exoplayer2/util/d;

.field private final r:Lcom/google/android/exoplayer2/h1$f;

.field private final s:Lcom/google/android/exoplayer2/b2;

.field private final t:Lcom/google/android/exoplayer2/e2;

.field private final u:Lcom/google/android/exoplayer2/p1;

.field private final v:J

.field private w:Lcom/google/android/exoplayer2/z2;

.field private x:Lcom/google/android/exoplayer2/i2;

.field private y:Lcom/google/android/exoplayer2/h1$e;

.field private z:Z


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/u2;Lh3/b0;Lh3/c0;Lcom/google/android/exoplayer2/q1;Lj3/d;IZLa2/a;Lcom/google/android/exoplayer2/z2;Lcom/google/android/exoplayer2/p1;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/h1$f;La2/s1;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p16

    .line 2
    iput-object v9, v0, Lcom/google/android/exoplayer2/h1;->r:Lcom/google/android/exoplayer2/h1$f;

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    .line 4
    iput-object v2, v0, Lcom/google/android/exoplayer2/h1;->d:Lh3/b0;

    move-object v9, p3

    .line 5
    iput-object v9, v0, Lcom/google/android/exoplayer2/h1;->e:Lh3/c0;

    move-object/from16 v10, p4

    .line 6
    iput-object v10, v0, Lcom/google/android/exoplayer2/h1;->f:Lcom/google/android/exoplayer2/q1;

    .line 7
    iput-object v3, v0, Lcom/google/android/exoplayer2/h1;->g:Lj3/d;

    move/from16 v11, p6

    .line 8
    iput v11, v0, Lcom/google/android/exoplayer2/h1;->E:I

    move/from16 v11, p7

    .line 9
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/h1;->F:Z

    move-object/from16 v11, p9

    .line 10
    iput-object v11, v0, Lcom/google/android/exoplayer2/h1;->w:Lcom/google/android/exoplayer2/z2;

    move-object/from16 v11, p10

    .line 11
    iput-object v11, v0, Lcom/google/android/exoplayer2/h1;->u:Lcom/google/android/exoplayer2/p1;

    .line 12
    iput-wide v5, v0, Lcom/google/android/exoplayer2/h1;->v:J

    .line 13
    iput-wide v5, v0, Lcom/google/android/exoplayer2/h1;->P:J

    move/from16 v5, p13

    .line 14
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/h1;->A:Z

    .line 15
    iput-object v7, v0, Lcom/google/android/exoplayer2/h1;->q:Lcom/google/android/exoplayer2/util/d;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    iput-wide v5, v0, Lcom/google/android/exoplayer2/h1;->Q:J

    .line 17
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/q1;->c()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/h1;->m:J

    .line 18
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/q1;->b()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/h1;->n:Z

    .line 19
    invoke-static {p3}, Lcom/google/android/exoplayer2/i2;->j(Lh3/c0;)Lcom/google/android/exoplayer2/i2;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 20
    new-instance v6, Lcom/google/android/exoplayer2/h1$e;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/h1$e;-><init>(Lcom/google/android/exoplayer2/i2;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    .line 21
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/w2;

    iput-object v5, v0, Lcom/google/android/exoplayer2/h1;->c:[Lcom/google/android/exoplayer2/w2;

    const/4 v5, 0x0

    .line 22
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    .line 23
    aget-object v6, v1, v5

    invoke-interface {v6, v5, v8}, Lcom/google/android/exoplayer2/u2;->j(ILa2/s1;)V

    .line 24
    iget-object v6, v0, Lcom/google/android/exoplayer2/h1;->c:[Lcom/google/android/exoplayer2/w2;

    aget-object v9, v1, v5

    invoke-interface {v9}, Lcom/google/android/exoplayer2/u2;->o()Lcom/google/android/exoplayer2/w2;

    move-result-object v9

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/l;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/l;-><init>(Lcom/google/android/exoplayer2/l$a;Lcom/google/android/exoplayer2/util/d;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    .line 27
    invoke-static {}, Lcom/google/common/collect/w7;->l()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/h1;->b:Ljava/util/Set;

    .line 28
    new-instance v1, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    .line 29
    new-instance v1, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    .line 30
    invoke-virtual {p2, p0, v3}, Lh3/b0;->c(Lh3/b0$a;Lj3/d;)V

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/h1;->N:Z

    .line 32
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    new-instance v2, Lcom/google/android/exoplayer2/b2;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/b2;-><init>(La2/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    .line 34
    new-instance v2, Lcom/google/android/exoplayer2/e2;

    invoke-direct {v2, p0, v4, v1, v8}, Lcom/google/android/exoplayer2/e2;-><init>(Lcom/google/android/exoplayer2/e2$d;La2/a;Landroid/os/Handler;La2/s1;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    .line 35
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/h1;->i:Landroid/os/HandlerThread;

    .line 36
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 37
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/h1;->j:Landroid/os/Looper;

    .line 38
    invoke-interface {v7, v1, p0}, Lcom/google/android/exoplayer2/util/d;->d(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/n;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    return-void
.end method

.method private A0(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/i2;->r:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/h1;->D0(Lv2/q$b;JZZ)J

    move-result-wide v3

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/i2;->r:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/i2;->c:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/i2;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    :cond_0
    return-void
.end method

.method private B()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/i2;->p:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/h1;->C(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private B0(Lcom/google/android/exoplayer2/h1$h;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    .line 2
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget v4, v11, Lcom/google/android/exoplayer2/h1;->E:I

    iget-boolean v5, v11, Lcom/google/android/exoplayer2/h1;->F:Z

    iget-object v6, v11, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-object v7, v11, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/h1;->w0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/h1$h;ZIZLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v7, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v7, v7, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    .line 5
    invoke-direct {v11, v7}, Lcom/google/android/exoplayer2/h1;->z(Lcom/google/android/exoplayer2/i3;)Landroid/util/Pair;

    move-result-object v7

    .line 6
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lv2/q$b;

    .line 7
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 8
    iget-object v7, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v7, v7, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v17, v4

    :goto_0
    move-wide v4, v12

    move-wide/from16 v12, v17

    goto :goto_4

    .line 9
    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 11
    iget-wide v9, v0, Lcom/google/android/exoplayer2/h1$h;->c:J

    cmp-long v14, v9, v4

    if-nez v14, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v12

    .line 12
    :goto_1
    iget-object v14, v11, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-object v15, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v15, v15, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    .line 13
    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/google/android/exoplayer2/b2;->B(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;J)Lv2/q$b;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Lv2/o;->b()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 15
    iget-object v4, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v4, v4, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v5, v7, Lv2/o;->a:Ljava/lang/Object;

    iget-object v12, v11, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v4, v5, v12}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 16
    iget-object v4, v11, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    iget v5, v7, Lv2/o;->b:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/i3$b;->n(I)I

    move-result v4

    iget v5, v7, Lv2/o;->c:I

    if-ne v4, v5, :cond_2

    .line 17
    iget-object v4, v11, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/i3$b;->j()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_2

    :cond_2
    move-wide v12, v2

    :goto_2
    move-wide v4, v12

    move-wide v12, v9

    const/4 v10, 0x1

    move-object v9, v7

    goto :goto_4

    .line 18
    :cond_3
    iget-wide v14, v0, Lcom/google/android/exoplayer2/h1$h;->c:J

    cmp-long v16, v14, v4

    if-nez v16, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    move-wide/from16 v17, v9

    move v10, v4

    move-object v9, v7

    goto :goto_0

    .line 19
    :goto_4
    :try_start_0
    iget-object v7, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v7, v7, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 20
    iput-object v0, v11, Lcom/google/android/exoplayer2/h1;->K:Lcom/google/android/exoplayer2/h1$h;

    goto :goto_5

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    .line 21
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v1, v1, Lcom/google/android/exoplayer2/i2;->e:I

    if-eq v1, v8, :cond_6

    .line 22
    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/h1;->Y0(I)V

    .line 23
    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Lcom/google/android/exoplayer2/h1;->p0(ZZZZ)V

    :goto_5
    move-wide v7, v4

    goto/16 :goto_9

    .line 24
    :cond_7
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    invoke-virtual {v9, v1}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 25
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 26
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/y1;->d:Z

    if-eqz v7, :cond_8

    cmp-long v7, v4, v2

    if-eqz v7, :cond_8

    .line 27
    iget-object v1, v1, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    iget-object v2, v11, Lcom/google/android/exoplayer2/h1;->w:Lcom/google/android/exoplayer2/z2;

    .line 28
    invoke-interface {v1, v4, v5, v2}, Lv2/n;->f(JLcom/google/android/exoplayer2/z2;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v4

    .line 29
    :goto_6
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/l0;->P0(J)J

    move-result-wide v14

    iget-object v3, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/i2;->r:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/l0;->P0(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_b

    iget-object v3, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v6, v3, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    .line 30
    :cond_9
    iget-wide v7, v3, Lcom/google/android/exoplayer2/i2;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 31
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    return-void

    :cond_a
    move-wide v1, v4

    .line 32
    :cond_b
    :try_start_1
    iget-object v3, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v3, v3, Lcom/google/android/exoplayer2/i2;->e:I

    if-ne v3, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 33
    :goto_7
    invoke-direct {v11, v9, v1, v2, v0}, Lcom/google/android/exoplayer2/h1;->C0(Lv2/q$b;JZ)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v0, v4, v14

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v8, v10

    .line 34
    :try_start_2
    iget-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v4, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v5, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/h1;->m1(Lcom/google/android/exoplayer2/i3;Lv2/q$b;Lcom/google/android/exoplayer2/i3;Lv2/q$b;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v10, v8

    move-wide v7, v14

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 35
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    return-void

    :catchall_0
    move-exception v0

    move v10, v8

    move-wide v7, v14

    goto :goto_a

    :catchall_1
    move-exception v0

    move-wide v7, v4

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 36
    throw v0
.end method

.method private C(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplayer2/h1;->L:J

    .line 3
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/y1;->y(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 4
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private C0(Lv2/q$b;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/h1;->D0(Lv2/q$b;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private D(Lv2/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/b2;->v(Lv2/n;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/h1;->L:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/b2;->y(J)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->U()V

    return-void
.end method

.method private D0(Lv2/q$b;JZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->h1()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->C:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    .line 3
    iget-object p5, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget p5, p5, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/h1;->Y0(I)V

    .line 5
    :cond_1
    iget-object p5, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    .line 6
    iget-object v3, v2, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    invoke-virtual {p1, v3}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    .line 8
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/y1;->z(J)J

    move-result-wide p4

    const-wide/16 v3, 0x0

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length p4, p1

    const/4 p5, 0x0

    :goto_2
    if-ge p5, p4, :cond_5

    aget-object v3, p1, p5

    .line 10
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/h1;->m(Lcom/google/android/exoplayer2/u2;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    .line 11
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object p1

    if-eq p1, v2, :cond_6

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b2;->b()Lcom/google/android/exoplayer2/y1;

    goto :goto_3

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/b2;->z(Lcom/google/android/exoplayer2/y1;)Z

    const-wide p4, 0xe8d4a51000L

    .line 14
    invoke-virtual {v2, p4, p5}, Lcom/google/android/exoplayer2/y1;->x(J)V

    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->p()V

    :cond_7
    if-eqz v2, :cond_a

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/b2;->z(Lcom/google/android/exoplayer2/y1;)Z

    .line 17
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/y1;->d:Z

    if-nez p1, :cond_8

    .line 18
    iget-object p1, v2, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    .line 19
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/z1;->b(J)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    goto :goto_4

    .line 20
    :cond_8
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/y1;->e:Z

    if-eqz p1, :cond_9

    .line 21
    iget-object p1, v2, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    invoke-interface {p1, p2, p3}, Lv2/n;->e(J)J

    move-result-wide p1

    .line 22
    iget-object p3, v2, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    iget-wide p4, p0, Lcom/google/android/exoplayer2/h1;->m:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/h1;->n:Z

    invoke-interface {p3, p4, p5, v2}, Lv2/n;->s(JZ)V

    move-wide p2, p1

    .line 23
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/h1;->r0(J)V

    .line 24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->U()V

    goto :goto_5

    .line 25
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b2;->f()V

    .line 26
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/h1;->r0(J)V

    .line 27
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h1;->F(Z)V

    .line 28
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    return-wide p2
.end method

.method private E(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p2, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object p2, p2, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lv2/o;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    .line 4
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p2, p2}, Lcom/google/android/exoplayer2/h1;->g1(ZZ)V

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/i2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/i2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    return-void
.end method

.method private E0(Lcom/google/android/exoplayer2/p2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p2;->f()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->F0(Lcom/google/android/exoplayer2/p2;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/h1$d;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/h1$d;-><init>(Lcom/google/android/exoplayer2/p2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/h1$d;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/h1$d;-><init>(Lcom/google/android/exoplayer2/p2;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v4, v1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget v5, p0, Lcom/google/android/exoplayer2/h1;->E:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/h1;->F:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-object v8, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    move-object v2, v0

    move-object v3, v4

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/h1;->t0(Lcom/google/android/exoplayer2/h1$d;Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;IZLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p2;->k(Z)V

    :goto_0
    return-void
.end method

.method private F(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/i2;->k:Lv2/q$b;

    .line 4
    invoke-virtual {v2, v1}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/i2;->b(Lv2/q$b;)Lcom/google/android/exoplayer2/i2;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    if-nez v0, :cond_2

    .line 7
    iget-wide v3, v1, Lcom/google/android/exoplayer2/i2;->r:J

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->i()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/google/android/exoplayer2/i2;->p:J

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->B()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/exoplayer2/i2;->q:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 10
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/y1;->d:Z

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->n()Lv2/q0;

    move-result-object p1

    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h1;->j1(Lv2/q0;Lh3/c0;)V

    :cond_4
    return-void
.end method

.method private F0(Lcom/google/android/exoplayer2/p2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p2;->c()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->j:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->l(Lcom/google/android/exoplayer2/p2;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget p1, p1, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->e(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method private G(Lcom/google/android/exoplayer2/i3;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    iget-object v2, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v3, v11, Lcom/google/android/exoplayer2/h1;->K:Lcom/google/android/exoplayer2/h1$h;

    iget-object v4, v11, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget v5, v11, Lcom/google/android/exoplayer2/h1;->E:I

    iget-boolean v6, v11, Lcom/google/android/exoplayer2/h1;->F:Z

    iget-object v7, v11, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-object v8, v11, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    move-object/from16 v1, p1

    .line 2
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/h1;->v0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/h1$h;Lcom/google/android/exoplayer2/b2;IZLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/h1$g;

    move-result-object v7

    .line 3
    iget-object v8, v7, Lcom/google/android/exoplayer2/h1$g;->a:Lv2/q$b;

    .line 4
    iget-wide v9, v7, Lcom/google/android/exoplayer2/h1$g;->c:J

    .line 5
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/h1$g;->d:Z

    .line 6
    iget-wide v13, v7, Lcom/google/android/exoplayer2/h1$g;->b:J

    .line 7
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    .line 8
    invoke-virtual {v1, v8}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/i2;->r:J

    cmp-long v3, v13, v1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v16, 0x1

    :goto_1
    const/16 v17, 0x3

    const/4 v6, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    .line 9
    :try_start_0
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/h1$g;->e:Z

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v1, v1, Lcom/google/android/exoplayer2/i2;->e:I

    if-eq v1, v15, :cond_2

    .line 11
    invoke-direct {v11, v4}, Lcom/google/android/exoplayer2/h1;->Y0(I)V

    .line 12
    :cond_2
    invoke-direct {v11, v5, v5, v5, v15}, Lcom/google/android/exoplayer2/h1;->p0(ZZZZ)V

    :cond_3
    if-nez v16, :cond_4

    .line 13
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-wide v3, v11, Lcom/google/android/exoplayer2/h1;->L:J

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->y()J

    move-result-wide v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p1

    const/4 v15, -0x1

    const/16 v20, 0x4

    const/4 v15, 0x0

    move-wide/from16 v5, v21

    .line 15
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/b2;->F(Lcom/google/android/exoplayer2/i3;JJ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/h1;->A0(Z)V

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    const/16 v20, 0x4

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-nez v1, :cond_7

    .line 18
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    invoke-virtual {v2, v8}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    iget-object v2, v11, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-object v3, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    invoke-virtual {v2, v12, v3}, Lcom/google/android/exoplayer2/b2;->r(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/z1;)Lcom/google/android/exoplayer2/z1;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->A()V

    .line 22
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    goto :goto_2

    .line 23
    :cond_6
    invoke-direct {v11, v8, v13, v14, v0}, Lcom/google/android/exoplayer2/h1;->C0(Lv2/q$b;JZ)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v13, v0

    .line 24
    :cond_7
    :goto_3
    iget-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v4, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v5, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    .line 25
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/h1$g;->f:Z

    if-eqz v0, :cond_8

    move-wide v6, v13

    goto :goto_4

    :cond_8
    move-wide/from16 v6, v18

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/h1;->m1(Lcom/google/android/exoplayer2/i3;Lv2/q$b;Lcom/google/android/exoplayer2/i3;Lv2/q$b;J)V

    if-nez v16, :cond_9

    .line 27
    iget-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/i2;->c:J

    cmp-long v2, v9, v0

    if-eqz v2, :cond_c

    .line 28
    :cond_9
    iget-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget-object v1, v1, Lv2/o;->a:Ljava/lang/Object;

    .line 29
    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    if-eqz v16, :cond_a

    if-eqz p2, :cond_a

    .line 30
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v11, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/i3$b;->f:Z

    if-nez v0, :cond_a

    const/16 v23, 0x1

    goto :goto_5

    :cond_a
    const/16 v23, 0x0

    .line 32
    :goto_5
    iget-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/i2;->d:J

    .line 33
    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/16 v17, 0x4

    :cond_b
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    .line 34
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 35
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->q0()V

    .line 36
    iget-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-direct {v11, v12, v0}, Lcom/google/android/exoplayer2/h1;->u0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;)V

    .line 37
    iget-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/i2;->i(Lcom/google/android/exoplayer2/i3;)Lcom/google/android/exoplayer2/i2;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v6, 0x0

    .line 39
    iput-object v6, v11, Lcom/google/android/exoplayer2/h1;->K:Lcom/google/android/exoplayer2/h1$h;

    .line 40
    :cond_d
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/h1;->F(Z)V

    return-void

    :catchall_0
    move-exception v0

    const/4 v6, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    const/16 v20, 0x4

    .line 41
    :goto_6
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v4, v1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v5, v1, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    .line 42
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/h1$g;->f:Z

    if-eqz v1, :cond_e

    move-wide/from16 v18, v13

    :cond_e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v18

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/h1;->m1(Lcom/google/android/exoplayer2/i3;Lv2/q$b;Lcom/google/android/exoplayer2/i3;Lv2/q$b;J)V

    if-nez v16, :cond_f

    .line 44
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/i2;->c:J

    cmp-long v3, v9, v1

    if-eqz v3, :cond_12

    .line 45
    :cond_f
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v2, v1, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget-object v2, v2, Lv2/o;->a:Ljava/lang/Object;

    .line 46
    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    if-eqz v16, :cond_10

    if-eqz p2, :cond_10

    .line 47
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v11, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/i3$b;->f:Z

    if-nez v1, :cond_10

    const/16 v23, 0x1

    goto :goto_7

    :cond_10
    const/16 v23, 0x0

    .line 49
    :goto_7
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/i2;->d:J

    .line 50
    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    const/16 v17, 0x4

    :cond_11
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    .line 51
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 52
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->q0()V

    .line 53
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-direct {v11, v12, v1}, Lcom/google/android/exoplayer2/h1;->u0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;)V

    .line 54
    iget-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/i2;->i(Lcom/google/android/exoplayer2/i3;)Lcom/google/android/exoplayer2/i2;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-nez v1, :cond_13

    .line 56
    iput-object v15, v11, Lcom/google/android/exoplayer2/h1;->K:Lcom/google/android/exoplayer2/h1$h;

    :cond_13
    const/4 v1, 0x0

    .line 57
    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/h1;->F(Z)V

    .line 58
    throw v0
.end method

.method private G0(Lcom/google/android/exoplayer2/p2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p2;->c()Landroid/os/Looper;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p2;->k(Z)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->q:Lcom/google/android/exoplayer2/util/d;

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/util/d;->d(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/n;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/g1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/g1;-><init>(Lcom/google/android/exoplayer2/h1;Lcom/google/android/exoplayer2/p2;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->h(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private H(Lv2/n;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/b2;->v(Lv2/n;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/k2;->a:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/y1;->p(FLcom/google/android/exoplayer2/i3;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y1;->n()Lv2/q0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v1

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/h1;->j1(Lv2/q0;Lh3/c0;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 9
    iget-object v0, p1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z1;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/h1;->r0(J)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->p()V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v2, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v7, p1, Lcom/google/android/exoplayer2/z1;->b:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/i2;->c:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    move-wide v3, v7

    .line 12
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->U()V

    return-void
.end method

.method private H0(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/exoplayer2/u2;->t()Lv2/i0;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3
    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/h1;->I0(Lcom/google/android/exoplayer2/u2;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private I(Lcom/google/android/exoplayer2/k2;FZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/i2;->f(Lcom/google/android/exoplayer2/k2;)Lcom/google/android/exoplayer2/i2;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 3
    :cond_1
    iget p3, p1, Lcom/google/android/exoplayer2/k2;->a:F

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/h1;->n1(F)V

    .line 4
    iget-object p3, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    aget-object v1, p3, v0

    if-eqz v1, :cond_2

    .line 5
    iget v2, p1, Lcom/google/android/exoplayer2/k2;->a:F

    invoke-interface {v1, p2, v2}, Lcom/google/android/exoplayer2/u2;->q(FF)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private I0(Lcom/google/android/exoplayer2/u2;J)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/u2;->i()V

    .line 2
    instance-of v0, p1, Lx2/n;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lx2/n;

    invoke-virtual {p1, p2, p3}, Lx2/n;->X(J)V

    :cond_0
    return-void
.end method

.method private J(Lcom/google/android/exoplayer2/k2;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget v0, p1, Lcom/google/android/exoplayer2/k2;->a:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/h1;->I(Lcom/google/android/exoplayer2/k2;FZZ)V

    return-void
.end method

.method private J0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->G:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/h1;->G:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    invoke-static {v2}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Lcom/google/android/exoplayer2/u2;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    monitor-enter p0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;
    .locals 14
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    .line 1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/h1;->N:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/i2;->r:J

    cmp-long v1, p2, v3

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    .line 2
    invoke-virtual {p1, v1}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/h1;->N:Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->q0()V

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v3, v1, Lcom/google/android/exoplayer2/i2;->h:Lv2/q0;

    .line 5
    iget-object v4, v1, Lcom/google/android/exoplayer2/i2;->i:Lh3/c0;

    .line 6
    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->j:Ljava/util/List;

    .line 7
    iget-object v7, v0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/e2;->s()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 8
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    if-nez v1, :cond_2

    .line 9
    sget-object v3, Lv2/q0;->d:Lv2/q0;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->n()Lv2/q0;

    move-result-object v3

    :goto_2
    if-nez v1, :cond_3

    .line 11
    iget-object v4, v0, Lcom/google/android/exoplayer2/h1;->e:Lh3/c0;

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v4

    .line 13
    :goto_3
    iget-object v7, v4, Lh3/c0;->c:[Lh3/s;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/h1;->u([Lh3/s;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    if-eqz v1, :cond_4

    .line 14
    iget-object v8, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v9, v8, Lcom/google/android/exoplayer2/z1;->c:J

    cmp-long v11, v9, v5

    if-eqz v11, :cond_4

    .line 15
    invoke-virtual {v8, v5, v6}, Lcom/google/android/exoplayer2/z1;->a(J)Lcom/google/android/exoplayer2/z1;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    :cond_4
    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    goto :goto_4

    .line 16
    :cond_5
    iget-object v7, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v7, v7, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    invoke-virtual {p1, v7}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 17
    sget-object v1, Lv2/q0;->d:Lv2/q0;

    .line 18
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->e:Lh3/c0;

    .line 19
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    goto :goto_4

    :cond_6
    move-object v13, v1

    move-object v11, v3

    move-object v12, v4

    :goto_4
    if-eqz p8, :cond_7

    .line 20
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/h1$e;->e(I)V

    .line 21
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 22
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->B()J

    move-result-wide v9

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 23
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/i2;->c(Lv2/q$b;JJJJLv2/q0;Lh3/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/i2;

    move-result-object v1

    return-object v1
.end method

.method private K0(Lcom/google/android/exoplayer2/h1$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1$b;->a(Lcom/google/android/exoplayer2/h1$b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/h1$h;

    new-instance v1, Lcom/google/android/exoplayer2/q2;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1$b;->b(Lcom/google/android/exoplayer2/h1$b;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1$b;->c(Lcom/google/android/exoplayer2/h1$b;)Lv2/k0;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/q2;-><init>(Ljava/util/Collection;Lv2/k0;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1$b;->a(Lcom/google/android/exoplayer2/h1$b;)I

    move-result v2

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1$b;->d(Lcom/google/android/exoplayer2/h1$b;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/h1$h;-><init>(Lcom/google/android/exoplayer2/i3;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/h1;->K:Lcom/google/android/exoplayer2/h1$h;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1$b;->b(Lcom/google/android/exoplayer2/h1$b;)Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1$b;->c(Lcom/google/android/exoplayer2/h1$b;)Lv2/k0;

    move-result-object p1

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/e2;->C(Ljava/util/List;Lv2/k0;)Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h1;->G(Lcom/google/android/exoplayer2/i3;Z)V

    return-void
.end method

.method private L(Lcom/google/android/exoplayer2/u2;Lcom/google/android/exoplayer2/y1;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    .line 2
    iget-object p2, p2, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-boolean p2, p2, Lcom/google/android/exoplayer2/z1;->f:Z

    if-eqz p2, :cond_1

    iget-boolean p2, v0, Lcom/google/android/exoplayer2/y1;->d:Z

    if-eqz p2, :cond_1

    instance-of p2, p1, Lx2/n;

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/google/android/exoplayer2/metadata/a;

    if-nez p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/u2;->u()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->m()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private M()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/y1;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 4
    aget-object v3, v3, v1

    .line 5
    iget-object v4, v0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    aget-object v4, v4, v1

    .line 6
    invoke-interface {v3}, Lcom/google/android/exoplayer2/u2;->t()Lv2/i0;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v3}, Lcom/google/android/exoplayer2/u2;->g()Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/h1;->L(Lcom/google/android/exoplayer2/u2;Lcom/google/android/exoplayer2/y1;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private M0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->I:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/h1;->I:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/i2;->o:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    :cond_1
    return-void
.end method

.method private static N(ZLv2/q$b;JLv2/q$b;Lcom/google/android/exoplayer2/i3$b;J)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_3

    cmp-long p0, p2, p6

    if-nez p0, :cond_3

    .line 1
    iget-object p0, p1, Lv2/o;->a:Ljava/lang/Object;

    iget-object p2, p4, Lv2/o;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lv2/o;->b()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    iget p0, p1, Lv2/o;->b:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4
    iget p0, p1, Lv2/o;->b:I

    iget p3, p1, Lv2/o;->c:I

    invoke-virtual {p5, p0, p3}, Lcom/google/android/exoplayer2/i3$b;->k(II)I

    move-result p0

    const/4 p3, 0x4

    if-eq p0, p3, :cond_1

    iget p0, p1, Lv2/o;->b:I

    iget p1, p1, Lv2/o;->c:I

    .line 5
    invoke-virtual {p5, p0, p1}, Lcom/google/android/exoplayer2/i3$b;->k(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 6
    :cond_2
    invoke-virtual {p4}, Lv2/o;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, p4, Lv2/o;->b:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method private N0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/h1;->A:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->q0()V

    .line 3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/h1;->B:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->A0(Z)V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->F(Z)V

    :cond_0
    return-void
.end method

.method private O()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->k()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static P(Lcom/google/android/exoplayer2/u2;)Z
    .locals 0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/u2;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private P0(ZIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/h1$e;->c(I)V

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/i2;->d(ZI)Lcom/google/android/exoplayer2/i2;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/h1;->C:Z

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->e0(Z)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->b1()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->h1()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->l1()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget p1, p1, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->e1()V

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private Q()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/z1;->e:J

    .line 3
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/y1;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/i2;->r:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->b1()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static R(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i3$b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lv2/o;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i3$b;->f:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private R0(Lcom/google/android/exoplayer2/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l;->d(Lcom/google/android/exoplayer2/k2;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h1;->J(Lcom/google/android/exoplayer2/k2;Z)V

    return-void
.end method

.method private synthetic S()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->z:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic T(Lcom/google/android/exoplayer2/p2;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->l(Lcom/google/android/exoplayer2/p2;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private T0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/h1;->E:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/b2;->G(Lcom/google/android/exoplayer2/i3;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->A0(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->F(Z)V

    return-void
.end method

.method private U()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->a1()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->D:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/h1;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/y1;->d(J)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->i1()V

    return-void
.end method

.method private U0(Lcom/google/android/exoplayer2/z2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/h1;->w:Lcom/google/android/exoplayer2/z2;

    return-void
.end method

.method private V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h1$e;->d(Lcom/google/android/exoplayer2/i2;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/h1$e;->a(Lcom/google/android/exoplayer2/h1$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->r:Lcom/google/android/exoplayer2/h1$f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/h1$f;->a(Lcom/google/android/exoplayer2/h1$e;)V

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/h1$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/h1$e;-><init>(Lcom/google/android/exoplayer2/i2;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    :cond_0
    return-void
.end method

.method private W(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    invoke-virtual {v0}, Lv2/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->N:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->N:Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget-object v0, v0, Lv2/o;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/h1;->M:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/h1$d;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 8
    iget v4, v3, Lcom/google/android/exoplayer2/h1$d;->b:I

    if-gt v4, v0, :cond_3

    if-ne v4, v0, :cond_4

    iget-wide v3, v3, Lcom/google/android/exoplayer2/h1$d;->c:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/h1$d;

    goto :goto_0

    .line 10
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/h1$d;

    goto :goto_1

    :cond_5
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    .line 12
    iget-object v4, v3, Lcom/google/android/exoplayer2/h1$d;->d:Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget v4, v3, Lcom/google/android/exoplayer2/h1$d;->b:I

    if-lt v4, v0, :cond_6

    if-ne v4, v0, :cond_7

    iget-wide v4, v3, Lcom/google/android/exoplayer2/h1$d;->c:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 13
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 14
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/h1$d;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    .line 15
    iget-object v4, v3, Lcom/google/android/exoplayer2/h1$d;->d:Ljava/lang/Object;

    if-eqz v4, :cond_d

    iget v4, v3, Lcom/google/android/exoplayer2/h1$d;->b:I

    if-ne v4, v0, :cond_d

    iget-wide v4, v3, Lcom/google/android/exoplayer2/h1$d;->c:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_d

    cmp-long v6, v4, p3

    if-gtz v6, :cond_d

    .line 16
    :try_start_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/h1;->F0(Lcom/google/android/exoplayer2/p2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v4, v3, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/p2;->b()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v3, v3, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/p2;->j()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 18
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    :goto_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 20
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/h1$d;

    goto :goto_2

    :cond_a
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 21
    iget-object p2, v3, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/p2;->b()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, v3, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/p2;->j()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 22
    :cond_b
    iget-object p2, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    :cond_c
    throw p1

    .line 24
    :cond_d
    iput v1, p0, Lcom/google/android/exoplayer2/h1;->M:I

    :cond_e
    :goto_5
    return-void
.end method

.method private W0(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/h1;->F:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/b2;->H(Lcom/google/android/exoplayer2/i3;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->A0(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->F(Z)V

    return-void
.end method

.method private X()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/h1;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/b2;->y(J)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/h1;->L:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/b2;->o(JLcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-object v5, p0, Lcom/google/android/exoplayer2/h1;->c:[Lcom/google/android/exoplayer2/w2;

    iget-object v6, p0, Lcom/google/android/exoplayer2/h1;->d:Lh3/b0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->f:Lcom/google/android/exoplayer2/q1;

    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/q1;->a()Lj3/b;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    iget-object v10, p0, Lcom/google/android/exoplayer2/h1;->e:Lh3/c0;

    move-object v9, v0

    .line 6
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/b2;->g([Lcom/google/android/exoplayer2/w2;Lh3/b0;Lj3/b;Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/z1;Lh3/c0;)Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    .line 7
    iget-object v2, v1, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/z1;->b:J

    invoke-interface {v2, p0, v3, v4}, Lv2/n;->k(Lv2/n$a;J)V

    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 9
    iget-wide v0, v0, Lcom/google/android/exoplayer2/z1;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/h1;->r0(J)V

    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h1;->F(Z)V

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->D:Z

    if-eqz v0, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->O()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->D:Z

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->i1()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->U()V

    :goto_0
    return-void
.end method

.method private X0(Lv2/k0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/e2;->D(Lv2/k0;)Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h1;->G(Lcom/google/android/exoplayer2/i3;Z)V

    return-void
.end method

.method private Y()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->Z0()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->V()V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->b()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/y1;

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v3, v3, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget-object v3, v3, Lv2/o;->a:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v4, v4, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-object v4, v4, Lv2/o;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v3, v3, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget v4, v3, Lv2/o;->b:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-object v4, v2, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v4, v4, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget v6, v4, Lv2/o;->b:I

    if-ne v6, v5, :cond_1

    iget v3, v3, Lv2/o;->e:I

    iget v4, v4, Lv2/o;->e:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_1
    iget-object v2, v2, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v5, v2, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-wide v10, v2, Lcom/google/android/exoplayer2/z1;->b:J

    iget-wide v8, v2, Lcom/google/android/exoplayer2/z1;->c:J

    xor-int/lit8 v12, v3, 0x1

    const/4 v13, 0x0

    move-object v4, p0

    move-wide v6, v10

    .line 7
    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->q0()V

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->l1()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private Y0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v1, v0, Lcom/google/android/exoplayer2/i2;->e:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Lcom/google/android/exoplayer2/h1;->Q:J

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/i2;->g(I)Lcom/google/android/exoplayer2/i2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    :cond_1
    return-void
.end method

.method private Z()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/h1;->B:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->M()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/y1;->d:Z

    if-nez v1, :cond_3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/h1;->L:J

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->m()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v1

    .line 7
    iget-object v5, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/b2;->c()Lcom/google/android/exoplayer2/y1;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v6

    .line 9
    iget-object v7, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v11, v7, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v7, v5, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v10, v7, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v12, v0, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, p0

    move-object v9, v11

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/h1;->m1(Lcom/google/android/exoplayer2/i3;Lv2/q$b;Lcom/google/android/exoplayer2/i3;Lv2/q$b;J)V

    .line 10
    iget-boolean v0, v5, Lcom/google/android/exoplayer2/y1;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    .line 11
    invoke-interface {v0}, Lv2/n;->h()J

    move-result-wide v7

    cmp-long v0, v7, v2

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/y1;->m()J

    move-result-wide v0

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/h1;->H0(J)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 15
    invoke-virtual {v1, v0}, Lh3/c0;->c(I)Z

    move-result v2

    .line 16
    invoke-virtual {v6, v0}, Lh3/c0;->c(I)Z

    move-result v3

    if-eqz v2, :cond_7

    .line 17
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/u2;->n()Z

    move-result v2

    if-nez v2, :cond_7

    .line 18
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->c:[Lcom/google/android/exoplayer2/w2;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/w2;->f()I

    move-result v2

    const/4 v7, -0x2

    if-ne v2, v7, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 19
    :goto_1
    iget-object v7, v1, Lh3/c0;->b:[Lcom/google/android/exoplayer2/x2;

    aget-object v7, v7, v0

    .line 20
    iget-object v8, v6, Lh3/c0;->b:[Lcom/google/android/exoplayer2/x2;

    aget-object v8, v8, v0

    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/x2;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_7

    .line 22
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    aget-object v2, v2, v0

    .line 23
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/y1;->m()J

    move-result-wide v7

    .line 24
    invoke-direct {p0, v2, v7, v8}, Lcom/google/android/exoplayer2/h1;->I0(Lcom/google/android/exoplayer2/u2;J)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void

    .line 25
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/z1;->i:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/h1;->B:Z

    if-eqz v1, :cond_d

    .line 26
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v5, v1

    if-ge v4, v5, :cond_d

    .line 27
    aget-object v1, v1, v4

    .line 28
    iget-object v5, v0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    aget-object v5, v5, v4

    if-eqz v5, :cond_c

    .line 29
    invoke-interface {v1}, Lcom/google/android/exoplayer2/u2;->t()Lv2/i0;

    move-result-object v6

    if-ne v6, v5, :cond_c

    .line 30
    invoke-interface {v1}, Lcom/google/android/exoplayer2/u2;->g()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 31
    iget-object v5, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/z1;->e:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_b

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-eqz v9, :cond_b

    .line 32
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->l()J

    move-result-wide v5

    iget-object v7, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/z1;->e:J

    add-long/2addr v5, v7

    goto :goto_4

    :cond_b
    move-wide v5, v2

    .line 33
    :goto_4
    invoke-direct {p0, v1, v5, v6}, Lcom/google/android/exoplayer2/h1;->I0(Lcom/google/android/exoplayer2/u2;J)V

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method private Z0()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->b1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->B:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-wide v2, p0, Lcom/google/android/exoplayer2/h1;->L:J

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->m()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/y1;->g:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private a0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    if-eq v1, v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/y1;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->n0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->p()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a1()Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->O()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->k()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/h1;->C(J)J

    move-result-wide v6

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-wide v1, p0, Lcom/google/android/exoplayer2/h1;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/y1;->y(J)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/h1;->L:J

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/y1;->y(J)J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/z1;->b:J

    sub-long/2addr v1, v3

    move-wide v4, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->f:Lcom/google/android/exoplayer2/q1;

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object v0

    iget v8, v0, Lcom/google/android/exoplayer2/k2;->a:F

    .line 10
    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/q1;->h(JJF)Z

    move-result v0

    return v0
.end method

.method private b0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->i()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/h1;->G(Lcom/google/android/exoplayer2/i3;Z)V

    return-void
.end method

.method private b1()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/i2;->l:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/i2;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c0(Lcom/google/android/exoplayer2/h1$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    iget v1, p1, Lcom/google/android/exoplayer2/h1$c;->a:I

    iget v2, p1, Lcom/google/android/exoplayer2/h1$c;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/h1$c;->c:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/h1$c;->d:Lv2/k0;

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/e2;->v(IIILv2/k0;)Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h1;->G(Lcom/google/android/exoplayer2/i3;Z)V

    return-void
.end method

.method private c1(Z)Z
    .locals 12

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/h1;->J:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->Q()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/i2;->g:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/h1;->d1(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->u:Lcom/google/android/exoplayer2/p1;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/p1;->c()J

    move-result-wide v3

    goto :goto_0

    :cond_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    move-wide v10, v3

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y1;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/z1;->i:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 8
    :goto_1
    iget-object v3, p1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    invoke-virtual {v3}, Lv2/o;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/y1;->d:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-nez v1, :cond_6

    if-nez p1, :cond_6

    .line 9
    iget-object v5, p0, Lcom/google/android/exoplayer2/h1;->f:Lcom/google/android/exoplayer2/q1;

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->B()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object p1

    iget v8, p1, Lcom/google/android/exoplayer2/k2;->a:F

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/h1;->C:Z

    .line 12
    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/q1;->e(JFZJ)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private d0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v1

    iget-object v1, v1, Lh3/c0;->c:[Lh3/s;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v4}, Lh3/s;->f()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d1(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lv2/o;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p2, Lv2/o;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3$d;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/i3$d;->i:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Lcom/google/android/exoplayer2/i3$d;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private e0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v1

    iget-object v1, v1, Lh3/c0;->c:[Lh3/s;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v4, p1}, Lh3/s;->i(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private e1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->C:Z

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l;->g()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 4
    invoke-static {v3}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v3}, Lcom/google/android/exoplayer2/u2;->start()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/h1;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->S()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private f0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v1

    iget-object v1, v1, Lh3/c0;->c:[Lh3/s;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v4}, Lh3/s;->l()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/h1;Lcom/google/android/exoplayer2/p2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->T(Lcom/google/android/exoplayer2/p2;)V

    return-void
.end method

.method private g1(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/h1;->G:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/exoplayer2/h1;->p0(ZZZZ)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->f:Lcom/google/android/exoplayer2/q1;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/q1;->f()V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/h1;->Y0(I)V

    return-void
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/h1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/h1;->H:Z

    return p1
.end method

.method private h1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->h()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-static {v3}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/h1;->s(Lcom/google/android/exoplayer2/u2;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/h1;)Lcom/google/android/exoplayer2/util/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    return-object p0
.end method

.method private i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/h1;->p0(ZZZZ)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->f:Lcom/google/android/exoplayer2/q1;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/q1;->d()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h1;->Y0(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->g:Lj3/d;

    invoke-interface {v2}, Lj3/d;->c()Lj3/b0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/e2;->w(Lj3/b0;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    return-void
.end method

.method private i1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/h1;->D:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    .line 3
    invoke-interface {v0}, Lv2/n;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/i2;->g:Z

    if-eq v0, v2, :cond_2

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/i2;->a(Z)Lcom/google/android/exoplayer2/i2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    :cond_2
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/h1$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->q()I

    move-result p2

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1$b;->b(Lcom/google/android/exoplayer2/h1$b;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1$b;->c(Lcom/google/android/exoplayer2/h1$b;)Lv2/k0;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/exoplayer2/e2;->f(ILjava/util/List;Lv2/k0;)Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h1;->G(Lcom/google/android/exoplayer2/i3;Z)V

    return-void
.end method

.method private j1(Lv2/q0;Lh3/c0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->f:Lcom/google/android/exoplayer2/q1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    iget-object p2, p2, Lh3/c0;->c:[Lh3/s;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/q1;->i([Lcom/google/android/exoplayer2/u2;Lv2/q0;[Lh3/s;)V

    return-void
.end method

.method private k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h1;->A0(Z)V

    return-void
.end method

.method private k0()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/google/android/exoplayer2/h1;->p0(ZZZZ)V

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->f:Lcom/google/android/exoplayer2/q1;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/q1;->g()V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h1;->Y0(I)V

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->z:Z

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private k1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->X()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->Z()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->a0()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->Y()V

    :cond_1
    :goto_0
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/p2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p2;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p2;->g()Lcom/google/android/exoplayer2/p2$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p2;->i()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p2;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/p2$b;->k(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p2;->k(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p2;->k(Z)V

    .line 4
    throw v1
.end method

.method private l0(IILv2/k0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->y:Lcom/google/android/exoplayer2/h1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h1$e;->b(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/e2;->A(IILv2/k0;)Lcom/google/android/exoplayer2/i3;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h1;->G(Lcom/google/android/exoplayer2/i3;Z)V

    return-void
.end method

.method private l1()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/y1;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    invoke-interface {v1}, Lv2/n;->h()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    const/4 v10, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    .line 4
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/h1;->r0(J)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/i2;->r:J

    cmp-long v2, v6, v0

    if-eqz v2, :cond_4

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/i2;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    .line 7
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    goto :goto_2

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 10
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/l;->i(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/h1;->L:J

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/y1;->y(J)J

    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/i2;->r:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/h1;->W(JJ)V

    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iput-wide v0, v2, Lcom/google/android/exoplayer2/i2;->r:J

    .line 14
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->i()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplayer2/i2;->p:J

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->B()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/i2;->q:J

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/i2;->l:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    .line 18
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/h1;->d1(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->n:Lcom/google/android/exoplayer2/k2;

    iget v0, v0, Lcom/google/android/exoplayer2/k2;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->u:Lcom/google/android/exoplayer2/p1;

    .line 20
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->v()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->B()J

    move-result-wide v3

    .line 21
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/p1;->b(JJ)F

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/k2;->a:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/i2;->n:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/k2;->e(F)Lcom/google/android/exoplayer2/k2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/l;->d(Lcom/google/android/exoplayer2/k2;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->n:Lcom/google/android/exoplayer2/k2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    .line 25
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/k2;->a:F

    .line 26
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/exoplayer2/h1;->I(Lcom/google/android/exoplayer2/k2;FZZ)V

    :cond_5
    return-void
.end method

.method private m(Lcom/google/android/exoplayer2/u2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l;->a(Lcom/google/android/exoplayer2/u2;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->s(Lcom/google/android/exoplayer2/u2;)V

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/u2;->e()V

    .line 5
    iget p1, p0, Lcom/google/android/exoplayer2/h1;->J:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/h1;->J:I

    return-void
.end method

.method private m1(Lcom/google/android/exoplayer2/i3;Lv2/q$b;Lcom/google/android/exoplayer2/i3;Lv2/q$b;J)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h1;->d1(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lv2/o;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/k2;->d:Lcom/google/android/exoplayer2/k2;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i2;->n:Lcom/google/android/exoplayer2/k2;

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/l;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/k2;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/l;->d(Lcom/google/android/exoplayer2/k2;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p2, Lv2/o;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->u:Lcom/google/android/exoplayer2/p1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i3$d;->k:Lcom/google/android/exoplayer2/s1$g;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/s1$g;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p1;->a(Lcom/google/android/exoplayer2/s1$g;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_3

    .line 8
    iget-object p3, p0, Lcom/google/android/exoplayer2/h1;->u:Lcom/google/android/exoplayer2/p1;

    iget-object p2, p2, Lv2/o;->a:Ljava/lang/Object;

    .line 9
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/exoplayer2/h1;->x(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 10
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/p1;->e(J)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i3$d;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result p5

    if-nez p5, :cond_4

    .line 13
    iget-object p2, p4, Lv2/o;->a:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 14
    iget-object p4, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/i3$d;->a:Ljava/lang/Object;

    .line 15
    :cond_4
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->u:Lcom/google/android/exoplayer2/p1;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/p1;->e(J)V

    :cond_5
    :goto_1
    return-void
.end method

.method private n()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1;->q:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/d;->c()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/n;->k(I)V

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->k1()V

    .line 4
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v3, v3, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_23

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    goto/16 :goto_12

    .line 5
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v3

    const-wide/16 v7, 0xa

    if-nez v3, :cond_1

    .line 6
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/exoplayer2/h1;->y0(JJ)V

    return-void

    :cond_1
    const-string v9, "doSomeWork"

    .line 7
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/j0;->a(Ljava/lang/String;)V

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->l1()V

    .line 9
    iget-boolean v9, v3, Lcom/google/android/exoplayer2/y1;->d:Z

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    if-eqz v9, :cond_a

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long v13, v13, v10

    .line 11
    iget-object v9, v3, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    iget-object v15, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v7, v15, Lcom/google/android/exoplayer2/i2;->r:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/h1;->m:J

    sub-long/2addr v7, v10

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/h1;->n:Z

    invoke-interface {v9, v7, v8, v10}, Lv2/n;->s(JZ)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 12
    :goto_0
    iget-object v10, v0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v11, v10

    if-ge v7, v11, :cond_b

    .line 13
    aget-object v10, v10, v7

    .line 14
    invoke-static {v10}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_7

    .line 15
    :cond_2
    iget-wide v4, v0, Lcom/google/android/exoplayer2/h1;->L:J

    invoke-interface {v10, v4, v5, v13, v14}, Lcom/google/android/exoplayer2/u2;->s(JJ)V

    if-eqz v8, :cond_3

    .line 16
    invoke-interface {v10}, Lcom/google/android/exoplayer2/u2;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 17
    :goto_1
    iget-object v4, v3, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    aget-object v4, v4, v7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/u2;->t()Lv2/i0;

    move-result-object v5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    .line 18
    invoke-interface {v10}, Lcom/google/android/exoplayer2/u2;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    .line 19
    invoke-interface {v10}, Lcom/google/android/exoplayer2/u2;->isReady()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/u2;->c()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v9, :cond_8

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    if-nez v4, :cond_9

    .line 20
    invoke-interface {v10}, Lcom/google/android/exoplayer2/u2;->m()V

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_0

    .line 21
    :cond_a
    iget-object v4, v3, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    invoke-interface {v4}, Lv2/n;->m()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 22
    :cond_b
    iget-object v4, v3, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/z1;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_d

    .line 23
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/y1;->d:Z

    if-eqz v7, :cond_d

    cmp-long v7, v4, v13

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/i2;->r:J

    cmp-long v10, v4, v7

    if-gtz v10, :cond_d

    :cond_c
    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_e

    .line 24
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/h1;->B:Z

    if-eqz v5, :cond_e

    .line 25
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/h1;->B:Z

    .line 26
    iget-object v5, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v5, v5, Lcom/google/android/exoplayer2/i2;->m:I

    const/4 v7, 0x5

    invoke-direct {v0, v12, v5, v12, v7}, Lcom/google/android/exoplayer2/h1;->P0(ZIZI)V

    :cond_e
    const/4 v5, 0x3

    if-eqz v4, :cond_f

    .line 27
    iget-object v4, v3, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/z1;->i:Z

    if-eqz v4, :cond_f

    .line 28
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/h1;->Y0(I)V

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->h1()V

    goto :goto_9

    .line 30
    :cond_f
    iget-object v4, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v4, v4, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_10

    .line 31
    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/h1;->c1(Z)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 32
    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/h1;->Y0(I)V

    const/4 v4, 0x0

    .line 33
    iput-object v4, v0, Lcom/google/android/exoplayer2/h1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->b1()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->e1()V

    goto :goto_9

    .line 36
    :cond_10
    iget-object v4, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v4, v4, Lcom/google/android/exoplayer2/i2;->e:I

    if-ne v4, v5, :cond_14

    iget v4, v0, Lcom/google/android/exoplayer2/h1;->J:I

    if-nez v4, :cond_11

    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->Q()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_11
    if-nez v9, :cond_14

    .line 38
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->b1()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/h1;->C:Z

    const/4 v4, 0x2

    .line 39
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/h1;->Y0(I)V

    .line 40
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/h1;->C:Z

    if-eqz v4, :cond_13

    .line 41
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->f0()V

    .line 42
    iget-object v4, v0, Lcom/google/android/exoplayer2/h1;->u:Lcom/google/android/exoplayer2/p1;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/p1;->d()V

    .line 43
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->h1()V

    .line 44
    :cond_14
    :goto_9
    iget-object v4, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v4, v4, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_17

    const/4 v4, 0x0

    .line 45
    :goto_a
    iget-object v7, v0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v8, v7

    if-ge v4, v8, :cond_16

    .line 46
    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    aget-object v7, v7, v4

    .line 47
    invoke-interface {v7}, Lcom/google/android/exoplayer2/u2;->t()Lv2/i0;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    aget-object v8, v8, v4

    if-ne v7, v8, :cond_15

    .line 48
    iget-object v7, v0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplayer2/u2;->m()V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 49
    :cond_16
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/i2;->g:Z

    if-nez v4, :cond_17

    iget-wide v3, v3, Lcom/google/android/exoplayer2/i2;->q:J

    const-wide/32 v7, 0x7a120

    cmp-long v9, v3, v7

    if-gez v9, :cond_17

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->O()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_b

    :cond_17
    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_18

    .line 51
    iput-wide v13, v0, Lcom/google/android/exoplayer2/h1;->Q:J

    goto :goto_c

    .line 52
    :cond_18
    iget-wide v3, v0, Lcom/google/android/exoplayer2/h1;->Q:J

    cmp-long v7, v3, v13

    if-nez v7, :cond_19

    .line 53
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->q:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/d;->b()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/h1;->Q:J

    goto :goto_c

    .line 54
    :cond_19
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->q:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/d;->b()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/h1;->Q:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0xfa0

    cmp-long v9, v3, v7

    if-gez v9, :cond_22

    .line 55
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->b1()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v3, v3, Lcom/google/android/exoplayer2/i2;->e:I

    if-ne v3, v5, :cond_1a

    const/4 v3, 0x1

    goto :goto_d

    :cond_1a
    const/4 v3, 0x0

    .line 56
    :goto_d
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/h1;->I:Z

    if-eqz v4, :cond_1b

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/h1;->H:Z

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    const/4 v15, 0x1

    goto :goto_e

    :cond_1b
    const/4 v15, 0x0

    .line 57
    :goto_e
    iget-object v4, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-boolean v7, v4, Lcom/google/android/exoplayer2/i2;->o:Z

    if-eq v7, v15, :cond_1c

    .line 58
    invoke-virtual {v4, v15}, Lcom/google/android/exoplayer2/i2;->h(Z)Lcom/google/android/exoplayer2/i2;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 59
    :cond_1c
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/h1;->H:Z

    if-nez v15, :cond_21

    .line 60
    iget-object v4, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v4, v4, Lcom/google/android/exoplayer2/i2;->e:I

    if-ne v4, v6, :cond_1d

    goto :goto_11

    :cond_1d
    if-nez v3, :cond_1f

    const/4 v3, 0x2

    if-ne v4, v3, :cond_1e

    goto :goto_f

    :cond_1e
    if-ne v4, v5, :cond_20

    .line 61
    iget v3, v0, Lcom/google/android/exoplayer2/h1;->J:I

    if-eqz v3, :cond_20

    const-wide/16 v3, 0x3e8

    .line 62
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/h1;->y0(JJ)V

    goto :goto_10

    :cond_1f
    :goto_f
    const-wide/16 v3, 0xa

    .line 63
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/h1;->y0(JJ)V

    .line 64
    :cond_20
    :goto_10
    invoke-static {}, Lcom/google/android/exoplayer2/util/j0;->c()V

    :cond_21
    :goto_11
    return-void

    .line 65
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    :goto_12
    return-void
.end method

.method private n0()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_5

    .line 4
    aget-object v8, v5, v3

    .line 5
    invoke-static {v8}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-interface {v8}, Lcom/google/android/exoplayer2/u2;->t()Lv2/i0;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 7
    :goto_1
    invoke-virtual {v1, v3}, Lh3/c0;->c(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/u2;->n()Z

    move-result v5

    if-nez v5, :cond_3

    .line 9
    iget-object v5, v1, Lh3/c0;->c:[Lh3/s;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/h1;->w(Lh3/s;)[Lcom/google/android/exoplayer2/k1;

    move-result-object v9

    .line 10
    iget-object v5, v0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    aget-object v10, v5, v3

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->m()J

    move-result-wide v11

    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->l()J

    move-result-wide v13

    .line 13
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/u2;->h([Lcom/google/android/exoplayer2/k1;Lv2/i0;JJ)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-interface {v8}, Lcom/google/android/exoplayer2/u2;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/h1;->m(Lcom/google/android/exoplayer2/u2;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 v0, v4, 0x1

    return v0
.end method

.method private n1(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v1

    iget-object v1, v1, Lh3/c0;->c:[Lh3/s;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v4, p1}, Lh3/s;->d(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private o(IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    aget-object v1, v1, p1

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 5
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v3

    .line 6
    iget-object v6, v3, Lh3/c0;->b:[Lcom/google/android/exoplayer2/x2;

    aget-object v6, v6, p1

    .line 7
    iget-object v3, v3, Lh3/c0;->c:[Lh3/s;

    aget-object v3, v3, p1

    .line 8
    invoke-static {v3}, Lcom/google/android/exoplayer2/h1;->w(Lh3/s;)[Lcom/google/android/exoplayer2/k1;

    move-result-object v7

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->b1()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v3, v3, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-eqz v14, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 10
    :goto_2
    iget v3, v0, Lcom/google/android/exoplayer2/h1;->J:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/h1;->J:I

    .line 11
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1;->b:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v3, v2, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/h1;->L:J

    .line 13
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/y1;->m()J

    move-result-wide v12

    .line 14
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/y1;->l()J

    move-result-wide v15

    move-object v2, v1

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    .line 15
    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/u2;->l(Lcom/google/android/exoplayer2/x2;[Lcom/google/android/exoplayer2/k1;Lv2/i0;JZZJJ)V

    const/16 v2, 0xb

    .line 16
    new-instance v3, Lcom/google/android/exoplayer2/h1$a;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/h1$a;-><init>(Lcom/google/android/exoplayer2/h1;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/p2$b;->k(ILjava/lang/Object;)V

    .line 17
    iget-object v2, v0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/l;->c(Lcom/google/android/exoplayer2/u2;)V

    if-eqz v14, :cond_4

    .line 18
    invoke-interface {v1}, Lcom/google/android/exoplayer2/u2;->start()V

    :cond_4
    return-void
.end method

.method private o0()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/k2;->a:F

    .line 2
    iget-object v1, v10, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    .line 3
    iget-object v2, v10, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_b

    .line 4
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/y1;->d:Z

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    iget-object v4, v10, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v4, v4, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/y1;->v(FLcom/google/android/exoplayer2/i3;)Lh3/c0;

    move-result-object v13

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v4

    invoke-virtual {v13, v4}, Lh3/c0;->a(Lh3/c0;)Z

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_9

    const/4 v8, 0x4

    if-eqz v3, :cond_6

    .line 7
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v6

    .line 8
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/b2;->z(Lcom/google/android/exoplayer2/y1;)Z

    move-result v16

    .line 9
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v0, v0

    new-array v7, v0, [Z

    .line 10
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/i2;->r:J

    move-object v12, v6

    move-object/from16 v17, v7

    .line 11
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer2/y1;->b(Lh3/c0;JZ[Z)J

    move-result-wide v12

    .line 12
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v1, v0, Lcom/google/android/exoplayer2/i2;->e:I

    if-eq v1, v8, :cond_1

    iget-wide v0, v0, Lcom/google/android/exoplayer2/i2;->r:J

    cmp-long v2, v12, v0

    if-eqz v2, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 13
    :goto_1
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/i2;->c:J

    iget-wide v2, v0, Lcom/google/android/exoplayer2/i2;->d:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object v11, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v16

    move v8, v14

    move v9, v15

    .line 14
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/h1;->K(Lv2/q$b;JJJZI)Lcom/google/android/exoplayer2/i2;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    if-eqz v14, :cond_2

    .line 15
    invoke-direct {v10, v12, v13}, Lcom/google/android/exoplayer2/h1;->r0(J)V

    .line 16
    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v9, 0x0

    .line 17
    :goto_2
    iget-object v1, v10, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v2, v1

    if-ge v9, v2, :cond_5

    .line 18
    aget-object v1, v1, v9

    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v2

    aput-boolean v2, v0, v9

    .line 20
    iget-object v2, v11, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    aget-object v2, v2, v9

    .line 21
    aget-boolean v3, v0, v9

    if-eqz v3, :cond_4

    .line 22
    invoke-interface {v1}, Lcom/google/android/exoplayer2/u2;->t()Lv2/i0;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 23
    invoke-direct {v10, v1}, Lcom/google/android/exoplayer2/h1;->m(Lcom/google/android/exoplayer2/u2;)V

    goto :goto_3

    .line 24
    :cond_3
    aget-boolean v2, v18, v9

    if-eqz v2, :cond_4

    .line 25
    iget-wide v2, v10, Lcom/google/android/exoplayer2/h1;->L:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/u2;->v(J)V

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 26
    :cond_5
    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/h1;->r([Z)V

    goto :goto_4

    .line 27
    :cond_6
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2;->z(Lcom/google/android/exoplayer2/y1;)Z

    .line 28
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/y1;->d:Z

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/z1;->b:J

    iget-wide v4, v10, Lcom/google/android/exoplayer2/h1;->L:J

    .line 30
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/y1;->y(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 31
    invoke-virtual {v1, v13, v2, v3, v4}, Lcom/google/android/exoplayer2/y1;->a(Lh3/c0;JZ)J

    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 32
    invoke-direct {v10, v5}, Lcom/google/android/exoplayer2/h1;->F(Z)V

    .line 33
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget v0, v0, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->U()V

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/h1;->l1()V

    .line 36
    iget-object v0, v10, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    :cond_8
    return-void

    :cond_9
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_a

    const/4 v3, 0x0

    .line 37
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    :goto_5
    return-void
.end method

.method private declared-synchronized o1(Lcom/google/common/base/w;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/w<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->q:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/d;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_0

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->q:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/d;->e()V

    .line 4
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x1

    const/4 v2, 0x1

    .line 5
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/h1;->q:Lcom/google/android/exoplayer2/util/d;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/util/d;->b()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private p()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h1;->r([Z)V

    return-void
.end method

.method private p0(ZZZZ)V
    .locals 28

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/n;->k(I)V

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Lcom/google/android/exoplayer2/h1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/h1;->C:Z

    .line 4
    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->h()V

    const-wide v4, 0xe8d4a51000L

    .line 5
    iput-wide v4, v1, Lcom/google/android/exoplayer2/h1;->L:J

    .line 6
    iget-object v4, v1, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_0

    aget-object v0, v4, v6

    .line 7
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/h1;->m(Lcom/google/android/exoplayer2/u2;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    .line 8
    invoke-static {v7, v8, v0}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 9
    iget-object v4, v1, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    .line 10
    iget-object v8, v1, Lcom/google/android/exoplayer2/h1;->b:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 11
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/u2;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 12
    invoke-static {v7, v0, v8}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 13
    :cond_2
    iput v3, v1, Lcom/google/android/exoplayer2/h1;->J:I

    .line 14
    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v4, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    .line 15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/i2;->r:J

    .line 16
    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    invoke-virtual {v0}, Lv2/o;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v7, v1, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/h1;->R(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i3$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    .line 17
    :cond_3
    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/i2;->r:J

    goto :goto_6

    .line 18
    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/i2;->c:J

    :goto_6
    if-eqz p2, :cond_5

    .line 19
    iput-object v2, v1, Lcom/google/android/exoplayer2/h1;->K:Lcom/google/android/exoplayer2/h1$h;

    .line 20
    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    .line 21
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/h1;->z(Lcom/google/android/exoplayer2/i3;)Landroid/util/Pair;

    move-result-object v0

    .line 22
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lv2/q$b;

    .line 23
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    invoke-virtual {v4, v0}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    goto :goto_7

    :cond_5
    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    const/4 v0, 0x0

    .line 25
    :goto_7
    iget-object v4, v1, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/b2;->f()V

    .line 26
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/h1;->D:Z

    .line 27
    new-instance v3, Lcom/google/android/exoplayer2/i2;

    iget-object v4, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v5, v4, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget v11, v4, Lcom/google/android/exoplayer2/i2;->e:I

    if-eqz p4, :cond_6

    goto :goto_8

    .line 28
    :cond_6
    iget-object v2, v4, Lcom/google/android/exoplayer2/i2;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    :goto_8
    move-object v12, v2

    const/4 v13, 0x0

    if-eqz v0, :cond_7

    .line 29
    sget-object v2, Lv2/q0;->d:Lv2/q0;

    goto :goto_9

    :cond_7
    iget-object v2, v4, Lcom/google/android/exoplayer2/i2;->h:Lv2/q0;

    :goto_9
    move-object v14, v2

    if-eqz v0, :cond_8

    .line 30
    iget-object v2, v1, Lcom/google/android/exoplayer2/h1;->e:Lh3/c0;

    goto :goto_a

    :cond_8
    iget-object v2, v4, Lcom/google/android/exoplayer2/i2;->i:Lh3/c0;

    :goto_a
    move-object v15, v2

    if-eqz v0, :cond_9

    .line 31
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, v4, Lcom/google/android/exoplayer2/i2;->j:Ljava/util/List;

    :goto_b
    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/i2;->l:Z

    move/from16 v18, v2

    iget v2, v0, Lcom/google/android/exoplayer2/i2;->m:I

    move/from16 v19, v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->n:Lcom/google/android/exoplayer2/k2;

    move-object/from16 v20, v0

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    move-object v4, v3

    move-object/from16 v6, v17

    move-wide/from16 v9, v25

    move-wide/from16 v21, v25

    invoke-direct/range {v4 .. v27}, Lcom/google/android/exoplayer2/i2;-><init>(Lcom/google/android/exoplayer2/i3;Lv2/q$b;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLv2/q0;Lh3/c0;Ljava/util/List;Lv2/q$b;ZILcom/google/android/exoplayer2/k2;JJJZ)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    if-eqz p3, :cond_a

    .line 32
    iget-object v0, v1, Lcom/google/android/exoplayer2/h1;->t:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->y()V

    :cond_a
    return-void
.end method

.method private q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z1;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->B:Z

    return-void
.end method

.method private r([Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->o()Lh3/c0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 4
    invoke-virtual {v1, v3}, Lh3/c0;->c(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/h1;->b:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/u2;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 7
    invoke-virtual {v1, v2}, Lh3/c0;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/h1;->o(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/y1;->g:Z

    return-void
.end method

.method private r0(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->p()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    add-long/2addr p1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/y1;->z(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/h1;->L:J

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->o:Lcom/google/android/exoplayer2/l;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/l;->e(J)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/h1;->L:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/u2;->v(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->d0()V

    return-void
.end method

.method private s(Lcom/google/android/exoplayer2/u2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/u2;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/u2;->stop()V

    :cond_0
    return-void
.end method

.method private static s0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/h1$d;Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/h1$d;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/i3$d;->p:I

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i3$b;->b:Ljava/lang/Object;

    .line 4
    iget-wide v0, p3, Lcom/google/android/exoplayer2/i3$b;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 5
    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/h1$d;->b(IJLjava/lang/Object;)V

    return-void
.end method

.method private static t0(Lcom/google/android/exoplayer2/h1$d;Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;IZLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/h1$d;->d:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_3

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p2;->f()J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-nez v3, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p2;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/l0;->w0(J)J

    move-result-wide v1

    .line 4
    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/h1$h;

    iget-object v4, v0, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/p2;->h()Lcom/google/android/exoplayer2/i3;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/p2;->d()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/h1$h;-><init>(Lcom/google/android/exoplayer2/i3;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 7
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/h1;->w0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/h1$h;ZIZLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return v11

    .line 8
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 9
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/h1$d;->b(IJLjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p2;->f()J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-nez v3, :cond_2

    .line 13
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/h1;->s0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/h1$d;Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)V

    :cond_2
    return v12

    .line 14
    :cond_3
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v11

    .line 15
    :cond_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/p2;->f()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-nez v5, :cond_5

    .line 16
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/h1;->s0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/h1$d;Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)V

    return v12

    .line 17
    :cond_5
    iput v2, v0, Lcom/google/android/exoplayer2/h1$d;->b:I

    .line 18
    iget-object v2, v0, Lcom/google/android/exoplayer2/h1$d;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 19
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/i3$b;->f:Z

    if-eqz v2, :cond_6

    iget v2, v10, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 20
    invoke-virtual {v1, v2, v9}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/i3$d;->o:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/h1$d;->d:Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 22
    iget-wide v1, v0, Lcom/google/android/exoplayer2/h1$d;->c:J

    .line 23
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/i3$b;->q()J

    move-result-wide v3

    add-long v5, v1, v3

    .line 24
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1$d;->d:Ljava/lang/Object;

    .line 25
    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/i3$b;->c:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/i3;->n(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 27
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 29
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/h1$d;->b(IJLjava/lang/Object;)V

    :cond_6
    return v12
.end method

.method private u([Lh3/s;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lh3/s;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableList$b;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$b;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p1, v3

    if-eqz v5, :cond_1

    .line 3
    invoke-interface {v5, v2}, Lh3/v;->b(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v5

    .line 4
    iget-object v5, v5, Lcom/google/android/exoplayer2/k1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v5, :cond_0

    .line 5
    new-instance v5, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v6, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    const/4 v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private u0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/h1$d;

    iget v5, p0, Lcom/google/android/exoplayer2/h1;->E:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/h1;->F:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-object v8, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    move-object v3, p1

    move-object v4, p2

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/h1;->t0(Lcom/google/android/exoplayer2/h1$d;Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;IZLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/h1$d;

    iget-object v1, v1, Lcom/google/android/exoplayer2/h1$d;->a:Lcom/google/android/exoplayer2/p2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p2;->k(Z)V

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private v()J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v2, v0, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget-object v2, v2, Lv2/o;->a:Ljava/lang/Object;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/i2;->r:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/h1;->x(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static v0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/h1$h;Lcom/google/android/exoplayer2/b2;IZLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/h1$g;
    .locals 30
    .param p2    # Lcom/google/android/exoplayer2/h1$h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/h1$g;

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/i2;->k()Lv2/q$b;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/h1$g;-><init>(Lv2/q$b;JJZZZ)V

    return-object v0

    .line 4
    :cond_0
    iget-object v14, v8, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    .line 5
    iget-object v12, v14, Lv2/o;->a:Ljava/lang/Object;

    .line 6
    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/h1;->R(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/i3$b;)Z

    move-result v13

    .line 7
    iget-object v0, v8, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    invoke-virtual {v0}, Lv2/o;->b()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v13, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-wide v0, v8, Lcom/google/android/exoplayer2/i2;->r:J

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-wide v0, v8, Lcom/google/android/exoplayer2/i2;->c:J

    :goto_1
    move-wide v15, v0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v21, v14

    const/4 v14, -0x1

    move-object/from16 v6, p7

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/h1;->w0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/h1$h;ZIZLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result v0

    move v6, v0

    move-wide v0, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_4

    .line 12
    :cond_3
    iget-wide v1, v9, Lcom/google/android/exoplayer2/h1$h;->c:J

    cmp-long v3, v1, v17

    if-nez v3, :cond_4

    .line 13
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v6, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    move-wide v0, v15

    const/4 v2, 0x0

    goto :goto_2

    .line 15
    :cond_4
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 17
    :goto_2
    iget v3, v8, Lcom/google/android/exoplayer2/i2;->e:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v9, p6

    move/from16 v29, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move v3, v6

    move-object/from16 v6, v21

    goto/16 :goto_a

    :cond_6
    move-object/from16 v21, v14

    const/4 v14, -0x1

    .line 18
    iget-object v0, v8, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result v0

    :goto_5
    move-object/from16 v9, p6

    move v3, v0

    move-wide v0, v15

    move-object/from16 v6, v21

    :goto_6
    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_7
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 20
    :cond_7
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v14, :cond_9

    .line 21
    iget-object v5, v8, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v6, p0

    .line 22
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/h1;->x0(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 23
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result v0

    const/4 v4, 0x1

    goto :goto_8

    .line 24
    :cond_8
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    const/4 v4, 0x0

    :goto_8
    move-object/from16 v9, p6

    move v3, v0

    move/from16 v28, v4

    move-wide v0, v15

    move-object/from16 v6, v21

    const/16 v27, 0x0

    goto :goto_7

    :cond_9
    cmp-long v0, v15, v17

    if-nez v0, :cond_a

    .line 25
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    goto :goto_5

    :cond_a
    if-eqz v13, :cond_c

    .line 26
    iget-object v0, v8, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    move-object/from16 v6, v21

    iget-object v1, v6, Lv2/o;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 27
    iget-object v0, v8, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget v1, v11, Lcom/google/android/exoplayer2/i3$b;->c:I

    move-object/from16 v9, p6

    invoke-virtual {v0, v1, v9}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$d;->o:I

    iget-object v1, v8, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v2, v6, Lv2/o;->a:Ljava/lang/Object;

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 29
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/i3$b;->q()J

    move-result-wide v0

    add-long v4, v15, v0

    .line 30
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/i3;->n(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 32
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 33
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v12, v1

    move-wide v0, v2

    goto :goto_9

    :cond_b
    move-wide v0, v15

    :goto_9
    const/4 v3, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    goto :goto_a

    :cond_c
    move-object/from16 v9, p6

    move-object/from16 v6, v21

    move-wide v0, v15

    const/4 v3, -0x1

    goto/16 :goto_6

    :goto_a
    if-eq v3, v14, :cond_d

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/i3;->n(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 35
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v2, p3

    move-wide/from16 v25, v17

    goto :goto_b

    :cond_d
    move-object/from16 v2, p3

    move-wide/from16 v25, v0

    .line 37
    :goto_b
    invoke-virtual {v2, v7, v12, v0, v1}, Lcom/google/android/exoplayer2/b2;->B(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;J)Lv2/q$b;

    move-result-object v2

    .line 38
    iget v3, v2, Lv2/o;->e:I

    if-eq v3, v14, :cond_f

    iget v4, v6, Lv2/o;->e:I

    if-eq v4, v14, :cond_e

    if-lt v3, v4, :cond_e

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v3, 0x1

    .line 39
    :goto_d
    iget-object v4, v6, Lv2/o;->a:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 40
    invoke-virtual {v6}, Lv2/o;->b()Z

    move-result v4

    if-nez v4, :cond_10

    .line 41
    invoke-virtual {v2}, Lv2/o;->b()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    goto :goto_e

    :cond_10
    const/16 v20, 0x0

    .line 42
    :goto_e
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v17

    move v12, v13

    move-object v13, v6

    move-object v3, v6

    move-wide v14, v15

    move-object/from16 v16, v2

    move-wide/from16 v18, v25

    .line 43
    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/h1;->N(ZLv2/q$b;JLv2/q$b;Lcom/google/android/exoplayer2/i3$b;J)Z

    move-result v4

    if-nez v20, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    move-object v2, v3

    .line 44
    :cond_12
    invoke-virtual {v2}, Lv2/o;->b()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 45
    invoke-virtual {v2, v3}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 46
    iget-wide v0, v8, Lcom/google/android/exoplayer2/i2;->r:J

    goto :goto_f

    .line 47
    :cond_13
    iget-object v0, v2, Lv2/o;->a:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 48
    iget v0, v2, Lv2/o;->c:I

    iget v1, v2, Lv2/o;->b:I

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/i3$b;->n(I)I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 49
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/i3$b;->j()J

    move-result-wide v0

    goto :goto_f

    :cond_14
    const-wide/16 v0, 0x0

    :cond_15
    :goto_f
    move-wide/from16 v23, v0

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/h1$g;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v29}, Lcom/google/android/exoplayer2/h1$g;-><init>(Lv2/q$b;JJZZZ)V

    return-object v0
.end method

.method private static w(Lh3/s;)[Lcom/google/android/exoplayer2/k1;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lh3/v;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/k1;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p0, v0}, Lh3/v;->b(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private static w0(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/h1$h;ZIZLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Landroid/util/Pair;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/i3;",
            "Lcom/google/android/exoplayer2/h1$h;",
            "ZIZ",
            "Lcom/google/android/exoplayer2/i3$d;",
            "Lcom/google/android/exoplayer2/i3$b;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/h1$h;->a:Lcom/google/android/exoplayer2/i3;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 4
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/exoplayer2/h1$h;->b:I

    iget-wide v5, v0, Lcom/google/android/exoplayer2/h1$h;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/i3;->n(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/i3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 7
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/i3$b;->f:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/google/android/exoplayer2/i3$b;->c:I

    move-object/from16 v11, p5

    .line 9
    invoke-virtual {v10, v2, v11}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/i3$d;->o:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 11
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 12
    iget-wide v4, v0, Lcom/google/android/exoplayer2/h1$h;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/i3;->n(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    .line 14
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/h1;->x0(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/i3;->n(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private x(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/i3$d;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3$d;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/i3$d;->i:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3$d;->c()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/i3$d;->f:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/l0;->w0(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3$b;->q()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method static x0(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/i3;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p5, p4}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result p4

    .line 2
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/i3;->m()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 3
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/i3;->h(ILcom/google/android/exoplayer2/i3$b;Lcom/google/android/exoplayer2/i3$d;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/exoplayer2/i3;->q(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/i3;->q(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private y()J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->l()J

    move-result-wide v1

    .line 3
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/y1;->d:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 5
    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/h1;->P(Lcom/google/android/exoplayer2/u2;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    aget-object v4, v4, v3

    .line 6
    invoke-interface {v4}, Lcom/google/android/exoplayer2/u2;->t()Lv2/i0;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/h1;->a:[Lcom/google/android/exoplayer2/u2;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/u2;->u()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    .line 8
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method private y0(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    add-long/2addr p1, p3

    const/4 p3, 0x2

    invoke-interface {v0, p3, p1, p2}, Lcom/google/android/exoplayer2/util/n;->j(IJ)Z

    return-void
.end method

.method private z(Lcom/google/android/exoplayer2/i3;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/i3;",
            ")",
            "Landroid/util/Pair<",
            "Lv2/q$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/exoplayer2/i2;->k()Lv2/q$b;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->F:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/i3;->e(Z)I

    move-result v6

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/h1;->k:Lcom/google/android/exoplayer2/i3$d;

    iget-object v5, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 5
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/i3;->n(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplayer2/b2;->B(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;J)Lv2/q$b;

    move-result-object v3

    .line 8
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 9
    invoke-virtual {v3}, Lv2/o;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v3, Lv2/o;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 11
    iget p1, v3, Lv2/o;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    iget v4, v3, Lv2/o;->b:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/i3$b;->n(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->l:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3$b;->j()J

    move-result-wide v1

    :cond_1
    move-wide v4, v1

    .line 13
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->j:Landroid/os/Looper;

    return-object v0
.end method

.method public L0(Ljava/util/List;IJLv2/k0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/e2$c;",
            ">;IJ",
            "Lv2/k0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    new-instance v8, Lcom/google/android/exoplayer2/h1$b;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/h1$b;-><init>(Ljava/util/List;Lv2/k0;IJLcom/google/android/exoplayer2/h1$a;)V

    const/16 p1, 0x11

    .line 2
    invoke-interface {v0, p1, v8}, Lcom/google/android/exoplayer2/util/n;->e(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public O0(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/n;->g(III)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public Q0(Lcom/google/android/exoplayer2/k2;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->e(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public S0(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/n;->g(III)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public V0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/n;->g(III)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public bridge synthetic a(Lv2/j0;)V
    .locals 0

    check-cast p1, Lv2/n;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/h1;->g0(Lv2/n;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    return-void
.end method

.method public d(Lv2/n;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->e(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public declared-synchronized e(Lcom/google/android/exoplayer2/p2;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->e(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p2;->k(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f1()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->a(I)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public g0(Lv2/n;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->e(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public h0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->a(I)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v3

    .line 2
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->k()V

    goto/16 :goto_6

    .line 3
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->M0(Z)V

    goto/16 :goto_6

    .line 4
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->N0(Z)V

    goto/16 :goto_6

    .line 5
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->b0()V

    goto/16 :goto_6

    .line 6
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv2/k0;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->X0(Lv2/k0;)V

    goto/16 :goto_6

    .line 7
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv2/k0;

    invoke-direct {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/h1;->l0(IILv2/k0;)V

    goto/16 :goto_6

    .line 8
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/h1$c;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->c0(Lcom/google/android/exoplayer2/h1$c;)V

    goto/16 :goto_6

    .line 9
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/h1$b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/h1;->j(Lcom/google/android/exoplayer2/h1$b;I)V

    goto/16 :goto_6

    .line 10
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/h1$b;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->K0(Lcom/google/android/exoplayer2/h1$b;)V

    goto/16 :goto_6

    .line 11
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/k2;

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/h1;->J(Lcom/google/android/exoplayer2/k2;Z)V

    goto/16 :goto_6

    .line 12
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/p2;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->G0(Lcom/google/android/exoplayer2/p2;)V

    goto/16 :goto_6

    .line 13
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/p2;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->E0(Lcom/google/android/exoplayer2/p2;)V

    goto/16 :goto_6

    .line 14
    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/h1;->J0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_6

    .line 15
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->W0(Z)V

    goto/16 :goto_6

    .line 16
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->T0(I)V

    goto/16 :goto_6

    .line 17
    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->o0()V

    goto/16 :goto_6

    .line 18
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv2/n;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->D(Lv2/n;)V

    goto/16 :goto_6

    .line 19
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv2/n;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->H(Lv2/n;)V

    goto/16 :goto_6

    .line 20
    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->k0()V

    return v4

    .line 21
    :pswitch_13
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/h1;->g1(ZZ)V

    goto/16 :goto_6

    .line 22
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/z2;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->U0(Lcom/google/android/exoplayer2/z2;)V

    goto/16 :goto_6

    .line 23
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/k2;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->R0(Lcom/google/android/exoplayer2/k2;)V

    goto/16 :goto_6

    .line 24
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/h1$h;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/h1;->B0(Lcom/google/android/exoplayer2/h1$h;)V

    goto/16 :goto_6

    .line 25
    :pswitch_17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->n()V

    goto/16 :goto_6

    .line 26
    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, p1, v4, v4}, Lcom/google/android/exoplayer2/h1;->P0(ZIZI)V

    goto/16 :goto_6

    .line 27
    :pswitch_19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->i0()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/exoplayer2/upstream/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    .line 28
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_5

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_6

    :cond_5
    const/16 v2, 0x3ec

    .line 29
    :cond_6
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 30
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/h1;->g1(ZZ)V

    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/i2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/i2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    goto/16 :goto_6

    :catch_1
    move-exception p1

    const/16 v0, 0x7d0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h1;->E(Ljava/io/IOException;I)V

    goto/16 :goto_6

    :catch_2
    move-exception p1

    const/16 v0, 0x3ea

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h1;->E(Ljava/io/IOException;I)V

    goto/16 :goto_6

    :catch_3
    move-exception p1

    .line 35
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h1;->E(Ljava/io/IOException;I)V

    goto/16 :goto_6

    :catch_4
    move-exception p1

    .line 36
    iget v0, p1, Lcom/google/android/exoplayer2/ParserException;->dataType:I

    if-ne v0, v4, :cond_8

    .line 37
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xbb9

    const/16 v2, 0xbb9

    goto :goto_5

    :cond_7
    const/16 v0, 0xbbb

    const/16 v2, 0xbbb

    goto :goto_5

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 38
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xbba

    const/16 v2, 0xbba

    goto :goto_5

    :cond_9
    const/16 v0, 0xbbc

    const/16 v2, 0xbbc

    .line 39
    :cond_a
    :goto_5
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/h1;->E(Ljava/io/IOException;I)V

    goto :goto_6

    :catch_5
    move-exception p1

    .line 40
    iget v0, p1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h1;->E(Ljava/io/IOException;I)V

    goto :goto_6

    :catch_6
    move-exception p1

    .line 41
    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v2, v4, :cond_b

    .line 42
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->s:Lcom/google/android/exoplayer2/b2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->q()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 43
    iget-object v2, v2, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lv2/o;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 44
    :cond_b
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v2, :cond_c

    const-string v0, "Recoverable renderer error"

    .line 45
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/r;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/h1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0x19

    .line 48
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->e(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    .line 49
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/n;->b(Lcom/google/android/exoplayer2/util/n$a;)Z

    goto :goto_6

    .line 50
    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/h1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v2, :cond_d

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    iget-object p1, p0, Lcom/google/android/exoplayer2/h1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 53
    :cond_d
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/h1;->g1(ZZ)V

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/i2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/i2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/h1;->x:Lcom/google/android/exoplayer2/i2;

    .line 56
    :goto_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/h1;->V()V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized j0()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->i(I)Z

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/f1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/f1;-><init>(Lcom/google/android/exoplayer2/h1;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/h1;->v:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/h1;->o1(Lcom/google/common/base/w;J)V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/h1;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m0(IILv2/k0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0x14

    .line 2
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/n;->d(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public q(Lcom/google/android/exoplayer2/k2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    const/16 v1, 0x10

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->e(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method

.method public t(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/h1;->P:J

    return-void
.end method

.method public z0(Lcom/google/android/exoplayer2/i3;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h1;->h:Lcom/google/android/exoplayer2/util/n;

    new-instance v1, Lcom/google/android/exoplayer2/h1$h;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/h1$h;-><init>(Lcom/google/android/exoplayer2/i3;IJ)V

    const/4 p1, 0x3

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/util/n;->e(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/n$a;->a()V

    return-void
.end method
