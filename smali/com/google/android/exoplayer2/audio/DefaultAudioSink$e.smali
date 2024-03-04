.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/audio/f;

.field private b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:I

.field f:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/audio/f;->c:Lcom/google/android/exoplayer2/audio/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:Lcom/google/android/exoplayer2/audio/f;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    .line 4
    sget-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->f:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;)Lcom/google/android/exoplayer2/audio/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:Lcom/google/android/exoplayer2/audio/f;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    return p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;)V

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/audio/f;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->a:Lcom/google/android/exoplayer2/audio/f;

    return-object p0
.end method

.method public h(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->d:Z

    return-object p0
.end method

.method public i(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->c:Z

    return-object p0
.end method

.method public j(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;->e:I

    return-object p0
.end method
