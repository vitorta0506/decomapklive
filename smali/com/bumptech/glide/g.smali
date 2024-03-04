.class public Lcom/bumptech/glide/g;
.super Lcom/bumptech/glide/request/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/a<",
        "Lcom/bumptech/glide/g<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field protected static final O:Lcom/bumptech/glide/request/h;


# instance fields
.field private final A:Landroid/content/Context;

.field private final B:Lcom/bumptech/glide/h;

.field private final C:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final D:Lcom/bumptech/glide/c;

.field private final E:Lcom/bumptech/glide/e;

.field private F:Lcom/bumptech/glide/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private H:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private I:Lcom/bumptech/glide/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private J:Lcom/bumptech/glide/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private K:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private L:Z

.field private M:Z

.field private N:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/j;->c:Lcom/bumptech/glide/load/engine/j;

    .line 2
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->h(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/h;

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->e0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/h;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->n0(Z)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/h;

    sput-object v0, Lcom/bumptech/glide/g;->O:Lcom/bumptech/glide/request/h;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/g;->L:Z

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/g;->D:Lcom/bumptech/glide/c;

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/g;->B:Lcom/bumptech/glide/h;

    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/g;->C:Ljava/lang/Class;

    .line 6
    iput-object p4, p0, Lcom/bumptech/glide/g;->A:Landroid/content/Context;

    .line 7
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/h;->l(Ljava/lang/Class;)Lcom/bumptech/glide/i;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/i;

    .line 8
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->i()Lcom/bumptech/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/e;

    .line 9
    invoke-virtual {p2}, Lcom/bumptech/glide/h;->j()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->L0(Ljava/util/List;)V

    .line 10
    invoke-virtual {p2}, Lcom/bumptech/glide/h;->k()Lcom/bumptech/glide/request/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/g<",
            "*>;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p2, Lcom/bumptech/glide/g;->D:Lcom/bumptech/glide/c;

    iget-object v1, p2, Lcom/bumptech/glide/g;->B:Lcom/bumptech/glide/h;

    iget-object v2, p2, Lcom/bumptech/glide/g;->A:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V

    .line 12
    iget-object p1, p2, Lcom/bumptech/glide/g;->G:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/g;->G:Ljava/lang/Object;

    .line 13
    iget-boolean p1, p2, Lcom/bumptech/glide/g;->M:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/g;->M:Z

    .line 14
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    return-void
.end method

.method private B0(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;
    .locals 23
    .param p3    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/request/RequestCoordinator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls0/k<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 1
    iget-object v0, v11, Lcom/bumptech/glide/g;->J:Lcom/bumptech/glide/g;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/b;

    move-object/from16 v13, p1

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/bumptech/glide/request/b;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object v4, v0

    move-object v15, v4

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v15, v0

    move-object v4, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/g;->D0(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v1, v11, Lcom/bumptech/glide/g;->J:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->v()I

    move-result v1

    .line 5
    iget-object v2, v11, Lcom/bumptech/glide/g;->J:Lcom/bumptech/glide/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/a;->u()I

    move-result v2

    .line 6
    invoke-static/range {p7 .. p8}, Lv0/k;->u(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/bumptech/glide/g;->J:Lcom/bumptech/glide/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/a;->S()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->v()I

    move-result v1

    .line 8
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->u()I

    move-result v2

    :cond_2
    move/from16 v19, v1

    move/from16 v20, v2

    .line 9
    iget-object v12, v11, Lcom/bumptech/glide/g;->J:Lcom/bumptech/glide/g;

    iget-object v1, v12, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/i;

    .line 10
    invoke-virtual {v12}, Lcom/bumptech/glide/request/a;->y()Lcom/bumptech/glide/Priority;

    move-result-object v18

    iget-object v2, v11, Lcom/bumptech/glide/g;->J:Lcom/bumptech/glide/g;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v3, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v21, v2

    move-object/from16 v22, p10

    .line 11
    invoke-direct/range {v12 .. v22}, Lcom/bumptech/glide/g;->B0(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;

    move-result-object v1

    .line 12
    invoke-virtual {v3, v0, v1}, Lcom/bumptech/glide/request/b;->o(Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/e;)V

    return-object v3
.end method

.method private D0(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;
    .locals 18
    .param p4    # Lcom/bumptech/glide/request/RequestCoordinator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls0/k<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p4

    move-object/from16 v13, p6

    .line 1
    iget-object v0, v11, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/g;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v1, v11, Lcom/bumptech/glide/g;->N:Z

    if-nez v1, :cond_3

    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/i;

    .line 4
    iget-boolean v2, v0, Lcom/bumptech/glide/g;->L:Z

    if-eqz v2, :cond_0

    move-object/from16 v14, p5

    goto :goto_0

    :cond_0
    move-object v14, v1

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v11, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->y()Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {v11, v13}, Lcom/bumptech/glide/g;->K0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_1
    move-object v15, v0

    .line 8
    iget-object v0, v11, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->v()I

    move-result v0

    .line 9
    iget-object v1, v11, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->u()I

    move-result v1

    .line 10
    invoke-static/range {p7 .. p8}, Lv0/k;->u(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/g;

    .line 11
    invoke-virtual {v2}, Lcom/bumptech/glide/request/a;->S()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->v()I

    move-result v0

    .line 13
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->u()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    .line 14
    new-instance v10, Lcom/bumptech/glide/request/k;

    invoke-direct {v10, v12, v5}, Lcom/bumptech/glide/request/k;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v13, v10

    move-object/from16 v10, p10

    .line 15
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/g;->b1(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;

    move-result-object v10

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, v11, Lcom/bumptech/glide/g;->N:Z

    .line 17
    iget-object v9, v11, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/g;

    move-object v0, v9

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object v12, v10

    move-object/from16 v10, p10

    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/g;->B0(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v11, Lcom/bumptech/glide/g;->N:Z

    .line 20
    invoke-virtual {v13, v12, v0}, Lcom/bumptech/glide/request/k;->n(Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/e;)V

    return-object v13

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_4
    iget-object v0, v11, Lcom/bumptech/glide/g;->K:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 23
    new-instance v14, Lcom/bumptech/glide/request/k;

    invoke-direct {v14, v12, v5}, Lcom/bumptech/glide/request/k;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v14

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 24
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/g;->b1(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;

    move-result-object v15

    .line 25
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    iget-object v1, v11, Lcom/bumptech/glide/g;->K:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->m0(F)Lcom/bumptech/glide/request/a;

    move-result-object v4

    .line 26
    invoke-direct {v11, v13}, Lcom/bumptech/glide/g;->K0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 27
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/g;->b1(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 28
    invoke-virtual {v14, v15, v0}, Lcom/bumptech/glide/request/k;->n(Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/e;)V

    return-object v14

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 29
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/g;->b1(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    return-object v0
.end method

.method private K0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 2
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/g$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->y()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 5
    :cond_3
    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    return-object p1
.end method

.method private L0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/g<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/g;

    .line 2
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->x0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private N0(Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Ls0/k;
    .locals 1
    .param p1    # Ls0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Ls0/k<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/g;->M:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/g;->z0(Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Ls0/k;->getRequest()Lcom/bumptech/glide/request/e;

    move-result-object p4

    .line 5
    invoke-interface {p2, p4}, Lcom/bumptech/glide/request/e;->h(Lcom/bumptech/glide/request/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p3, p4}, Lcom/bumptech/glide/g;->S0(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/e;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 7
    invoke-static {p4}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/e;

    invoke-interface {p2}, Lcom/bumptech/glide/request/e;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    invoke-interface {p4}, Lcom/bumptech/glide/request/e;->i()V

    :cond_0
    return-object p1

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/g;->B:Lcom/bumptech/glide/h;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/h;->g(Ls0/k;)V

    .line 10
    invoke-interface {p1, p2}, Ls0/k;->setRequest(Lcom/bumptech/glide/request/e;)V

    .line 11
    iget-object p3, p0, Lcom/bumptech/glide/g;->B:Lcom/bumptech/glide/h;

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/h;->x(Ls0/k;Lcom/bumptech/glide/request/e;)V

    return-object p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private S0(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a<",
            "*>;",
            "Lcom/bumptech/glide/request/e;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->J()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/bumptech/glide/request/e;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a1(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g;->a1(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/g;->G:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/bumptech/glide/g;->M:Z

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    return-object p1
.end method

.method private b1(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls0/k<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/a<",
            "*>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/bumptech/glide/g;->A:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/e;

    iget-object v4, v0, Lcom/bumptech/glide/g;->G:Ljava/lang/Object;

    iget-object v5, v0, Lcom/bumptech/glide/g;->C:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/g;->H:Ljava/util/List;

    .line 2
    invoke-virtual {v2}, Lcom/bumptech/glide/e;->f()Lcom/bumptech/glide/load/engine/k;

    move-result-object v14

    .line 3
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/i;->b()Lt0/g;

    move-result-object v15

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v16, p10

    .line 4
    invoke-static/range {v1 .. v16}, Lcom/bumptech/glide/request/j;->y(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/a;IILcom/bumptech/glide/Priority;Ls0/k;Lcom/bumptech/glide/request/g;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/k;Lt0/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/j;

    move-result-object v1

    return-object v1
.end method

.method private z0(Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;
    .locals 11
    .param p2    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/k<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/e;"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/i;

    .line 2
    invoke-virtual {p3}, Lcom/bumptech/glide/request/a;->y()Lcom/bumptech/glide/Priority;

    move-result-object v6

    .line 3
    invoke-virtual {p3}, Lcom/bumptech/glide/request/a;->v()I

    move-result v7

    .line 4
    invoke-virtual {p3}, Lcom/bumptech/glide/request/a;->u()I

    move-result v8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    .line 5
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/g;->B0(Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public H0()Lcom/bumptech/glide/g;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    .line 2
    iget-object v1, v0, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/i;->a()Lcom/bumptech/glide/i;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/i;

    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/g;->H:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bumptech/glide/g;->H:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bumptech/glide/g;->H:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/g;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/g;

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/g;->J:Lcom/bumptech/glide/g;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/g;->J:Lcom/bumptech/glide/g;

    :cond_2
    return-object v0
.end method

.method public I0(II)Lcom/bumptech/glide/request/d;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/d<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/g;->J0()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/g;->e1(II)Lcom/bumptech/glide/request/d;

    move-result-object p1

    return-object p1
.end method

.method protected J0()Lcom/bumptech/glide/g;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/g;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/g;)V

    sget-object v1, Lcom/bumptech/glide/g;->O:Lcom/bumptech/glide/request/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public M0(Ls0/k;)Ls0/k;
    .locals 2
    .param p1    # Ls0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Ls0/k<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    invoke-static {}, Lv0/d;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/g;->O0(Ls0/k;Lcom/bumptech/glide/request/g;Ljava/util/concurrent/Executor;)Ls0/k;

    move-result-object p1

    return-object p1
.end method

.method O0(Ls0/k;Lcom/bumptech/glide/request/g;Ljava/util/concurrent/Executor;)Ls0/k;
    .locals 0
    .param p1    # Ls0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Ls0/k<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p0, p3}, Lcom/bumptech/glide/g;->N0(Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Ls0/k;

    move-result-object p1

    return-object p1
.end method

.method public Q0(Landroid/widget/ImageView;)Ls0/l;
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Ls0/l<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lv0/k;->b()V

    .line 2
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/bumptech/glide/g$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->V()Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->W()Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->V()Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->U()Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/g;->E:Lcom/bumptech/glide/e;

    iget-object v2, p0, Lcom/bumptech/glide/g;->C:Ljava/lang/Class;

    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Ls0/l;

    move-result-object p1

    const/4 v1, 0x0

    .line 13
    invoke-static {}, Lv0/d;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 14
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/bumptech/glide/g;->N0(Ls0/k;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/a;Ljava/util/concurrent/Executor;)Ls0/k;

    move-result-object p1

    check-cast p1, Ls0/l;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public T0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->T0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/g;->H:Ljava/util/List;

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->x0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public U0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a1(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/j;

    invoke-static {v0}, Lcom/bumptech/glide/request/h;->B0(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public V0(Landroid/net/Uri;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a1(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public W0(Ljava/io/File;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a1(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public X0(Ljava/lang/Integer;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a1(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/g;->A:Landroid/content/Context;

    invoke-static {v0}, Lu0/a;->a(Landroid/content/Context;)Le0/b;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/request/h;->D0(Le0/b;)Lcom/bumptech/glide/request/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a1(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a1(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public c1()Ls0/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls0/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/g;->d1(II)Ls0/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public d1(II)Ls0/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ls0/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->B:Lcom/bumptech/glide/h;

    invoke-static {v0, p1, p2}, Ls0/h;->b(Lcom/bumptech/glide/h;II)Ls0/h;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    move-result-object p1

    return-object p1
.end method

.method public e1(II)Lcom/bumptech/glide/request/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/f;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/f;-><init>(II)V

    .line 2
    invoke-static {}, Lv0/d;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1}, Lcom/bumptech/glide/g;->O0(Ls0/k;Lcom/bumptech/glide/request/g;Ljava/util/concurrent/Executor;)Ls0/k;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/d;

    return-object p1
.end method

.method public bridge synthetic f()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public g1(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1    # Lcom/bumptech/glide/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->g1(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/g;

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    return-object p1
.end method

.method public h1(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1    # Lcom/bumptech/glide/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->h1(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/i;

    iput-object p1, p0, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/i;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/bumptech/glide/g;->L:Z

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    return-object p1
.end method

.method public x0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->x0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/g;->H:Ljava/util/List;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->H:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/g;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->j0()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    return-object p1
.end method

.method public y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a<",
            "*>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->a(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    return-object p1
.end method
