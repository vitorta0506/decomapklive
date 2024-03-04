.class public Lz5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5/a;


# static fields
.field private static volatile c:Lz5/a;


# instance fields
.field final a:Lo4/a;

.field final b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lo4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz5/b;->a:Lo4/a;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lz5/b;->b:Ljava/util/Map;

    return-void
.end method

.method public static c(Lcom/google/firebase/d;Landroid/content/Context;Lh6/d;)Lz5/a;
    .locals 5
    .param p0    # Lcom/google/firebase/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh6/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE",
            "android.permission.WAKE_LOCK"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lz5/b;->c:Lz5/a;

    if-nez v0, :cond_2

    const-class v0, Lz5/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz5/b;->c:Lz5/a;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    .line 5
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/d;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/google/firebase/a;

    sget-object v3, Lz5/c;->a:Lz5/c;

    .line 7
    sget-object v4, Lz5/d;->a:Lz5/d;

    invoke-interface {p2, v2, v3, v4}, Lh6/d;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lh6/b;)V

    const-string p2, "dataCollectionDefaultEnabled"

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/d;->u()Z

    move-result p0

    .line 9
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance p0, Lz5/b;

    const/4 p2, 0x0

    .line 10
    invoke-static {p1, p2, p2, p2, v1}, Lcom/google/android/gms/internal/measurement/w2;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/w2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/w2;->s()Lo4/a;

    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lz5/b;-><init>(Lo4/a;)V

    sput-object p0, Lz5/b;->c:Lz5/a;

    .line 12
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lz5/b;->c:Lz5/a;

    return-object p0
.end method

.method static synthetic d(Lh6/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh6/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/a;

    iget-boolean p0, p0, Lcom/google/firebase/a;->a:Z

    const-class v0, Lz5/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz5/b;->c:Lz5/a;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz5/b;

    iget-object v1, v1, Lz5/b;->a:Lo4/a;

    .line 3
    invoke-virtual {v1, p0}, Lo4/a;->c(Z)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->c(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lz5/b;->a:Lo4/a;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lo4/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/analytics/connector/internal/b;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lz5/b;->a:Lo4/a;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lo4/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
