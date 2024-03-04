.class public final Lv2/l0;
.super Lcom/google/android/exoplayer2/i3;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/Object;

.field private static final q:Lcom/google/android/exoplayer2/s1;


# instance fields
.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final n:Lcom/google/android/exoplayer2/s1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final o:Lcom/google/android/exoplayer2/s1$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv2/l0;->p:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/s1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s1$c;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s1$c;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/s1$c;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s1$c;->e(Landroid/net/Uri;)Lcom/google/android/exoplayer2/s1$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s1$c;->a()Lcom/google/android/exoplayer2/s1;

    move-result-object v0

    sput-object v0, Lv2/l0;->q:Lcom/google/android/exoplayer2/s1;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/s1;Lcom/google/android/exoplayer2/s1$g;)V
    .locals 3
    .param p18    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/google/android/exoplayer2/s1$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i3;-><init>()V

    move-wide v1, p1

    .line 5
    iput-wide v1, v0, Lv2/l0;->c:J

    move-wide v1, p3

    .line 6
    iput-wide v1, v0, Lv2/l0;->d:J

    move-wide v1, p5

    .line 7
    iput-wide v1, v0, Lv2/l0;->e:J

    move-wide v1, p7

    .line 8
    iput-wide v1, v0, Lv2/l0;->f:J

    move-wide v1, p9

    .line 9
    iput-wide v1, v0, Lv2/l0;->g:J

    move-wide v1, p11

    .line 10
    iput-wide v1, v0, Lv2/l0;->h:J

    move-wide/from16 v1, p13

    .line 11
    iput-wide v1, v0, Lv2/l0;->i:J

    move/from16 v1, p15

    .line 12
    iput-boolean v1, v0, Lv2/l0;->j:Z

    move/from16 v1, p16

    .line 13
    iput-boolean v1, v0, Lv2/l0;->k:Z

    move/from16 v1, p17

    .line 14
    iput-boolean v1, v0, Lv2/l0;->l:Z

    move-object/from16 v1, p18

    .line 15
    iput-object v1, v0, Lv2/l0;->m:Ljava/lang/Object;

    .line 16
    invoke-static/range {p19 .. p19}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/s1;

    iput-object v1, v0, Lv2/l0;->n:Lcom/google/android/exoplayer2/s1;

    move-object/from16 v1, p20

    .line 17
    iput-object v1, v0, Lv2/l0;->o:Lcom/google/android/exoplayer2/s1$g;

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/s1;)V
    .locals 21
    .param p12    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v15, p13

    if-eqz p11, :cond_0

    .line 2
    iget-object v0, v15, Lcom/google/android/exoplayer2/s1;->d:Lcom/google/android/exoplayer2/s1$g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v20, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    .line 3
    invoke-direct/range {v0 .. v20}, Lv2/l0;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/s1;Lcom/google/android/exoplayer2/s1$g;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/s1;)V
    .locals 14
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 1
    invoke-direct/range {v0 .. v13}, Lv2/l0;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/s1;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lv2/l0;->p:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    if-eqz p3, :cond_0

    .line 2
    sget-object p1, Lv2/l0;->p:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    iget-wide v4, p0, Lv2/l0;->f:J

    iget-wide v6, p0, Lv2/l0;->h:J

    neg-long v6, v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/i3$b;->v(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p1

    return-object p1
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    .line 2
    sget-object p1, Lv2/l0;->p:Ljava/lang/Object;

    return-object p1
.end method

.method public s(ILcom/google/android/exoplayer2/i3$d;J)Lcom/google/android/exoplayer2/i3$d;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 1
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    .line 2
    iget-wide v1, v0, Lv2/l0;->i:J

    .line 3
    iget-boolean v14, v0, Lv2/l0;->k:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v14, :cond_1

    iget-boolean v5, v0, Lv2/l0;->l:Z

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v7, p3, v5

    if-eqz v7, :cond_1

    .line 4
    iget-wide v5, v0, Lv2/l0;->g:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    :goto_0
    move-wide/from16 v16, v3

    goto :goto_1

    :cond_0
    add-long v1, v1, p3

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v1

    .line 5
    :goto_1
    sget-object v4, Lcom/google/android/exoplayer2/i3$d;->r:Ljava/lang/Object;

    iget-object v5, v0, Lv2/l0;->n:Lcom/google/android/exoplayer2/s1;

    iget-object v6, v0, Lv2/l0;->m:Ljava/lang/Object;

    iget-wide v7, v0, Lv2/l0;->c:J

    iget-wide v9, v0, Lv2/l0;->d:J

    iget-wide v11, v0, Lv2/l0;->e:J

    iget-boolean v13, v0, Lv2/l0;->j:Z

    iget-object v15, v0, Lv2/l0;->o:Lcom/google/android/exoplayer2/s1$g;

    iget-wide v1, v0, Lv2/l0;->g:J

    move-wide/from16 v18, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-wide v1, v0, Lv2/l0;->h:J

    move-wide/from16 v22, v1

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v23}, Lcom/google/android/exoplayer2/i3$d;->i(Ljava/lang/Object;Lcom/google/android/exoplayer2/s1;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/s1$g;JJIIJ)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v1

    return-object v1
.end method

.method public t()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
