.class public Lv1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lo1/d;

.field private final c:Lw1/d;

.field private final d:Lv1/u;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lx1/a;

.field private final g:Ly1/a;

.field private final h:Ly1/a;

.field private final i:Lw1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo1/d;Lw1/d;Lv1/u;Ljava/util/concurrent/Executor;Lx1/a;Ly1/a;Ly1/a;Lw1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/o;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lv1/o;->b:Lo1/d;

    .line 4
    iput-object p3, p0, Lv1/o;->c:Lw1/d;

    .line 5
    iput-object p4, p0, Lv1/o;->d:Lv1/u;

    .line 6
    iput-object p5, p0, Lv1/o;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lv1/o;->f:Lx1/a;

    .line 8
    iput-object p7, p0, Lv1/o;->g:Ly1/a;

    .line 9
    iput-object p8, p0, Lv1/o;->h:Ly1/a;

    .line 10
    iput-object p9, p0, Lv1/o;->i:Lw1/c;

    return-void
.end method

.method public static synthetic a(Lv1/o;Ln1/o;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lv1/o;->t(Ln1/o;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lv1/o;Ln1/o;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lv1/o;->l(Ln1/o;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lv1/o;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lv1/o;->q(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lv1/o;Ln1/o;)Ljava/lang/Iterable;
    .locals 0

    invoke-direct {p0, p1}, Lv1/o;->m(Ln1/o;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lv1/o;Ljava/lang/Iterable;Ln1/o;J)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lv1/o;->n(Ljava/lang/Iterable;Ln1/o;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lv1/o;Ln1/o;J)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lv1/o;->r(Ln1/o;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lv1/o;Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lv1/o;->o(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lv1/o;Ln1/o;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lv1/o;->s(Ln1/o;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lv1/o;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lv1/o;->p()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l(Ln1/o;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lv1/o;->c:Lw1/d;

    invoke-interface {v0, p1}, Lw1/d;->H0(Ln1/o;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic m(Ln1/o;)Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lv1/o;->c:Lw1/d;

    invoke-interface {v0, p1}, Lw1/d;->L1(Ln1/o;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic n(Ljava/lang/Iterable;Ln1/o;J)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lv1/o;->c:Lw1/d;

    invoke-interface {v0, p1}, Lw1/d;->u0(Ljava/lang/Iterable;)V

    .line 2
    iget-object p1, p0, Lv1/o;->c:Lw1/d;

    iget-object v0, p0, Lv1/o;->g:Ly1/a;

    .line 3
    invoke-interface {v0}, Ly1/a;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    .line 4
    invoke-interface {p1, p2, v0, v1}, Lw1/d;->J(Ln1/o;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic o(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv1/o;->c:Lw1/d;

    invoke-interface {v0, p1}, Lw1/d;->z(Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic p()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv1/o;->i:Lw1/c;

    invoke-interface {v0}, Lw1/c;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic q(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    iget-object v1, p0, Lv1/o;->i:Lw1/c;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-interface {v1, v2, v3, v4, v0}, Lw1/c;->d(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic r(Ln1/o;J)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lv1/o;->c:Lw1/d;

    iget-object v1, p0, Lv1/o;->g:Ly1/a;

    .line 2
    invoke-interface {v1}, Ly1/a;->a()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 3
    invoke-interface {v0, p1, v1, v2}, Lw1/d;->J(Ln1/o;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic s(Ln1/o;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv1/o;->d:Lv1/u;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Lv1/u;->b(Ln1/o;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic t(Ln1/o;ILjava/lang/Runnable;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lv1/o;->f:Lx1/a;

    iget-object v1, p0, Lv1/o;->c:Lw1/d;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lv1/e;

    invoke-direct {v2, v1}, Lv1/e;-><init>(Lw1/d;)V

    invoke-interface {v0, v2}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lv1/o;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lv1/o;->f:Lx1/a;

    new-instance v1, Lv1/l;

    invoke-direct {v1, p0, p1, p2}, Lv1/l;-><init>(Lv1/o;Ln1/o;I)V

    invoke-interface {v0, v1}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lv1/o;->u(Ln1/o;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :catch_0
    :try_start_1
    iget-object v0, p0, Lv1/o;->d:Lv1/u;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Lv1/u;->b(Ln1/o;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 7
    throw p1
.end method


# virtual methods
.method public j(Lo1/k;)Ln1/i;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/o;->f:Lx1/a;

    iget-object v1, p0, Lv1/o;->i:Lw1/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lv1/n;

    invoke-direct {v2, v1}, Lv1/n;-><init>(Lw1/c;)V

    invoke-interface {v0, v2}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/a;

    .line 3
    invoke-static {}, Ln1/i;->a()Ln1/i$a;

    move-result-object v1

    iget-object v2, p0, Lv1/o;->g:Ly1/a;

    .line 4
    invoke-interface {v2}, Ly1/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ln1/i$a;->i(J)Ln1/i$a;

    move-result-object v1

    iget-object v2, p0, Lv1/o;->h:Ly1/a;

    .line 5
    invoke-interface {v2}, Ly1/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ln1/i$a;->k(J)Ln1/i$a;

    move-result-object v1

    const-string v2, "GDT_CLIENT_METRICS"

    .line 6
    invoke-virtual {v1, v2}, Ln1/i$a;->j(Ljava/lang/String;)Ln1/i$a;

    move-result-object v1

    new-instance v2, Ln1/h;

    const-string v3, "proto"

    .line 7
    invoke-static {v3}, Ll1/b;->b(Ljava/lang/String;)Ll1/b;

    move-result-object v3

    invoke-virtual {v0}, Lr1/a;->f()[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ln1/h;-><init>(Ll1/b;[B)V

    .line 8
    invoke-virtual {v1, v2}, Ln1/i$a;->h(Ln1/h;)Ln1/i$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ln1/i$a;->d()Ln1/i;

    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Lo1/k;->a(Ln1/i;)Ln1/i;

    move-result-object p1

    return-object p1
.end method

.method k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv1/o;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method u(Ln1/o;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .locals 11

    .line 1
    iget-object v0, p0, Lv1/o;->b:Lo1/d;

    invoke-virtual {p1}, Ln1/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo1/d;->get(Ljava/lang/String;)Lo1/k;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->e(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v3

    :cond_0
    :goto_0
    move-wide v8, v1

    .line 3
    :cond_1
    :goto_1
    iget-object v1, p0, Lv1/o;->f:Lx1/a;

    new-instance v2, Lv1/j;

    invoke-direct {v2, p0, p1}, Lv1/j;-><init>(Lv1/o;Ln1/o;)V

    invoke-interface {v1, v2}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    iget-object v1, p0, Lv1/o;->f:Lx1/a;

    new-instance v2, Lv1/k;

    invoke-direct {v2, p0, p1}, Lv1/k;-><init>(Lv1/o;Ln1/o;)V

    .line 5
    invoke-interface {v1, v2}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    .line 6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v3

    :cond_2
    if-nez v0, :cond_3

    const-string v1, "Uploader"

    const-string v2, "Unknown backend for %s, deleting event batch for it..."

    .line 7
    invoke-static {v1, v2, p1}, Ls1/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->a()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v1

    :goto_2
    move-object v3, v1

    goto :goto_4

    .line 9
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/k;

    .line 11
    invoke-virtual {v3}, Lw1/k;->b()Ln1/i;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {p1}, Ln1/o;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p0, v0}, Lv1/o;->j(Lo1/k;)Ln1/i;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_5
    invoke-static {}, Lo1/e;->a()Lo1/e$a;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lo1/e$a;->b(Ljava/lang/Iterable;)Lo1/e$a;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Ln1/o;->c()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lo1/e$a;->c([B)Lo1/e$a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lo1/e$a;->a()Lo1/e;

    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Lo1/k;->b(Lo1/e;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v1

    goto :goto_2

    .line 19
    :goto_4
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const/4 v10, 0x1

    if-ne v1, v2, :cond_6

    .line 20
    iget-object v0, p0, Lv1/o;->f:Lx1/a;

    new-instance v1, Lv1/h;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lv1/h;-><init>(Lv1/o;Ljava/lang/Iterable;Ln1/o;J)V

    invoke-interface {v0, v1}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lv1/o;->d:Lv1/u;

    add-int/2addr p2, v10

    invoke-interface {v0, p1, p2, v10}, Lv1/u;->a(Ln1/o;IZ)V

    return-object v3

    .line 22
    :cond_6
    iget-object v1, p0, Lv1/o;->f:Lx1/a;

    new-instance v2, Lv1/g;

    invoke-direct {v2, p0, v6}, Lv1/g;-><init>(Lv1/o;Ljava/lang/Iterable;)V

    invoke-interface {v1, v2}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v1, v2, :cond_7

    .line 24
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->b()J

    move-result-wide v1

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 25
    invoke-virtual {p1}, Ln1/o;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    iget-object v4, p0, Lv1/o;->f:Lx1/a;

    new-instance v5, Lv1/f;

    invoke-direct {v5, p0}, Lv1/f;-><init>(Lv1/o;)V

    invoke-interface {v4, v5}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 27
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->INVALID_PAYLOAD:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v1, v2, :cond_1

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw1/k;

    .line 30
    invoke-virtual {v4}, Lw1/k;->b()Ln1/i;

    move-result-object v4

    invoke-virtual {v4}, Ln1/i;->j()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 32
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 33
    :cond_8
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 34
    :cond_9
    iget-object v2, p0, Lv1/o;->f:Lx1/a;

    new-instance v4, Lv1/i;

    invoke-direct {v4, p0, v1}, Lv1/i;-><init>(Lv1/o;Ljava/util/Map;)V

    invoke-interface {v2, v4}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 35
    :cond_a
    iget-object p2, p0, Lv1/o;->f:Lx1/a;

    new-instance v0, Lv1/m;

    invoke-direct {v0, p0, p1, v8, v9}, Lv1/m;-><init>(Lv1/o;Ln1/o;J)V

    invoke-interface {p2, v0}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    return-object v3
.end method

.method public v(Ln1/o;ILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lv1/o;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lv1/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lv1/d;-><init>(Lv1/o;Ln1/o;ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
