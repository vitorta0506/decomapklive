.class public final La2/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/c;
.implements La2/r1$a;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/q1$b;,
        La2/q1$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private final a:Landroid/content/Context;

.field private final b:La2/r1;

.field private final c:Landroid/media/metrics/PlaybackSession;

.field private final d:J

.field private final e:Lcom/google/android/exoplayer2/i3$d;

.field private final f:Lcom/google/android/exoplayer2/i3$b;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/media/metrics/PlaybackMetrics$Builder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/google/android/exoplayer2/PlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:La2/q1$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:La2/q1$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:La2/q1$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Z

.field private v:I

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    iput-object p1, p0, La2/q1;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, La2/q1;->c:Landroid/media/metrics/PlaybackSession;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    iput-object p1, p0, La2/q1;->e:Lcom/google/android/exoplayer2/i3$d;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    iput-object p1, p0, La2/q1;->f:Lcom/google/android/exoplayer2/i3$b;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La2/q1;->h:Ljava/util/HashMap;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La2/q1;->g:Ljava/util/HashMap;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, La2/q1;->d:J

    const/4 p1, 0x0

    .line 10
    iput p1, p0, La2/q1;->l:I

    .line 11
    iput p1, p0, La2/q1;->m:I

    .line 12
    new-instance p1, La2/p1;

    invoke-direct {p1}, La2/p1;-><init>()V

    iput-object p1, p0, La2/q1;->b:La2/r1;

    .line 13
    invoke-interface {p1, p0}, La2/r1;->e(La2/r1$a;)V

    return-void
.end method

.method private A0()V
    .locals 7

    .line 1
    iget-object v0, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, La2/q1;->A:Z

    if-eqz v2, :cond_3

    .line 2
    iget v2, p0, La2/q1;->z:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 3
    iget-object v0, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, La2/q1;->x:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 4
    iget-object v0, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, La2/q1;->y:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 5
    iget-object v0, p0, La2/q1;->g:Ljava/util/HashMap;

    iget-object v2, p0, La2/q1;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 6
    iget-object v2, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 7
    iget-object v0, p0, La2/q1;->h:Ljava/util/HashMap;

    iget-object v2, p0, La2/q1;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 8
    iget-object v2, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 9
    iget-object v2, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 11
    :goto_2
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 12
    iget-object v0, p0, La2/q1;->c:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 14
    iput-object v0, p0, La2/q1;->i:Ljava/lang/String;

    .line 15
    iput v1, p0, La2/q1;->z:I

    .line 16
    iput v1, p0, La2/q1;->x:I

    .line 17
    iput v1, p0, La2/q1;->y:I

    .line 18
    iput-object v0, p0, La2/q1;->r:Lcom/google/android/exoplayer2/k1;

    .line 19
    iput-object v0, p0, La2/q1;->s:Lcom/google/android/exoplayer2/k1;

    .line 20
    iput-object v0, p0, La2/q1;->t:Lcom/google/android/exoplayer2/k1;

    .line 21
    iput-boolean v1, p0, La2/q1;->A:Z

    return-void
.end method

.method private static B0(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/l0;->P(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1b

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x1c

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static C0(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/n3$a;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/n3$a;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/n3$a;->a:I

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n3$a;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n3$a;->c(I)Lcom/google/android/exoplayer2/k1;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/k1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static D0(Lcom/google/android/exoplayer2/drm/DrmInitData;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v0, v1, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->c(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 3
    sget-object v2, Lcom/google/android/exoplayer2/i;->d:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x3

    return p0

    .line 4
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/i;->e:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    return p0

    .line 5
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/i;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static E0(Lcom/google/android/exoplayer2/PlaybackException;Landroid/content/Context;Z)La2/q1$a;
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/4 v1, 0x0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_0

    .line 2
    new-instance p0, La2/q1$a;

    const/16 p1, 0x14

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 5
    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_0
    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 8
    instance-of v5, v4, Ljava/io/IOException;

    const/4 v6, 0x3

    const/16 v7, 0x12

    const/16 v8, 0x17

    if-eqz v5, :cond_17

    .line 9
    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_3

    .line 10
    check-cast v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 11
    new-instance p1, La2/q1$a;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, La2/q1$a;-><init>(II)V

    return-object p1

    .line 12
    :cond_3
    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    if-nez v0, :cond_15

    instance-of v0, v4, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 13
    :cond_4
    instance-of p2, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-nez p2, :cond_10

    instance-of p2, v4, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    if-eqz p2, :cond_5

    goto/16 :goto_2

    .line 14
    :cond_5
    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 p1, 0x3ea

    const/16 p2, 0x15

    if-ne p0, p1, :cond_6

    .line 15
    new-instance p0, La2/q1$a;

    invoke-direct {p0, p2, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 16
    :cond_6
    instance-of p0, v4, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    if-eqz p0, :cond_d

    .line 17
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    .line 18
    sget p1, Lcom/google/android/exoplayer2/util/l0;->a:I

    if-lt p1, p2, :cond_7

    instance-of p2, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz p2, :cond_7

    .line 19
    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/l0;->Q(Ljava/lang/String;)I

    move-result p0

    .line 21
    invoke-static {p0}, La2/q1;->B0(I)I

    move-result p1

    .line 22
    new-instance p2, La2/q1$a;

    invoke-direct {p2, p1, p0}, La2/q1$a;-><init>(II)V

    return-object p2

    :cond_7
    if-lt p1, v8, :cond_8

    .line 23
    instance-of p2, p0, Landroid/media/MediaDrmResetException;

    if-eqz p2, :cond_8

    .line 24
    new-instance p0, La2/q1$a;

    const/16 p1, 0x1b

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    :cond_8
    if-lt p1, v7, :cond_9

    .line 25
    instance-of p2, p0, Landroid/media/NotProvisionedException;

    if-eqz p2, :cond_9

    .line 26
    new-instance p0, La2/q1$a;

    const/16 p1, 0x18

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    :cond_9
    if-lt p1, v7, :cond_a

    .line 27
    instance-of p1, p0, Landroid/media/DeniedByServerException;

    if-eqz p1, :cond_a

    .line 28
    new-instance p0, La2/q1$a;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 29
    :cond_a
    instance-of p1, p0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    if-eqz p1, :cond_b

    .line 30
    new-instance p0, La2/q1$a;

    invoke-direct {p0, v8, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 31
    :cond_b
    instance-of p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz p0, :cond_c

    .line 32
    new-instance p0, La2/q1$a;

    const/16 p1, 0x1c

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 33
    :cond_c
    new-instance p0, La2/q1$a;

    const/16 p1, 0x1e

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 34
    :cond_d
    instance-of p0, v4, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    if-eqz p0, :cond_f

    .line 35
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_f

    .line 36
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 37
    sget p1, Lcom/google/android/exoplayer2/util/l0;->a:I

    if-lt p1, p2, :cond_e

    instance-of p1, p0, Landroid/system/ErrnoException;

    if-eqz p1, :cond_e

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    sget p1, Landroid/system/OsConstants;->EACCES:I

    if-ne p0, p1, :cond_e

    .line 38
    new-instance p0, La2/q1$a;

    const/16 p1, 0x20

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 39
    :cond_e
    new-instance p0, La2/q1$a;

    const/16 p1, 0x1f

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 40
    :cond_f
    new-instance p0, La2/q1$a;

    const/16 p1, 0x9

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 41
    :cond_10
    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/y;->d(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/y;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/y;->f()I

    move-result p0

    if-ne p0, v2, :cond_11

    .line 42
    new-instance p0, La2/q1$a;

    invoke-direct {p0, v6, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 43
    :cond_11
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 44
    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_12

    .line 45
    new-instance p0, La2/q1$a;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 46
    :cond_12
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_13

    .line 47
    new-instance p0, La2/q1$a;

    const/4 p1, 0x7

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 48
    :cond_13
    instance-of p0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz p0, :cond_14

    check-cast v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget p0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    if-ne p0, v2, :cond_14

    .line 49
    new-instance p0, La2/q1$a;

    const/4 p1, 0x4

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 50
    :cond_14
    new-instance p0, La2/q1$a;

    const/16 p1, 0x8

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 51
    :cond_15
    :goto_3
    new-instance p0, La2/q1$a;

    if-eqz p2, :cond_16

    const/16 p1, 0xa

    goto :goto_4

    :cond_16
    const/16 p1, 0xb

    .line 52
    :goto_4
    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    :cond_17
    if-eqz v3, :cond_19

    if-eqz v0, :cond_18

    if-ne v0, v2, :cond_19

    .line 53
    :cond_18
    new-instance p0, La2/q1$a;

    const/16 p1, 0x23

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    :cond_19
    if-eqz v3, :cond_1a

    if-ne v0, v6, :cond_1a

    .line 54
    new-instance p0, La2/q1$a;

    const/16 p1, 0xf

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    :cond_1a
    if-eqz v3, :cond_1b

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1b

    .line 55
    new-instance p0, La2/q1$a;

    invoke-direct {p0, v8, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 56
    :cond_1b
    instance-of p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz p0, :cond_1c

    .line 57
    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 58
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/l0;->Q(Ljava/lang/String;)I

    move-result p0

    .line 59
    new-instance p1, La2/q1$a;

    const/16 p2, 0xd

    invoke-direct {p1, p2, p0}, La2/q1$a;-><init>(II)V

    return-object p1

    .line 60
    :cond_1c
    instance-of p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    const/16 p1, 0xe

    if-eqz p0, :cond_1d

    .line 61
    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    iget-object p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;->diagnosticInfo:Ljava/lang/String;

    .line 62
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/l0;->Q(Ljava/lang/String;)I

    move-result p0

    .line 63
    new-instance p2, La2/q1$a;

    invoke-direct {p2, p1, p0}, La2/q1$a;-><init>(II)V

    return-object p2

    .line 64
    :cond_1d
    instance-of p0, v4, Ljava/lang/OutOfMemoryError;

    if-eqz p0, :cond_1e

    .line 65
    new-instance p0, La2/q1$a;

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0

    .line 66
    :cond_1e
    instance-of p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    if-eqz p0, :cond_1f

    .line 67
    check-cast v4, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->audioTrackState:I

    .line 68
    new-instance p1, La2/q1$a;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, La2/q1$a;-><init>(II)V

    return-object p1

    .line 69
    :cond_1f
    instance-of p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    if-eqz p0, :cond_20

    .line 70
    check-cast v4, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    iget p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->errorCode:I

    .line 71
    new-instance p1, La2/q1$a;

    invoke-direct {p1, v7, p0}, La2/q1$a;-><init>(II)V

    return-object p1

    .line 72
    :cond_20
    sget p0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 p1, 0x10

    if-lt p0, p1, :cond_21

    instance-of p0, v4, Landroid/media/MediaCodec$CryptoException;

    if-eqz p0, :cond_21

    .line 73
    check-cast v4, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v4}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p0

    .line 74
    invoke-static {p0}, La2/q1;->B0(I)I

    move-result p1

    .line 75
    new-instance p2, La2/q1$a;

    invoke-direct {p2, p1, p0}, La2/q1$a;-><init>(II)V

    return-object p2

    .line 76
    :cond_21
    new-instance p0, La2/q1$a;

    const/16 p1, 0x16

    invoke-direct {p0, p1, v1}, La2/q1$a;-><init>(II)V

    return-object p0
.end method

.method private static F0(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "-"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/l0;->G0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static H0(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/y;->d(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/y;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/y;->f()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_9
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static I0(Lcom/google/android/exoplayer2/s1;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/s1;->b:Lcom/google/android/exoplayer2/s1$h;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/s1$h;->a:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/exoplayer2/s1$h;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/l0;->k0(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method private static J0(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private K0(La2/c$b;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, La2/c$b;->d()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    invoke-virtual {p1, v0}, La2/c$b;->b(I)I

    move-result v1

    .line 3
    invoke-virtual {p1, v1}, La2/c$b;->c(I)La2/c$a;

    move-result-object v2

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, La2/q1;->b:La2/r1;

    invoke-interface {v1, v2}, La2/r1;->d(La2/c$a;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    .line 5
    iget-object v1, p0, La2/q1;->b:La2/r1;

    iget v3, p0, La2/q1;->k:I

    invoke-interface {v1, v2, v3}, La2/r1;->f(La2/c$a;I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, La2/q1;->b:La2/r1;

    invoke-interface {v1, v2}, La2/r1;->b(La2/c$a;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private L0(J)V
    .locals 4

    .line 1
    iget-object v0, p0, La2/q1;->a:Landroid/content/Context;

    invoke-static {v0}, La2/q1;->H0(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget v1, p0, La2/q1;->m:I

    if-eq v0, v1, :cond_0

    .line 3
    iput v0, p0, La2/q1;->m:I

    .line 4
    iget-object v1, p0, La2/q1;->c:Landroid/media/metrics/PlaybackSession;

    new-instance v2, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v2}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 5
    invoke-virtual {v2, v0}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v0

    iget-wide v2, p0, La2/q1;->d:J

    sub-long/2addr p1, v2

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    :cond_0
    return-void
.end method

.method private M0(J)V
    .locals 7

    .line 1
    iget-object v0, p0, La2/q1;->n:Lcom/google/android/exoplayer2/PlaybackException;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, La2/q1;->a:Landroid/content/Context;

    iget v2, p0, La2/q1;->v:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-static {v0, v1, v2}, La2/q1;->E0(Lcom/google/android/exoplayer2/PlaybackException;Landroid/content/Context;Z)La2/q1$a;

    move-result-object v1

    .line 4
    iget-object v2, p0, La2/q1;->c:Landroid/media/metrics/PlaybackSession;

    new-instance v3, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v5, p0, La2/q1;->d:J

    sub-long/2addr p1, v5

    .line 5
    invoke-virtual {v3, p1, p2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    iget p2, v1, La2/q1$a;->a:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    iget p2, v1, La2/q1$a;->b:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object p1

    .line 10
    invoke-virtual {v2, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 11
    iput-boolean v4, p0, La2/q1;->A:Z

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, La2/q1;->n:Lcom/google/android/exoplayer2/PlaybackException;

    return-void
.end method

.method private N0(Lcom/google/android/exoplayer2/l2;La2/c$b;J)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, La2/q1;->u:Z

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->k()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, La2/q1;->w:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 5
    invoke-virtual {p2, v0}, La2/c$b;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iput-boolean v2, p0, La2/q1;->w:Z

    .line 7
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, La2/q1;->V0(Lcom/google/android/exoplayer2/l2;)I

    move-result p1

    .line 8
    iget p2, p0, La2/q1;->l:I

    if-eq p2, p1, :cond_3

    .line 9
    iput p1, p0, La2/q1;->l:I

    .line 10
    iput-boolean v2, p0, La2/q1;->A:Z

    .line 11
    iget-object p1, p0, La2/q1;->c:Landroid/media/metrics/PlaybackSession;

    new-instance p2, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v0, p0, La2/q1;->l:I

    .line 12
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p2

    iget-wide v0, p0, La2/q1;->d:J

    sub-long/2addr p3, v0

    .line 13
    invoke-virtual {p2, p3, p4}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_3
    return-void
.end method

.method private O0(Lcom/google/android/exoplayer2/l2;La2/c$b;J)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p2, v0}, La2/c$b;->a(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->m()Lcom/google/android/exoplayer2/n3;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n3;->d(I)Z

    move-result p2

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n3;->d(I)Z

    move-result v0

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/n3;->d(I)Z

    move-result p1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 6
    invoke-direct {p0, p3, p4, v1, v2}, La2/q1;->T0(JLcom/google/android/exoplayer2/k1;I)V

    :cond_1
    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0, p3, p4, v1, v2}, La2/q1;->P0(JLcom/google/android/exoplayer2/k1;I)V

    :cond_2
    if-nez p1, :cond_3

    .line 8
    invoke-direct {p0, p3, p4, v1, v2}, La2/q1;->R0(JLcom/google/android/exoplayer2/k1;I)V

    .line 9
    :cond_3
    iget-object p1, p0, La2/q1;->o:La2/q1$b;

    invoke-direct {p0, p1}, La2/q1;->y0(La2/q1$b;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, La2/q1;->o:La2/q1$b;

    iget-object p2, p1, La2/q1$b;->a:Lcom/google/android/exoplayer2/k1;

    iget v0, p2, Lcom/google/android/exoplayer2/k1;->r:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 10
    iget p1, p1, La2/q1$b;->b:I

    invoke-direct {p0, p3, p4, p2, p1}, La2/q1;->T0(JLcom/google/android/exoplayer2/k1;I)V

    .line 11
    iput-object v1, p0, La2/q1;->o:La2/q1$b;

    .line 12
    :cond_4
    iget-object p1, p0, La2/q1;->p:La2/q1$b;

    invoke-direct {p0, p1}, La2/q1;->y0(La2/q1$b;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, La2/q1;->p:La2/q1$b;

    iget-object p2, p1, La2/q1$b;->a:Lcom/google/android/exoplayer2/k1;

    iget p1, p1, La2/q1$b;->b:I

    invoke-direct {p0, p3, p4, p2, p1}, La2/q1;->P0(JLcom/google/android/exoplayer2/k1;I)V

    .line 14
    iput-object v1, p0, La2/q1;->p:La2/q1$b;

    .line 15
    :cond_5
    iget-object p1, p0, La2/q1;->q:La2/q1$b;

    invoke-direct {p0, p1}, La2/q1;->y0(La2/q1$b;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, La2/q1;->q:La2/q1$b;

    iget-object p2, p1, La2/q1$b;->a:Lcom/google/android/exoplayer2/k1;

    iget p1, p1, La2/q1$b;->b:I

    invoke-direct {p0, p3, p4, p2, p1}, La2/q1;->R0(JLcom/google/android/exoplayer2/k1;I)V

    .line 17
    iput-object v1, p0, La2/q1;->q:La2/q1$b;

    :cond_6
    return-void
.end method

.method private P0(JLcom/google/android/exoplayer2/k1;I)V
    .locals 6
    .param p3    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, La2/q1;->s:Lcom/google/android/exoplayer2/k1;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La2/q1;->s:Lcom/google/android/exoplayer2/k1;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, p4

    .line 3
    :goto_0
    iput-object p3, p0, La2/q1;->s:Lcom/google/android/exoplayer2/k1;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 4
    invoke-direct/range {v0 .. v5}, La2/q1;->U0(IJLcom/google/android/exoplayer2/k1;I)V

    return-void
.end method

.method private Q0(Lcom/google/android/exoplayer2/l2;La2/c$b;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, La2/c$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, La2/c$b;->c(I)La2/c$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, La2/c$a;->b:Lcom/google/android/exoplayer2/i3;

    iget-object v0, v0, La2/c$a;->d:Lv2/q$b;

    invoke-direct {p0, v1, v0}, La2/q1;->S0(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)V

    :cond_0
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p2, v0}, La2/c$b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->m()Lcom/google/android/exoplayer2/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n3;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, La2/q1;->C0(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {p1}, La2/q1;->D0(Lcom/google/android/exoplayer2/drm/DrmInitData;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_1
    const/16 p1, 0x3f3

    .line 8
    invoke-virtual {p2, p1}, La2/c$b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget p1, p0, La2/q1;->z:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La2/q1;->z:I

    :cond_2
    return-void
.end method

.method private R0(JLcom/google/android/exoplayer2/k1;I)V
    .locals 6
    .param p3    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, La2/q1;->t:Lcom/google/android/exoplayer2/k1;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La2/q1;->t:Lcom/google/android/exoplayer2/k1;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, p4

    .line 3
    :goto_0
    iput-object p3, p0, La2/q1;->t:Lcom/google/android/exoplayer2/k1;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 4
    invoke-direct/range {v0 .. v5}, La2/q1;->U0(IJLcom/google/android/exoplayer2/k1;I)V

    return-void
.end method

.method private S0(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)V
    .locals 5
    .param p2    # Lv2/q$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p2, Lv2/o;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, La2/q1;->f:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplayer2/i3;->j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 4
    iget-object p2, p0, La2/q1;->f:Lcom/google/android/exoplayer2/i3$b;

    iget p2, p2, Lcom/google/android/exoplayer2/i3$b;->c:I

    iget-object v1, p0, La2/q1;->e:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    .line 5
    iget-object p1, p0, La2/q1;->e:Lcom/google/android/exoplayer2/i3$d;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i3$d;->c:Lcom/google/android/exoplayer2/s1;

    invoke-static {p1}, La2/q1;->I0(Lcom/google/android/exoplayer2/s1;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 6
    iget-object p1, p0, La2/q1;->e:Lcom/google/android/exoplayer2/i3$d;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/i3$d;->n:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_2

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/i3$d;->l:Z

    if-nez p2, :cond_2

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/i3$d;->i:Z

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3$d;->g()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, La2/q1;->e:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3$d;->f()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 9
    :cond_2
    iget-object p1, p0, La2/q1;->e:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i3$d;->g()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 11
    iput-boolean p2, p0, La2/q1;->A:Z

    return-void
.end method

.method private T0(JLcom/google/android/exoplayer2/k1;I)V
    .locals 6
    .param p3    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, La2/q1;->r:Lcom/google/android/exoplayer2/k1;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La2/q1;->r:Lcom/google/android/exoplayer2/k1;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, p4

    .line 3
    :goto_0
    iput-object p3, p0, La2/q1;->r:Lcom/google/android/exoplayer2/k1;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 4
    invoke-direct/range {v0 .. v5}, La2/q1;->U0(IJLcom/google/android/exoplayer2/k1;I)V

    return-void
.end method

.method private U0(IJLcom/google/android/exoplayer2/k1;I)V
    .locals 3
    .param p4    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, La2/q1;->d:J

    sub-long/2addr p2, v1

    .line 2
    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_9

    .line 3
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 4
    invoke-static {p5}, La2/q1;->J0(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 5
    iget-object p3, p4, Lcom/google/android/exoplayer2/k1;->k:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 7
    :cond_0
    iget-object p3, p4, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 9
    :cond_1
    iget-object p3, p4, Lcom/google/android/exoplayer2/k1;->i:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 11
    :cond_2
    iget p3, p4, Lcom/google/android/exoplayer2/k1;->h:I

    const/4 p5, -0x1

    if-eq p3, p5, :cond_3

    .line 12
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 13
    :cond_3
    iget p3, p4, Lcom/google/android/exoplayer2/k1;->q:I

    if-eq p3, p5, :cond_4

    .line 14
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 15
    :cond_4
    iget p3, p4, Lcom/google/android/exoplayer2/k1;->r:I

    if-eq p3, p5, :cond_5

    .line 16
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 17
    :cond_5
    iget p3, p4, Lcom/google/android/exoplayer2/k1;->y:I

    if-eq p3, p5, :cond_6

    .line 18
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 19
    :cond_6
    iget p3, p4, Lcom/google/android/exoplayer2/k1;->z:I

    if-eq p3, p5, :cond_7

    .line 20
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 21
    :cond_7
    iget-object p3, p4, Lcom/google/android/exoplayer2/k1;->c:Ljava/lang/String;

    if-eqz p3, :cond_8

    .line 22
    invoke-static {p3}, La2/q1;->F0(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    .line 23
    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 24
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p3, :cond_8

    .line 25
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 26
    :cond_8
    iget p3, p4, Lcom/google/android/exoplayer2/k1;->s:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_a

    .line 27
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_0

    :cond_9
    const/4 p3, 0x0

    .line 28
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 29
    :cond_a
    :goto_0
    iput-boolean p2, p0, La2/q1;->A:Z

    .line 30
    iget-object p2, p0, La2/q1;->c:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method private V0(Lcom/google/android/exoplayer2/l2;)I
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->getPlaybackState()I

    move-result v0

    .line 2
    iget-boolean v1, p0, La2/q1;->u:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x5

    return p1

    .line 3
    :cond_0
    iget-boolean v1, p0, La2/q1;->w:Z

    if-eqz v1, :cond_1

    const/16 p1, 0xd

    return p1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 p1, 0xb

    return p1

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 4
    iget v0, p0, La2/q1;->l:I

    if-eqz v0, :cond_6

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->A()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x7

    return p1

    .line 6
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->s()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xa

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    :goto_0
    return p1

    :cond_6
    :goto_1
    return v2

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->A()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 8
    :cond_8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->s()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v2, 0x9

    :cond_9
    return v2

    :cond_a
    const/4 p1, 0x1

    if-ne v0, p1, :cond_b

    .line 9
    iget p1, p0, La2/q1;->l:I

    if-eqz p1, :cond_b

    const/16 p1, 0xc

    return p1

    .line 10
    :cond_b
    iget p1, p0, La2/q1;->l:I

    return p1
.end method

.method private y0(La2/q1$b;)Z
    .locals 1
    .param p1    # La2/q1$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, La2/q1$b;->c:Ljava/lang/String;

    iget-object v0, p0, La2/q1;->b:La2/r1;

    .line 2
    invoke-interface {v0}, La2/r1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static z0(Landroid/content/Context;)La2/q1;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "media_metrics"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, La2/q1;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, La2/q1;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public synthetic A(La2/c$a;Lcom/google/android/exoplayer2/k1;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->j0(La2/c;La2/c$a;Lcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method public synthetic B(La2/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->d0(La2/c;La2/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic C(La2/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->N(La2/c;La2/c$a;I)V

    return-void
.end method

.method public synthetic D(La2/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->j(La2/c;La2/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic E(La2/c$a;Lcom/google/android/exoplayer2/k2;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->M(La2/c;La2/c$a;Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public synthetic F(La2/c$a;Lh3/z;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->b0(La2/c;La2/c$a;Lh3/z;)V

    return-void
.end method

.method public synthetic G(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->P(La2/c;La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public G0()Landroid/media/metrics/LogSessionId;
    .locals 1

    iget-object v0, p0, La2/q1;->c:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public H(La2/c$a;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V
    .locals 0

    iget p1, p3, Lv2/m;->a:I

    iput p1, p0, La2/q1;->v:I

    return-void
.end method

.method public synthetic I(La2/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->S(La2/c;La2/c$a;I)V

    return-void
.end method

.method public synthetic J(La2/c$a;Lb2/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->h0(La2/c;La2/c$a;Lb2/e;)V

    return-void
.end method

.method public K(La2/c$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p1, La2/c$a;->d:Lv2/q$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv2/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, La2/q1;->A0()V

    .line 3
    iput-object p2, p0, La2/q1;->i:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    const-string v0, "ExoPlayerLib"

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v0, "2.18.1"

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, La2/q1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 7
    iget-object p2, p1, La2/c$a;->b:Lcom/google/android/exoplayer2/i3;

    iget-object p1, p1, La2/c$a;->d:Lv2/q$b;

    invoke-direct {p0, p2, p1}, La2/q1;->S0(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)V

    return-void
.end method

.method public synthetic L(La2/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->C(La2/c;La2/c$a;Z)V

    return-void
.end method

.method public synthetic M(La2/c$a;Lv2/j;Lv2/m;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->G(La2/c;La2/c$a;Lv2/j;Lv2/m;)V

    return-void
.end method

.method public synthetic N(La2/c$a;Lcom/google/android/exoplayer2/n3;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->c0(La2/c;La2/c$a;Lcom/google/android/exoplayer2/n3;)V

    return-void
.end method

.method public synthetic O(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->h(La2/c;La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    return-void
.end method

.method public synthetic P(La2/c$a;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->t(La2/c;La2/c$a;IZ)V

    return-void
.end method

.method public synthetic Q(La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->k0(La2/c;La2/c$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    return-void
.end method

.method public R(La2/c$a;Lb2/e;)V
    .locals 1

    .line 1
    iget p1, p0, La2/q1;->x:I

    iget v0, p2, Lb2/e;->g:I

    add-int/2addr p1, v0

    iput p1, p0, La2/q1;->x:I

    .line 2
    iget p1, p0, La2/q1;->y:I

    iget p2, p2, Lb2/e;->e:I

    add-int/2addr p1, p2

    iput p1, p0, La2/q1;->y:I

    return-void
.end method

.method public synthetic S(La2/c$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, La2/b;->c(La2/c;La2/c$a;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic T(La2/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->Y(La2/c;La2/c$a;Z)V

    return-void
.end method

.method public synthetic U(La2/c$a;)V
    .locals 0

    invoke-static {p0, p1}, La2/b;->V(La2/c;La2/c$a;)V

    return-void
.end method

.method public synthetic V(La2/c$a;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->m(La2/c;La2/c$a;Ljava/util/List;)V

    return-void
.end method

.method public synthetic W(La2/c$a;ILcom/google/android/exoplayer2/k1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->r(La2/c;La2/c$a;ILcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method public synthetic X(La2/c$a;)V
    .locals 0

    invoke-static {p0, p1}, La2/b;->A(La2/c;La2/c$a;)V

    return-void
.end method

.method public Y(La2/c$a;Lcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 1
    iput-boolean p1, p0, La2/q1;->u:Z

    .line 2
    :cond_0
    iput p4, p0, La2/q1;->k:I

    return-void
.end method

.method public synthetic Z(La2/c$a;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->L(La2/c;La2/c$a;ZI)V

    return-void
.end method

.method public synthetic a(La2/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->H(La2/c;La2/c$a;Z)V

    return-void
.end method

.method public a0(La2/c$a;Lv2/m;)V
    .locals 5

    .line 1
    iget-object v0, p1, La2/c$a;->d:Lv2/q$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, La2/q1$b;

    iget-object v1, p2, Lv2/m;->c:Lcom/google/android/exoplayer2/k1;

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/k1;

    iget v2, p2, Lv2/m;->d:I

    iget-object v3, p0, La2/q1;->b:La2/r1;

    iget-object v4, p1, La2/c$a;->b:Lcom/google/android/exoplayer2/i3;

    iget-object p1, p1, La2/c$a;->d:Lv2/q$b;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/q$b;

    .line 5
    invoke-interface {v3, v4, p1}, La2/r1;->c(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, La2/q1$b;-><init>(Lcom/google/android/exoplayer2/k1;ILjava/lang/String;)V

    .line 6
    iget p1, p2, Lv2/m;->b:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v0, p0, La2/q1;->q:La2/q1$b;

    goto :goto_0

    .line 8
    :cond_2
    iput-object v0, p0, La2/q1;->p:La2/q1$b;

    goto :goto_0

    .line 9
    :cond_3
    iput-object v0, p0, La2/q1;->o:La2/q1$b;

    :goto_0
    return-void
.end method

.method public synthetic b(La2/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->O(La2/c;La2/c$a;I)V

    return-void
.end method

.method public synthetic b0(La2/c$a;Lcom/google/android/exoplayer2/s1;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->I(La2/c;La2/c$a;Lcom/google/android/exoplayer2/s1;I)V

    return-void
.end method

.method public synthetic c(La2/c$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->g0(La2/c;La2/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c0(La2/c$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, La2/b;->f0(La2/c;La2/c$a;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic d(La2/c$a;Lcom/google/android/exoplayer2/l2$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->l(La2/c;La2/c$a;Lcom/google/android/exoplayer2/l2$b;)V

    return-void
.end method

.method public synthetic d0(La2/c$a;ILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, La2/b;->q(La2/c;La2/c$a;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic e(La2/c$a;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La2/b;->i0(La2/c;La2/c$a;JI)V

    return-void
.end method

.method public e0(La2/c$a;IJJ)V
    .locals 5

    .line 1
    iget-object p5, p1, La2/c$a;->d:Lv2/q$b;

    if-eqz p5, :cond_2

    .line 2
    iget-object p6, p0, La2/q1;->b:La2/r1;

    iget-object p1, p1, La2/c$a;->b:Lcom/google/android/exoplayer2/i3;

    .line 3
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lv2/q$b;

    .line 4
    invoke-interface {p6, p1, p5}, La2/r1;->c(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p5, p0, La2/q1;->h:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    .line 6
    iget-object p6, p0, La2/q1;->g:Ljava/util/HashMap;

    invoke-virtual {p6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    .line 7
    iget-object v0, p0, La2/q1;->h:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    if-nez p5, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    add-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 9
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p3, p0, La2/q1;->g:Ljava/util/HashMap;

    if-nez p6, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    int-to-long p4, p2

    add-long/2addr v1, p4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 12
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public synthetic f(La2/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->y(La2/c;La2/c$a;I)V

    return-void
.end method

.method public synthetic f0(La2/c$a;IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La2/b;->B(La2/c;La2/c$a;IJ)V

    return-void
.end method

.method public synthetic g(La2/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->z(La2/c;La2/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic g0(La2/c$a;Lcom/google/android/exoplayer2/k1;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->g(La2/c;La2/c$a;Lcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method public synthetic h(La2/c$a;ILb2/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->o(La2/c;La2/c$a;ILb2/e;)V

    return-void
.end method

.method public synthetic h0(La2/c$a;)V
    .locals 0

    invoke-static {p0, p1}, La2/b;->W(La2/c;La2/c$a;)V

    return-void
.end method

.method public synthetic i(La2/c$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->d(La2/c;La2/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public i0(La2/c$a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic j(La2/c$a;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La2/b;->b(La2/c;La2/c$a;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic j0(La2/c$a;)V
    .locals 0

    invoke-static {p0, p1}, La2/b;->x(La2/c;La2/c$a;)V

    return-void
.end method

.method public synthetic k(La2/c$a;Lcom/google/android/exoplayer2/o;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->s(La2/c;La2/c$a;Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public synthetic k0(La2/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->U(La2/c;La2/c$a;I)V

    return-void
.end method

.method public synthetic l(La2/c$a;)V
    .locals 0

    invoke-static {p0, p1}, La2/b;->w(La2/c;La2/c$a;)V

    return-void
.end method

.method public l0(La2/c$a;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p1, La2/c$a;->d:Lv2/q$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lv2/o;->b()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, La2/q1;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, La2/q1;->A0()V

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, La2/q1;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, La2/q1;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic m(La2/c$a;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La2/b;->e0(La2/c;La2/c$a;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic m0(La2/c$a;Lv2/j;Lv2/m;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->E(La2/c;La2/c$a;Lv2/j;Lv2/m;)V

    return-void
.end method

.method public synthetic n(La2/c$a;Lcom/google/android/exoplayer2/x1;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->J(La2/c;La2/c$a;Lcom/google/android/exoplayer2/x1;)V

    return-void
.end method

.method public synthetic n0(La2/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->a(La2/c;La2/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic o(La2/c$a;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->R(La2/c;La2/c$a;ZI)V

    return-void
.end method

.method public synthetic o0(La2/c$a;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, La2/b;->k(La2/c;La2/c$a;IJJ)V

    return-void
.end method

.method public synthetic p(La2/c$a;Lb2/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->f(La2/c;La2/c$a;Lb2/e;)V

    return-void
.end method

.method public synthetic p0(La2/c$a;)V
    .locals 0

    invoke-static {p0, p1}, La2/b;->u(La2/c;La2/c$a;)V

    return-void
.end method

.method public synthetic q(La2/c$a;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->i(La2/c;La2/c$a;J)V

    return-void
.end method

.method public q0(La2/c$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic r(La2/c$a;Lv2/j;Lv2/m;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->F(La2/c;La2/c$a;Lv2/j;Lv2/m;)V

    return-void
.end method

.method public synthetic r0(La2/c$a;)V
    .locals 0

    invoke-static {p0, p1}, La2/b;->v(La2/c;La2/c$a;)V

    return-void
.end method

.method public synthetic s(La2/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->a0(La2/c;La2/c$a;I)V

    return-void
.end method

.method public synthetic s0(La2/c$a;ILb2/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->p(La2/c;La2/c$a;ILb2/e;)V

    return-void
.end method

.method public synthetic t(La2/c$a;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/b;->Z(La2/c;La2/c$a;II)V

    return-void
.end method

.method public t0(La2/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    iput-object p2, p0, La2/q1;->n:Lcom/google/android/exoplayer2/PlaybackException;

    return-void
.end method

.method public u(Lcom/google/android/exoplayer2/l2;La2/c$b;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, La2/c$b;->d()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p2}, La2/q1;->K0(La2/c$b;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    invoke-direct {p0, p1, p2}, La2/q1;->Q0(Lcom/google/android/exoplayer2/l2;La2/c$b;)V

    .line 5
    invoke-direct {p0, v0, v1}, La2/q1;->M0(J)V

    .line 6
    invoke-direct {p0, p1, p2, v0, v1}, La2/q1;->O0(Lcom/google/android/exoplayer2/l2;La2/c$b;J)V

    .line 7
    invoke-direct {p0, v0, v1}, La2/q1;->L0(J)V

    .line 8
    invoke-direct {p0, p1, p2, v0, v1}, La2/q1;->N0(Lcom/google/android/exoplayer2/l2;La2/c$b;J)V

    const/16 p1, 0x404

    .line 9
    invoke-virtual {p2, p1}, La2/c$b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, La2/q1;->b:La2/r1;

    invoke-virtual {p2, p1}, La2/c$b;->c(I)La2/c$a;

    move-result-object p1

    invoke-interface {v0, p1}, La2/r1;->g(La2/c$a;)V

    :cond_1
    return-void
.end method

.method public synthetic u0(La2/c$a;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, La2/b;->l0(La2/c;La2/c$a;IIIF)V

    return-void
.end method

.method public synthetic v(La2/c$a;Lx2/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->n(La2/c;La2/c$a;Lx2/e;)V

    return-void
.end method

.method public synthetic v0(La2/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->D(La2/c;La2/c$a;Z)V

    return-void
.end method

.method public synthetic w(La2/c$a;)V
    .locals 0

    invoke-static {p0, p1}, La2/b;->Q(La2/c;La2/c$a;)V

    return-void
.end method

.method public synthetic w0(La2/c$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La2/b;->T(La2/c;La2/c$a;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic x(La2/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->X(La2/c;La2/c$a;Z)V

    return-void
.end method

.method public synthetic x0(La2/c$a;Lb2/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->e(La2/c;La2/c$a;Lb2/e;)V

    return-void
.end method

.method public y(La2/c$a;Lk3/y;)V
    .locals 3

    .line 1
    iget-object p1, p0, La2/q1;->o:La2/q1$b;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, La2/q1$b;->a:Lcom/google/android/exoplayer2/k1;

    iget v1, v0, Lcom/google/android/exoplayer2/k1;->r:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k1;->b()Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    iget v1, p2, Lk3/y;->a:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k1$b;->j0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    iget p2, p2, Lk3/y;->b:I

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/k1$b;->Q(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p2

    .line 7
    new-instance v0, La2/q1$b;

    iget v1, p1, La2/q1$b;->b:I

    iget-object p1, p1, La2/q1$b;->c:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p1}, La2/q1$b;-><init>(Lcom/google/android/exoplayer2/k1;ILjava/lang/String;)V

    iput-object v0, p0, La2/q1;->o:La2/q1$b;

    :cond_0
    return-void
.end method

.method public synthetic z(La2/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/b;->K(La2/c;La2/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method
