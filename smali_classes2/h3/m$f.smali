.class Lh3/m$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x20
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/media/Spatializer;

.field private final b:Z

.field private c:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/media/Spatializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh3/m$f;->a:Landroid/media/Spatializer;

    .line 3
    invoke-virtual {p1}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lh3/m$f;->b:Z

    return-void
.end method

.method public static g(Landroid/content/Context;)Lh3/m$f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "audio"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lh3/m$f;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p0

    invoke-direct {v0, p0}, Lh3/m$f;-><init>(Landroid/media/Spatializer;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/k1;)Z
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/google/android/exoplayer2/k1;->y:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p2, Lcom/google/android/exoplayer2/k1;->y:I

    .line 3
    :goto_0
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->D(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 6
    iget p2, p2, Lcom/google/android/exoplayer2/k1;->z:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 7
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 8
    :cond_1
    iget-object p2, p0, Lh3/m$f;->a:Landroid/media/Spatializer;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/e;->b()Lcom/google/android/exoplayer2/audio/e$d;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/e$d;->a:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/media/Spatializer;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p1

    return p1
.end method

.method public b(Lh3/m;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh3/m$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lh3/m$f;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lh3/m$f$a;

    invoke-direct {v0, p0, p1}, Lh3/m$f$a;-><init>(Lh3/m$f;Lh3/m;)V

    iput-object v0, p0, Lh3/m$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lh3/m$f;->c:Landroid/os/Handler;

    .line 4
    iget-object p2, p0, Lh3/m$f;->a:Landroid/media/Spatializer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/emoji2/text/a;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/a;-><init>(Landroid/os/Handler;)V

    iget-object p1, p0, Lh3/m$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-virtual {p2, v0, p1}, Landroid/media/Spatializer;->addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lh3/m$f;->a:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lh3/m$f;->a:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lh3/m$f;->b:Z

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh3/m$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh3/m$f;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lh3/m$f;->a:Landroid/media/Spatializer;

    invoke-virtual {v1, v0}, Landroid/media/Spatializer;->removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 3
    iget-object v0, p0, Lh3/m$f;->c:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iput-object v1, p0, Lh3/m$f;->c:Landroid/os/Handler;

    .line 5
    iput-object v1, p0, Lh3/m$f;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    :cond_1
    :goto_0
    return-void
.end method
