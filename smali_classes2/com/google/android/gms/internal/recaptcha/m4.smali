.class public final Lcom/google/android/gms/internal/recaptcha/m4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/recaptcha/h4<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/recaptcha/j4<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/android/gms/internal/recaptcha/p2;

.field private final e:Lcom/google/android/gms/internal/recaptcha/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/dc<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/p5;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/recaptcha/t5;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/p2;Lcom/google/android/gms/internal/recaptcha/t5;Ljava/util/Map;Lcom/google/android/gms/internal/recaptcha/w5;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/recaptcha/p2;",
            "Lcom/google/android/gms/internal/recaptcha/t5;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/p5;",
            ">;",
            "Lcom/google/android/gms/internal/recaptcha/w5;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    .line 1
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/recaptcha/m4;->a:Ljava/util/Map;

    new-instance p5, Ljava/util/HashMap;

    .line 2
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/recaptcha/m4;->b:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/m4;->c:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/m4;->d:Lcom/google/android/gms/internal/recaptcha/p2;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/m4;->g:Lcom/google/android/gms/internal/recaptcha/t5;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/m4;->f:Ljava/util/Map;

    .line 7
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/z7;->e(Z)V

    sget-object p1, Lcom/google/android/gms/internal/recaptcha/l4;->a:Lcom/google/android/gms/internal/recaptcha/l4;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/m4;->e:Lcom/google/android/gms/internal/recaptcha/dc;

    return-void
.end method

.method private final declared-synchronized b(Lcom/google/android/gms/internal/recaptcha/j4;)Lcom/google/android/gms/internal/recaptcha/h4;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/recaptcha/gh;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/j4<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/recaptcha/h4<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/recaptcha/j4;->a()Landroid/net/Uri;

    move-result-object v8

    iget-object v2, v1, Lcom/google/android/gms/internal/recaptcha/m4;->a:Ljava/util/Map;

    .line 1
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/h4;

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/recaptcha/j4;->a()Landroid/net/Uri;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Landroid/net/Uri;->isHierarchical()Z

    move-result v3

    const-string v4, "Uri must be hierarchical: %s"

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/recaptcha/z7;->g(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/recaptcha/g8;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    add-int/2addr v5, v6

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v5, "pb"

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "Uri extension must be .pb: %s"

    invoke-static {v3, v5, v2}, Lcom/google/android/gms/internal/recaptcha/z7;->g(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "singleproc"

    iget-object v3, v1, Lcom/google/android/gms/internal/recaptcha/m4;->f:Ljava/util/Map;

    .line 7
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/recaptcha/p5;

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-string v9, "No XDataStoreVariantFactory registered for ID %s"

    .line 8
    invoke-static {v6, v9, v2}, Lcom/google/android/gms/internal/recaptcha/z7;->g(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/recaptcha/j4;->a()Landroid/net/Uri;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/g8;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 11
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/recaptcha/j4;->a()Landroid/net/Uri;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/dd;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v2

    iget-object v5, v1, Lcom/google/android/gms/internal/recaptcha/m4;->e:Lcom/google/android/gms/internal/recaptcha/dc;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v12

    iget-object v5, v1, Lcom/google/android/gms/internal/recaptcha/m4;->c:Ljava/util/concurrent/Executor;

    iget-object v6, v1, Lcom/google/android/gms/internal/recaptcha/m4;->d:Lcom/google/android/gms/internal/recaptcha/p2;

    const/4 v7, 0x1

    move-object v2, v3

    move-object/from16 v3, p1

    .line 13
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/recaptcha/p5;->a(Lcom/google/android/gms/internal/recaptcha/j4;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/p2;I)Lcom/google/android/gms/internal/recaptcha/o5;

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/h4;

    iget-object v11, v1, Lcom/google/android/gms/internal/recaptcha/m4;->g:Lcom/google/android/gms/internal/recaptcha/t5;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/recaptcha/j4;->f()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/recaptcha/j4;->e()Z

    move-result v14

    const/4 v15, 0x0

    move-object v9, v2

    .line 14
    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/recaptcha/h4;-><init>(Lcom/google/android/gms/internal/recaptcha/o5;Lcom/google/android/gms/internal/recaptcha/t5;Lcom/google/android/gms/internal/recaptcha/nd;ZZ[B)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/recaptcha/j4;->c()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v3

    .line 15
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/internal/recaptcha/m4;->c:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/g4;->b(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/g4;

    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/recaptcha/k5;->n(Lcom/google/android/gms/internal/recaptcha/dc;)V

    :cond_3
    iget-object v3, v1, Lcom/google/android/gms/internal/recaptcha/m4;->a:Ljava/util/Map;

    .line 17
    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/gms/internal/recaptcha/m4;->b:Ljava/util/Map;

    .line 18
    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 19
    :cond_4
    iget-object v3, v1, Lcom/google/android/gms/internal/recaptcha/m4;->b:Ljava/util/Map;

    .line 20
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/recaptcha/j4;

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Arguments must match previous call for Uri: %s"

    .line 22
    invoke-static {v0, v3, v8}, Lcom/google/android/gms/internal/recaptcha/z7;->g(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :goto_2
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/recaptcha/j4;)Lcom/google/android/gms/internal/recaptcha/h4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/recaptcha/gh;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/j4<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/recaptcha/h4<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/m4;->b(Lcom/google/android/gms/internal/recaptcha/j4;)Lcom/google/android/gms/internal/recaptcha/h4;

    move-result-object p1

    return-object p1
.end method
