.class final Lcom/google/android/play/core/assetpacks/y;
.super Lx4/d;
.source "SourceFile"


# instance fields
.field private final g:Lcom/google/android/play/core/assetpacks/y1;

.field private final h:Lcom/google/android/play/core/assetpacks/g1;

.field private final i:Lcom/google/android/play/core/internal/g1;

.field private final j:Lcom/google/android/play/core/assetpacks/r0;

.field private final k:Lcom/google/android/play/core/assetpacks/j1;

.field private final l:Lcom/google/android/play/core/internal/g1;

.field private final m:Lcom/google/android/play/core/internal/g1;

.field private final n:Lcom/google/android/play/core/assetpacks/t2;

.field private final o:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/y1;Lcom/google/android/play/core/assetpacks/g1;Lcom/google/android/play/core/internal/g1;Lcom/google/android/play/core/assetpacks/j1;Lcom/google/android/play/core/assetpacks/r0;Lcom/google/android/play/core/internal/g1;Lcom/google/android/play/core/internal/g1;Lcom/google/android/play/core/assetpacks/t2;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/g;

    const-string v1, "AssetPackServiceListenerRegistry"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/g;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lx4/d;-><init>(Lcom/google/android/play/core/internal/g;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/y;->o:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/y;->g:Lcom/google/android/play/core/assetpacks/y1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/y;->h:Lcom/google/android/play/core/assetpacks/g1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/y;->i:Lcom/google/android/play/core/internal/g1;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/y;->k:Lcom/google/android/play/core/assetpacks/j1;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/y;->j:Lcom/google/android/play/core/assetpacks/r0;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/y;->l:Lcom/google/android/play/core/internal/g1;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/y;->m:Lcom/google/android/play/core/internal/g1;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/y;->n:Lcom/google/android/play/core/assetpacks/t2;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string v0, "pack_names"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/y;->k:Lcom/google/android/play/core/assetpacks/j1;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/y;->n:Lcom/google/android/play/core/assetpacks/t2;

    sget-object v4, Lcom/google/android/play/core/assetpacks/a0;->a:Lcom/google/android/play/core/assetpacks/a0;

    .line 5
    invoke-static {p1, v0, v1, v3, v4}, Lcom/google/android/play/core/assetpacks/AssetPackState;->i(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/j1;Lcom/google/android/play/core/assetpacks/t2;Lcom/google/android/play/core/assetpacks/b0;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v0

    iget-object v1, p0, Lx4/d;->a:Lcom/google/android/play/core/internal/g;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p2

    const-string p2, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    .line 6
    invoke-virtual {v1, p2, v2}, Lcom/google/android/play/core/internal/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p2, "confirmation_intent"

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/y;->j:Lcom/google/android/play/core/assetpacks/r0;

    .line 8
    invoke-virtual {v1, p2}, Lcom/google/android/play/core/assetpacks/r0;->a(Landroid/app/PendingIntent;)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/y;->m:Lcom/google/android/play/core/internal/g1;

    .line 9
    invoke-interface {p2}, Lcom/google/android/play/core/internal/g1;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/v;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/play/core/assetpacks/v;-><init>(Lcom/google/android/play/core/assetpacks/y;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    .line 10
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/y;->l:Lcom/google/android/play/core/internal/g1;

    .line 11
    invoke-interface {p2}, Lcom/google/android/play/core/internal/g1;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/assetpacks/u;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/u;-><init>(Lcom/google/android/play/core/assetpacks/y;Landroid/os/Bundle;)V

    .line 12
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_2
    :goto_0
    iget-object p1, p0, Lx4/d;->a:Lcom/google/android/play/core/internal/g;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Corrupt bundle received from broadcast."

    .line 14
    invoke-virtual {p1, v0, p2}, Lcom/google/android/play/core/internal/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 15
    :cond_3
    iget-object p1, p0, Lx4/d;->a:Lcom/google/android/play/core/internal/g;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Empty bundle received from broadcast."

    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/google/android/play/core/internal/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method final synthetic f(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y;->g:Lcom/google/android/play/core/assetpacks/y1;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/y1;->n(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/y;->h:Lcom/google/android/play/core/assetpacks/g1;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/g1;->a()V

    :cond_0
    return-void
.end method

.method final synthetic g(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y;->g:Lcom/google/android/play/core/assetpacks/y1;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/y1;->m(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/play/core/assetpacks/y;->h(Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/y;->i:Lcom/google/android/play/core/internal/g1;

    .line 3
    invoke-interface {p1}, Lcom/google/android/play/core/internal/g1;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/c4;

    invoke-interface {p1}, Lcom/google/android/play/core/assetpacks/c4;->b()V

    :cond_0
    return-void
.end method

.method final h(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y;->o:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/assetpacks/x;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/x;-><init>(Lcom/google/android/play/core/assetpacks/y;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
