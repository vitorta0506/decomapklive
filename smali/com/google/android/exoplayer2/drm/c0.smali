.class public interface abstract Lcom/google/android/exoplayer2/drm/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/c0$g;,
        Lcom/google/android/exoplayer2/drm/c0$a;,
        Lcom/google/android/exoplayer2/drm/c0$b;,
        Lcom/google/android/exoplayer2/drm/c0$d;,
        Lcom/google/android/exoplayer2/drm/c0$e;,
        Lcom/google/android/exoplayer2/drm/c0$c;,
        Lcom/google/android/exoplayer2/drm/c0$f;
    }
.end annotation


# virtual methods
.method public abstract a([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Lcom/google/android/exoplayer2/drm/c0$g;
.end method

.method public abstract c([BLa2/s1;)V
.end method

.method public abstract d()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation
.end method

.method public abstract e([B[B)V
.end method

.method public abstract f([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract g()I
.end method

.method public abstract h([B)Lb2/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method

.method public abstract i([BLjava/lang/String;)Z
.end method

.method public abstract j([B)V
.end method

.method public abstract k([B[B)[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract l([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/c0$a;
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/c0$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setOnEventListener(Lcom/google/android/exoplayer2/drm/c0$c;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/c0$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOnExpirationUpdateListener(Lcom/google/android/exoplayer2/drm/c0$d;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/c0$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/c0$e;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/c0$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
