.class public final Lcom/google/android/gms/common/api/internal/z;
.super Lcom/google/android/gms/common/api/internal/v;
.source "SourceFile"


# instance fields
.field public final c:Lv3/f;


# direct methods
.method public constructor <init>(Lv3/f;Lt4/h;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/v;-><init>(ILt4/h;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lv3/f;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lcom/google/android/gms/common/api/internal/g;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/o;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/o;->w()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lv3/f;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/w;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/o;)[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/o;->w()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lv3/f;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/w;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    throw v0
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/o;->w()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lv3/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/w;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/v;->b:Lt4/h;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lt4/h;->e(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/o;->u()Lcom/google/android/gms/common/api/a$f;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method
