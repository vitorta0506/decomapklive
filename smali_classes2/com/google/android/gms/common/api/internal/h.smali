.class public final Lcom/google/android/gms/common/api/internal/h;
.super Lcom/google/android/gms/common/api/internal/e0;
.source "SourceFile"


# instance fields
.field private final f:Landroidx/collection/ArraySet;

.field private final g:Lcom/google/android/gms/common/api/internal/c;


# direct methods
.method constructor <init>(Lv3/e;Lcom/google/android/gms/common/api/internal/c;Lcom/google/android/gms/common/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/api/internal/e0;-><init>(Lv3/e;Lcom/google/android/gms/common/a;)V

    .line 2
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/h;->f:Landroidx/collection/ArraySet;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/h;->g:Lcom/google/android/gms/common/api/internal/c;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lv3/e;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, Lv3/e;->i(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/c;Lv3/b;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/app/Activity;)Lv3/e;

    move-result-object p0

    const-class v0, Lcom/google/android/gms/common/api/internal/h;

    const-string v1, "ConnectionlessLifecycleHelper"

    .line 2
    invoke-interface {p0, v1, v0}, Lv3/e;->N(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/h;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/a;->m()Lcom/google/android/gms/common/a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/internal/h;-><init>(Lv3/e;Lcom/google/android/gms/common/api/internal/c;Lcom/google/android/gms/common/a;)V

    :cond_0
    const-string p0, "ApiKey cannot be null"

    .line 4
    invoke-static {p2, p0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/h;->f:Landroidx/collection/ArraySet;

    .line 5
    invoke-virtual {p0, p2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/c;->d(Lcom/google/android/gms/common/api/internal/h;)V

    return-void
.end method

.method private final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->f:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->g:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/c;->d(Lcom/google/android/gms/common/api/internal/h;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->h()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h;->v()V

    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/e0;->j()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h;->v()V

    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/e0;->k()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->g:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/c;->e(Lcom/google/android/gms/common/api/internal/h;)V

    return-void
.end method

.method protected final m(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->g:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/c;->H(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected final n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->g:Lcom/google/android/gms/common/api/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c;->b()V

    return-void
.end method

.method final t()Landroidx/collection/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->f:Landroidx/collection/ArraySet;

    return-object v0
.end method
