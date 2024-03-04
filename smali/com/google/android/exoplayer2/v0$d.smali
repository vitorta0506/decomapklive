.class final Lcom/google/android/exoplayer2/v0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3/i;
.implements Ll3/a;
.implements Lcom/google/android/exoplayer2/p2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:Lk3/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ll3/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lk3/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ll3/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/v0$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/v0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJLcom/google/android/exoplayer2/k1;Landroid/media/MediaFormat;)V
    .locals 8
    .param p6    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$d;->c:Lk3/i;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-interface/range {v0 .. v6}, Lk3/i;->a(JJLcom/google/android/exoplayer2/k1;Landroid/media/MediaFormat;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/v0$d;->a:Lk3/i;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-interface/range {v1 .. v7}, Lk3/i;->a(JJLcom/google/android/exoplayer2/k1;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public b(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$d;->d:Ll3/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Ll3/a;->b(J[F)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$d;->b:Ll3/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3}, Ll3/a;->b(J[F)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$d;->d:Ll3/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ll3/a;->d()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$d;->b:Ll3/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ll3/a;->d()V

    :cond_1
    return-void
.end method

.method public k(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/v0$d;->c:Lk3/i;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/v0$d;->d:Ll3/a;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Lk3/i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/v0$d;->c:Lk3/i;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Ll3/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/v0$d;->d:Ll3/a;

    goto :goto_0

    .line 6
    :cond_2
    check-cast p2, Ll3/a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/v0$d;->b:Ll3/a;

    goto :goto_0

    .line 7
    :cond_3
    check-cast p2, Lk3/i;

    iput-object p2, p0, Lcom/google/android/exoplayer2/v0$d;->a:Lk3/i;

    :goto_0
    return-void
.end method
