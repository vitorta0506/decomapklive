.class public final synthetic Lcom/google/android/exoplayer2/drm/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnExpirationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/i0;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/c0$d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/i0;Lcom/google/android/exoplayer2/drm/c0$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/f0;->a:Lcom/google/android/exoplayer2/drm/i0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/f0;->b:Lcom/google/android/exoplayer2/drm/c0$d;

    return-void
.end method


# virtual methods
.method public final onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/f0;->a:Lcom/google/android/exoplayer2/drm/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/f0;->b:Lcom/google/android/exoplayer2/drm/c0$d;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/i0;->p(Lcom/google/android/exoplayer2/drm/i0;Lcom/google/android/exoplayer2/drm/c0$d;Landroid/media/MediaDrm;[BJ)V

    return-void
.end method
