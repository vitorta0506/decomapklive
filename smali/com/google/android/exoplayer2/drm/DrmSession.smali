.class public interface abstract Lcom/google/android/exoplayer2/drm/DrmSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/drm/s$a;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b(Lcom/google/android/exoplayer2/drm/s$a;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract c()Ljava/util/UUID;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract f()Lb2/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract g()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract h(Ljava/lang/String;)Z
.end method
