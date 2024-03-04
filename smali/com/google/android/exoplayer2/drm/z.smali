.class public final Lcom/google/android/exoplayer2/drm/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/c0;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()Lcom/google/android/exoplayer2/drm/c0$g;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic c([BLa2/s1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/b0;->a(Lcom/google/android/exoplayer2/drm/c0;[BLa2/s1;)V

    return-void
.end method

.method public d()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaDrmException;

    const-string v1, "Attempting to open a session using a dummy ExoMediaDrm."

    invoke-direct {v0, v1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e([B[B)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public f([B)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h([B)Lb2/b;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public i([BLjava/lang/String;)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public j([B)V
    .locals 0

    return-void
.end method

.method public k([B[B)[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public l([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/c0$a;
    .locals 0
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

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setOnEventListener(Lcom/google/android/exoplayer2/drm/c0$c;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/c0$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setOnExpirationUpdateListener(Lcom/google/android/exoplayer2/drm/c0$d;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/c0$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/c0$e;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/c0$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
