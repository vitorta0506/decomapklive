.class final Lcom/google/android/gms/internal/recaptcha/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/cc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/cc<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/recaptcha/dc<",
            "Lcom/google/android/gms/internal/recaptcha/a4;",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/gms/internal/recaptcha/k5;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/k5;Lcom/google/android/gms/internal/recaptcha/f5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/h5;->b:Lcom/google/android/gms/internal/recaptcha/k5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/h5;->b:Lcom/google/android/gms/internal/recaptcha/k5;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/k5;->j(Lcom/google/android/gms/internal/recaptcha/k5;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/h5;->a:Ljava/util/List;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zza()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/h5;->b:Lcom/google/android/gms/internal/recaptcha/k5;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/k5;->c(Lcom/google/android/gms/internal/recaptcha/k5;)Lcom/google/android/gms/internal/recaptcha/m6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/h5;->b:Lcom/google/android/gms/internal/recaptcha/k5;

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/k5;->k(Lcom/google/android/gms/internal/recaptcha/k5;)Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Initialize "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/m6;->b(Ljava/lang/String;I)Lcom/google/android/gms/internal/recaptcha/q6;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/h5;->b:Lcom/google/android/gms/internal/recaptcha/k5;

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/k5;->j(Lcom/google/android/gms/internal/recaptcha/k5;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/h5;->a:Ljava/util/List;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/h5;->b:Lcom/google/android/gms/internal/recaptcha/k5;

    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/k5;->l(Lcom/google/android/gms/internal/recaptcha/k5;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/h5;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/h5;->b:Lcom/google/android/gms/internal/recaptcha/k5;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/recaptcha/k5;->m(Lcom/google/android/gms/internal/recaptcha/k5;Ljava/util/List;)Ljava/util/List;

    .line 7
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/h5;->a:Ljava/util/List;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/j5;

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/h5;->b:Lcom/google/android/gms/internal/recaptcha/k5;

    const/4 v4, 0x0

    .line 9
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/recaptcha/j5;-><init>(Lcom/google/android/gms/internal/recaptcha/k5;Lcom/google/android/gms/internal/recaptcha/f5;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/h5;->a:Ljava/util/List;

    .line 10
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/dc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/recaptcha/dc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 12
    :try_start_4
    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/dd;->e(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/dd;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/bd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/g5;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/recaptcha/g5;-><init>(Lcom/google/android/gms/internal/recaptcha/h5;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/bd;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/q6;->b(Lcom/google/android/gms/internal/recaptcha/nd;)Lcom/google/android/gms/internal/recaptcha/nd;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/q6;->close()V

    return-object v1

    :catchall_0
    move-exception v2

    .line 18
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    .line 19
    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/q6;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method
