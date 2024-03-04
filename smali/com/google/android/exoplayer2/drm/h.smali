.class public final synthetic Lcom/google/android/exoplayer2/drm/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;

.field public final synthetic b:Lcom/google/android/exoplayer2/k1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;Lcom/google/android/exoplayer2/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/h;->b:Lcom/google/android/exoplayer2/k1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h;->b:Lcom/google/android/exoplayer2/k1;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->b(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;Lcom/google/android/exoplayer2/k1;)V

    return-void
.end method
