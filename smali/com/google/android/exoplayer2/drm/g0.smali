.class public final synthetic Lcom/google/android/exoplayer2/drm/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/i0;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/c0$e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/i0;Lcom/google/android/exoplayer2/drm/c0$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g0;->a:Lcom/google/android/exoplayer2/drm/i0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/g0;->b:Lcom/google/android/exoplayer2/drm/c0$e;

    return-void
.end method


# virtual methods
.method public final onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g0;->a:Lcom/google/android/exoplayer2/drm/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g0;->b:Lcom/google/android/exoplayer2/drm/c0$e;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/i0;->m(Lcom/google/android/exoplayer2/drm/i0;Lcom/google/android/exoplayer2/drm/c0$e;Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    return-void
.end method
