.class public final Lcom/google/android/gms/internal/recaptcha/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/o5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/o5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/recaptcha/nd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/recaptcha/o4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/o4<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/android/gms/internal/recaptcha/p2;

.field private final f:Lcom/google/android/gms/internal/recaptcha/z3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/z3<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/recaptcha/m6;

.field private final h:Ljava/lang/Object;

.field private final i:Lcom/google/android/gms/internal/recaptcha/rc;

.field private j:Lcom/google/android/gms/internal/recaptcha/nd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/o4;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/p2;Lcom/google/android/gms/internal/recaptcha/z3;Lcom/google/android/gms/internal/recaptcha/m6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/internal/recaptcha/o4<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/recaptcha/p2;",
            "Lcom/google/android/gms/internal/recaptcha/z3<",
            "TT;>;",
            "Lcom/google/android/gms/internal/recaptcha/m6;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->h:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/rc;->c()Lcom/google/android/gms/internal/recaptcha/rc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->i:Lcom/google/android/gms/internal/recaptcha/rc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->j:Lcom/google/android/gms/internal/recaptcha/nd;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->a:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/dd;->h(Lcom/google/android/gms/internal/recaptcha/nd;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/z4;->c:Lcom/google/android/gms/internal/recaptcha/o4;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/internal/recaptcha/ud;->c(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->d:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    iput-object p6, p0, Lcom/google/android/gms/internal/recaptcha/z4;->f:Lcom/google/android/gms/internal/recaptcha/z3;

    iput-object p7, p0, Lcom/google/android/gms/internal/recaptcha/z4;->g:Lcom/google/android/gms/internal/recaptcha/m6;

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/recaptcha/p5;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/y4;->b()Lcom/google/android/gms/internal/recaptcha/p5;

    move-result-object v0

    return-object v0
.end method

.method private final l()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->j:Lcom/google/android/gms/internal/recaptcha/nd;

    if-eqz v1, :cond_0

    .line 1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->j:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 3
    :try_start_2
    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->j:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->j:Lcom/google/android/gms/internal/recaptcha/nd;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->i:Lcom/google/android/gms/internal/recaptcha/rc;

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/r4;

    .line 5
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/recaptcha/r4;-><init>(Lcom/google/android/gms/internal/recaptcha/z4;)V

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/y6;->b(Lcom/google/android/gms/internal/recaptcha/cc;)Lcom/google/android/gms/internal/recaptcha/cc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/z4;->d:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/rc;->d(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/dd;->h(Lcom/google/android/gms/internal/recaptcha/nd;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->j:Lcom/google/android/gms/internal/recaptcha/nd;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->j:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 9
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private final m(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->g:Lcom/google/android/gms/internal/recaptcha/m6;

    const-string v1, "Read "

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->a:Ljava/lang/String;

    .line 1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 3
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/m6;->b(Ljava/lang/String;I)Lcom/google/android/gms/internal/recaptcha/q6;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/o3;->b()Lcom/google/android/gms/internal/recaptcha/o3;

    move-result-object v2

    .line 5
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/recaptcha/p2;->a(Landroid/net/Uri;Lcom/google/android/gms/internal/recaptcha/o2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->c:Lcom/google/android/gms/internal/recaptcha/o4;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/recaptcha/v5;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/recaptcha/v5;->b()Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/recaptcha/gh;->M()Lcom/google/android/gms/internal/recaptcha/nh;

    move-result-object v3

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/v5;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/v5;->a()Lcom/google/android/gms/internal/recaptcha/pf;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/recaptcha/nh;->a(Ljava/io/InputStream;Lcom/google/android/gms/internal/recaptcha/pf;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 7
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/q6;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 8
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/q6;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/recaptcha/p2;->d(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->c:Lcom/google/android/gms/internal/recaptcha/o4;

    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/o4;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    .line 12
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/recaptcha/q5;->a(Lcom/google/android/gms/internal/recaptcha/p2;Landroid/net/Uri;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/recaptcha/m5;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/m5;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/z4;->l()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/recaptcha/n5;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/dc<",
            "-TT;TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/recaptcha/n5;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/z4;->l()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->i:Lcom/google/android/gms/internal/recaptcha/rc;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/s4;

    .line 2
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/recaptcha/s4;-><init>(Lcom/google/android/gms/internal/recaptcha/z4;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/y6;->b(Lcom/google/android/gms/internal/recaptcha/cc;)Lcom/google/android/gms/internal/recaptcha/cc;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/rc;->d(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->j:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 1
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic f()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/u4;

    .line 1
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/recaptcha/u4;-><init>(Lcom/google/android/gms/internal/recaptcha/z4;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->d:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->h(Lcom/google/android/gms/internal/recaptcha/nd;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g(Ljava/lang/Void;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/z4;->m(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/dd;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic h(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/w4;

    .line 2
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/recaptcha/w4;-><init>(Lcom/google/android/gms/internal/recaptcha/z4;Lcom/google/android/gms/internal/recaptcha/nd;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/recaptcha/z4;->d:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->h:Ljava/lang/Object;

    monitor-enter p2

    .line 5
    :try_start_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dd;->g()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic i(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ".bak"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/recaptcha/r5;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/recaptcha/p2;->d(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    .line 3
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/recaptcha/p2;->c(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dd;->g()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/dd;->e(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic j()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/z4;->m(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/recaptcha/zzes;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/recaptcha/zzes;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->e(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/v4;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/recaptcha/v4;-><init>(Lcom/google/android/gms/internal/recaptcha/z4;)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->d:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->e(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final synthetic k(Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/z4;->b:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, ".tmp"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/r5;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->g:Lcom/google/android/gms/internal/recaptcha/m6;

    const-string v3, "Write "

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/z4;->a:Ljava/lang/String;

    .line 3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4
    :cond_0
    new-instance v4, Ljava/lang/String;

    .line 5
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    const/4 v4, 0x1

    .line 6
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/recaptcha/m6;->b(Ljava/lang/String;I)Lcom/google/android/gms/internal/recaptcha/q6;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/recaptcha/c3;

    invoke-direct {v3}, Lcom/google/android/gms/internal/recaptcha/c3;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v5, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/p3;->b()Lcom/google/android/gms/internal/recaptcha/p3;

    move-result-object v6

    new-array v4, v4, [Lcom/google/android/gms/internal/recaptcha/c3;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    .line 7
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/recaptcha/p3;->c([Lcom/google/android/gms/internal/recaptcha/c3;)Lcom/google/android/gms/internal/recaptcha/p3;

    invoke-virtual {v5, v1, v6}, Lcom/google/android/gms/internal/recaptcha/p2;->a(Landroid/net/Uri;Lcom/google/android/gms/internal/recaptcha/o2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 8
    :try_start_3
    check-cast p2, Lcom/google/android/gms/internal/recaptcha/gh;

    .line 9
    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/recaptcha/gh;->d(Ljava/io/OutputStream;)V

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/recaptcha/c3;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_1

    .line 11
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 12
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/q6;->close()V

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    .line 13
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/recaptcha/p2;->c(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->h:Ljava/lang/Object;

    monitor-enter p2

    :try_start_6
    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/z4;->j:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 14
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dd;->g()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    if-eqz v4, :cond_2

    .line 17
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_0
    move-exception p1

    .line 18
    :try_start_a
    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    .line 19
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/recaptcha/q5;->a(Lcom/google/android/gms/internal/recaptcha/p2;Landroid/net/Uri;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p1

    .line 20
    :try_start_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/q6;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    .line 21
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/recaptcha/p2;->d(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_3

    :try_start_d
    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/z4;->e:Lcom/google/android/gms/internal/recaptcha/p2;

    .line 22
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/recaptcha/p2;->b(Landroid/net/Uri;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 24
    :cond_3
    :goto_3
    throw p1
.end method
