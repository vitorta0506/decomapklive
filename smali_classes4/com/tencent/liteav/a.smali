.class public final Lcom/tencent/liteav/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/renderer/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/a$a;
    }
.end annotation


# instance fields
.field public A:Lcom/tencent/liteav/txcvodplayer/renderer/d;

.field public B:Ljava/lang/Object;

.field public C:Lcom/tencent/rtmp/ui/TXSubtitleView;

.field private D:Landroid/content/Context;

.field private E:F

.field private F:I

.field private G:I

.field private H:I

.field private I:Lcom/tencent/liteav/a$a;

.field private J:Z

.field private K:Z

.field private L:Lcom/tencent/liteav/txcvodplayer/renderer/c;

.field private M:Lcom/tencent/liteav/txcplayer/d;

.field private N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

.field public a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field public b:Lcom/tencent/rtmp/ITXLivePlayListener;

.field public c:Lcom/tencent/rtmp/ITXVodPlayListener;

.field public d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/rtmp/TXVodPlayer;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

.field public f:Lcom/tencent/rtmp/TXVodPlayConfig;

.field public g:Lcom/tencent/liteav/txcvodplayer/a/a;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Landroid/view/Surface;

.field public m:Z

.field public n:Ljava/lang/String;

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:Lcom/tencent/rtmp/TXPlayInfoParams;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:I

.field public w:Lcom/tencent/liteav/txcvodplayer/b/d;

.field public x:Z

.field public y:Z

.field protected z:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/tencent/liteav/base/util/r;->a()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/a;->D:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/tencent/liteav/a;->i:Z

    .line 6
    iput-boolean v1, p0, Lcom/tencent/liteav/a;->j:Z

    .line 7
    iput-boolean v1, p0, Lcom/tencent/liteav/a;->k:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    iput v1, p0, Lcom/tencent/liteav/a;->E:F

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/tencent/liteav/a;->m:Z

    const/16 v2, -0x3e8

    .line 10
    iput v2, p0, Lcom/tencent/liteav/a;->F:I

    .line 11
    iput-boolean v1, p0, Lcom/tencent/liteav/a;->p:Z

    const-string v2, ""

    .line 12
    iput-object v2, p0, Lcom/tencent/liteav/a;->t:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/tencent/liteav/a;->u:Z

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/tencent/liteav/a;->v:I

    .line 15
    new-instance v1, Lcom/tencent/liteav/a$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/a$3;-><init>(Lcom/tencent/liteav/a;)V

    iput-object v1, p0, Lcom/tencent/liteav/a;->M:Lcom/tencent/liteav/txcplayer/d;

    .line 16
    new-instance v1, Lcom/tencent/liteav/a$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/a$4;-><init>(Lcom/tencent/liteav/a;)V

    iput-object v1, p0, Lcom/tencent/liteav/a;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/a;->D:Landroid/content/Context;

    .line 18
    invoke-static {v1}, Lcom/tencent/liteav/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    const-string v1, "liteav"

    .line 19
    invoke-static {v1}, Lcom/tencent/liteav/base/ContextUtils;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 20
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/a;->o:Ljava/util/Map;

    .line 21
    iput-object v0, p0, Lcom/tencent/liteav/a;->b:Lcom/tencent/rtmp/ITXLivePlayListener;

    .line 22
    iput-object v0, p0, Lcom/tencent/liteav/a;->c:Lcom/tencent/rtmp/ITXVodPlayListener;

    .line 23
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->checkInit(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 25
    iget-object p1, p0, Lcom/tencent/liteav/a;->M:Lcom/tencent/liteav/txcplayer/d;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setListener(Lcom/tencent/liteav/txcplayer/d;)V

    .line 26
    iget-object p1, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v0, p0, Lcom/tencent/liteav/a;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setTXCOnSubtitleFrameDataListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/a;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/a;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/liteav/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/liteav/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/b/d;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tencent/liteav/a;->w:Lcom/tencent/liteav/txcvodplayer/b/d;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/a;Lcom/tencent/liteav/txcvodplayer/renderer/c;)Lcom/tencent/liteav/txcvodplayer/renderer/c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/a;->L:Lcom/tencent/liteav/txcvodplayer/renderer/c;

    return-object p1
.end method

.method public static a(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/TXTrackInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/TXTrackInfo;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/rtmp/TXTrackInfo;

    .line 176
    invoke-virtual {v1}, Lcom/tencent/rtmp/TXTrackInfo;->getTrackType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x3a99

    if-ne p1, v0, :cond_2

    .line 192
    iget-object p1, p0, Lcom/tencent/liteav/a;->b:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1, p2}, Lcom/tencent/rtmp/ITXLivePlayListener;->onNetStatus(Landroid/os/Bundle;)V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/a;->c:Lcom/tencent/rtmp/ITXVodPlayListener;

    if-eqz p1, :cond_4

    .line 195
    iget-object p1, p0, Lcom/tencent/liteav/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/rtmp/TXVodPlayer;

    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/tencent/liteav/a;->c:Lcom/tencent/rtmp/ITXVodPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp/ITXVodPlayListener;->onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V

    :cond_1
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/a;->b:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz v0, :cond_3

    .line 198
    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp/ITXLivePlayListener;->onPlayEvent(ILandroid/os/Bundle;)V

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/a;->c:Lcom/tencent/rtmp/ITXVodPlayListener;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/tencent/liteav/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/TXVodPlayer;

    if-eqz v0, :cond_4

    .line 201
    iget-object v1, p0, Lcom/tencent/liteav/a;->c:Lcom/tencent/rtmp/ITXVodPlayListener;

    invoke-interface {v1, v0, p1, p2}, Lcom/tencent/rtmp/ITXVodPlayListener;->onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/a;ILandroid/os/Bundle;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/a;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 141
    invoke-static {p0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 142
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method private static a(Ljava/util/List;[Lcom/tencent/thumbplayer/api/TPTrackInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/TXTrackInfo;",
            ">;[",
            "Lcom/tencent/thumbplayer/api/TPTrackInfo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 179
    aget-object v1, p1, v0

    .line 180
    new-instance v2, Lcom/tencent/rtmp/TXTrackInfo;

    invoke-direct {v2}, Lcom/tencent/rtmp/TXTrackInfo;-><init>()V

    .line 181
    iput v0, v2, Lcom/tencent/rtmp/TXTrackInfo;->trackIndex:I

    .line 182
    iget v3, v1, Lcom/tencent/thumbplayer/api/TPTrackInfo;->trackType:I

    iput v3, v2, Lcom/tencent/rtmp/TXTrackInfo;->trackType:I

    .line 183
    iget-object v3, v1, Lcom/tencent/thumbplayer/api/TPTrackInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/rtmp/TXTrackInfo;->name:Ljava/lang/String;

    .line 184
    iget-boolean v3, v1, Lcom/tencent/thumbplayer/api/TPTrackInfo;->isSelected:Z

    iput-boolean v3, v2, Lcom/tencent/rtmp/TXTrackInfo;->isSelected:Z

    .line 185
    iget-boolean v3, v1, Lcom/tencent/thumbplayer/api/TPTrackInfo;->isExclusive:Z

    iput-boolean v3, v2, Lcom/tencent/rtmp/TXTrackInfo;->isExclusive:Z

    .line 186
    iget-boolean v1, v1, Lcom/tencent/thumbplayer/api/TPTrackInfo;->isInternal:Z

    iput-boolean v1, v2, Lcom/tencent/rtmp/TXTrackInfo;->isInternal:Z

    .line 187
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/liteav/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/liteav/a;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/tencent/liteav/a;->m:Z

    return p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "&oversign="

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "&"

    const/4 v7, 0x0

    const-string v8, "="

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v10, v3, 0x1

    .line 26
    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 27
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 28
    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 29
    array-length v11, v10

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    const/4 v11, 0x4

    .line 30
    aget-object v12, v10, v11

    invoke-virtual {v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v9

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x5

    aget-object v13, v10, v12

    invoke-virtual {v13, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v9

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 31
    aget-object v13, v10, v7

    invoke-virtual {v13, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v14, v10, v9

    .line 32
    invoke-virtual {v14, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v9

    aget-object v15, v10, v5

    invoke-virtual {v15, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v9

    aget-object v5, v10, v4

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 33
    invoke-static {v13, v14, v15, v5}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 34
    aget-object v11, v10, v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-static {v5, v11}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget-object v10, v10, v12

    .line 35
    invoke-virtual {v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-static {v5, v10}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {v0, v11, v5}, Lcom/tencent/liteav/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v2, :cond_1

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "http"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    invoke-static {v1}, Lcom/tencent/liteav/txcplayer/b/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, v0, Lcom/tencent/liteav/a;->n:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 42
    invoke-static {v1, v2}, Lcom/tencent/liteav/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TXCVodPlayer"

    const-string v10, ""

    if-eqz v3, :cond_e

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    .line 46
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 47
    array-length v11, v3

    const-string v12, "0"

    if-lez v11, :cond_a

    .line 48
    array-length v11, v3

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v4, v11, :cond_9

    aget-object v9, v3, v4

    .line 49
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 p1, v1

    .line 50
    array-length v1, v7

    move-object/from16 v18, v3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    const/4 v1, 0x0

    .line 51
    aget-object v3, v7, v1

    const-string/jumbo v1, "spfileid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 52
    aget-object v10, v7, v1

    move/from16 v3, v16

    add-int/lit8 v16, v3, 0x1

    move-object/from16 v17, v8

    move/from16 v3, v16

    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    move/from16 v3, v16

    const/16 v16, 0x0

    .line 53
    aget-object v1, v7, v16

    move-object/from16 v17, v8

    const-string/jumbo v8, "spdrmtype"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 54
    aget-object v13, v7, v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    .line 55
    aget-object v8, v7, v16

    const-string/jumbo v1, "spappid"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    .line 56
    aget-object v14, v7, v1

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    .line 57
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 59
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    goto :goto_2

    :cond_8
    move-object/from16 v17, v8

    move/from16 v3, v16

    const/4 v1, 0x1

    const/16 v16, 0x0

    const-string v7, "fieldIds.length != 2"

    .line 60
    invoke-static {v5, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v16, v3

    move-object/from16 v8, v17

    move-object/from16 v3, v18

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 p1, v1

    move/from16 v3, v16

    const/4 v1, 0x1

    const/4 v4, 0x3

    const/16 v16, 0x0

    if-ne v3, v4, :cond_b

    const-string v12, "1"

    const/4 v7, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 p1, v1

    const/16 v16, 0x0

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    :cond_b
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_d

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "spfileid, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", spdrmtype= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", spappid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, v0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    .line 63
    iput-object v10, v1, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    .line 64
    iput-object v13, v1, Lcom/tencent/liteav/txcvodplayer/a/a;->z:Ljava/lang/String;

    .line 65
    iget-object v3, v1, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 66
    iput-object v14, v1, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    .line 67
    :cond_c
    iget-object v1, v0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    .line 68
    iput-object v12, v1, Lcom/tencent/liteav/txcvodplayer/a/a;->s:Ljava/lang/String;

    :cond_d
    move-object v10, v15

    goto :goto_4

    :cond_e
    move-object/from16 p1, v1

    const/16 v16, 0x0

    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_f

    .line 69
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 71
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_f
    move-object/from16 v1, p1

    .line 72
    :cond_10
    :goto_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "parsePlayUrl url: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    array-length v1, v0

    if-lez v1, :cond_1

    .line 19
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "voddrm.token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic c(Lcom/tencent/liteav/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/a;->g()V

    return-void
.end method

.method private c(Z)V
    .locals 8

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/a;->B:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "enableCustomVideoCapture"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 10
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "TXCVodPlayer"

    const-string v1, "setTRTCCustomVideoCapture error "

    .line 12
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/a;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/liteav/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/liteav/a;->y:Z

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/renderer/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/a;->A:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/liteav/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/a;->h:Z

    return p0
.end method

.method static synthetic j(Lcom/tencent/liteav/a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/a;->k:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/liteav/a;)Lcom/tencent/rtmp/TXVodPlayConfig;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    return-object p0
.end method

.method static synthetic l(Lcom/tencent/liteav/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/a;->h:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/liteav/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/a;->k:Z

    return p0
.end method

.method static synthetic n(Lcom/tencent/liteav/a;)Lcom/tencent/liteav/txcvodplayer/renderer/c;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/a;->L:Lcom/tencent/liteav/txcvodplayer/renderer/c;

    return-object p0
.end method

.method static synthetic o(Lcom/tencent/liteav/a;)Lcom/tencent/rtmp/ui/TXSubtitleView;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/a;->C:Lcom/tencent/rtmp/ui/TXSubtitleView;

    return-object p0
.end method

.method static synthetic p(Lcom/tencent/liteav/a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/a;->p:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "TXCVodPlayer"

    if-eqz v1, :cond_e

    .line 65
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 66
    :cond_0
    new-instance v3, Lcom/tencent/liteav/txcvodplayer/a/a;

    iget-object v4, v0, Lcom/tencent/liteav/a;->D:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/tencent/liteav/txcvodplayer/a/a;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    .line 67
    invoke-direct/range {p0 .. p1}, Lcom/tencent/liteav/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    iget-object v3, v0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    .line 69
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "setUrl: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TXCVodPlayCollection"

    invoke-static {v5, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object v8, v3, Lcom/tencent/liteav/txcvodplayer/a/a;->b:Ljava/lang/String;

    .line 71
    iget-object v3, v0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    iget-boolean v4, v0, Lcom/tencent/liteav/a;->j:Z

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(Z)V

    .line 72
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/c;->a()Lcom/tencent/liteav/sdk/common/LicenseChecker$d;

    move-result-object v3

    sget-object v4, Lcom/tencent/liteav/sdk/common/LicenseChecker$d;->a:Lcom/tencent/liteav/sdk/common/LicenseChecker$d;

    const/16 v11, 0x7cd

    const/4 v5, -0x5

    const-string v12, ""

    const/4 v13, 0x0

    if-eq v3, v4, :cond_1

    .line 73
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/VodPlayerControl;->getPlayerLicenceControlStrategy()I

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "startPlay error, licence check failed(-5)! click the link to apply trial licence: https://cloud.tencent.com/act/event/License .Official licence requires payment."

    .line 74
    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "EVT_MSG"

    const-string v6, "VOD_PLAY_ERR_INVALID_LICENCE(-5)"

    .line 76
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {v0, v5, v3}, Lcom/tencent/liteav/a;->a(ILandroid/os/Bundle;)V

    .line 78
    new-instance v3, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const v15, 0xc34f

    const/16 v16, 0x3ec

    const/16 v18, 0x1

    const/16 v19, 0x1

    const-string v17, ""

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    .line 79
    invoke-virtual {v3, v11, v13, v12}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    .line 80
    iget-object v3, v0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    invoke-virtual {v3}, Lcom/tencent/liteav/txcvodplayer/a/a;->a()V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_2

    return v5

    .line 81
    :cond_2
    iput-object v1, v0, Lcom/tencent/liteav/a;->t:Ljava/lang/String;

    .line 82
    iget v1, v0, Lcom/tencent/liteav/a;->F:I

    .line 83
    invoke-virtual {v0, v13}, Lcom/tencent/liteav/a;->a(Z)I

    .line 84
    iput v1, v0, Lcom/tencent/liteav/a;->F:I

    .line 85
    iget-object v1, v0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v1, :cond_4

    .line 86
    invoke-virtual {v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->clearLog()V

    .line 87
    iget-object v1, v0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 88
    iget-object v1, v0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 89
    invoke-static {v1}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 90
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    iget-object v3, v0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object v3, v0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v3, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 92
    iget-object v3, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;)V

    .line 93
    :cond_3
    iget-object v1, v0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {v1, v13}, Lcom/tencent/liteav/a;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)V

    goto :goto_1

    .line 94
    :cond_4
    iget-object v1, v0, Lcom/tencent/liteav/a;->l:Landroid/view/Surface;

    if-eqz v1, :cond_5

    .line 95
    iget-object v3, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    .line 96
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/tencent/liteav/a;->A:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    if-eqz v1, :cond_6

    .line 97
    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/e;->a(Lcom/tencent/liteav/txcvodplayer/renderer/d;)Ljava/lang/Runnable;

    move-result-object v3

    const-string v4, "Start"

    invoke-virtual {v1, v3, v4}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    :cond_6
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    if-eqz v1, :cond_7

    .line 100
    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Lcom/tencent/liteav/txcplayer/common/b;->a(Ljava/lang/String;)V

    .line 102
    :cond_7
    iget-object v1, v0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/a;->a(Lcom/tencent/rtmp/TXVodPlayConfig;)V

    .line 103
    iget-object v1, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v3, v0, Lcom/tencent/liteav/a;->o:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setPrivateConfig(Ljava/util/Map;)V

    .line 104
    iput-boolean v13, v0, Lcom/tencent/liteav/a;->h:Z

    .line 105
    iget-object v1, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget v3, v0, Lcom/tencent/liteav/a;->z:F

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setStartTime(F)V

    .line 106
    iget-object v1, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v3, v0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v3}, Lcom/tencent/rtmp/TXVodPlayConfig;->getPlayerType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setPlayerType(I)V

    .line 107
    iget-object v1, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean v3, v0, Lcom/tencent/liteav/a;->i:Z

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Z)Z

    .line 108
    iget-object v1, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1, v8}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 109
    iget-object v1, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean v3, v0, Lcom/tencent/liteav/a;->j:Z

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAutoPlay(Z)V

    .line 110
    iget-object v1, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean v3, v0, Lcom/tencent/liteav/a;->u:Z

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setMute(Z)V

    .line 111
    iget v1, v0, Lcom/tencent/liteav/a;->v:I

    if-ltz v1, :cond_8

    .line 112
    iget-object v3, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAudioPlayoutVolume(I)V

    .line 113
    :cond_8
    iget v1, v0, Lcom/tencent/liteav/a;->F:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/a;->c(I)V

    .line 114
    iget v1, v0, Lcom/tencent/liteav/a;->E:F

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/a;->a(F)V

    .line 115
    iget v1, v0, Lcom/tencent/liteav/a;->H:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/a;->b(I)V

    .line 116
    iget v1, v0, Lcom/tencent/liteav/a;->G:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/a;->a(I)V

    .line 117
    iget-boolean v1, v0, Lcom/tencent/liteav/a;->x:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/a;->b(Z)V

    .line 118
    iget-object v1, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a()V

    .line 119
    iget-object v1, v0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    iget-object v3, v0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getPlayerType()I

    move-result v3

    .line 120
    iput v3, v1, Lcom/tencent/liteav/txcvodplayer/a/a;->r:I

    .line 121
    iget-boolean v1, v0, Lcom/tencent/liteav/a;->J:Z

    if-eqz v1, :cond_9

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/a;->b()V

    .line 123
    :cond_9
    iget-boolean v1, v0, Lcom/tencent/liteav/a;->K:Z

    if-eqz v1, :cond_a

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/a;->d()V

    .line 125
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startPlay url="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " player="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, v0, Lcom/tencent/liteav/a;->q:Lcom/tencent/rtmp/TXPlayInfoParams;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/tencent/liteav/a;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 127
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/c/a;->a()Lcom/tencent/liteav/txcvodplayer/c/a;

    move-result-object v5

    .line 128
    iget-object v1, v0, Lcom/tencent/liteav/a;->q:Lcom/tencent/rtmp/TXPlayInfoParams;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXPlayInfoParams;->getAppId()I

    move-result v6

    iget-object v1, v0, Lcom/tencent/liteav/a;->q:Lcom/tencent/rtmp/TXPlayInfoParams;

    .line 129
    invoke-virtual {v1}, Lcom/tencent/rtmp/TXPlayInfoParams;->getFileId()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/tencent/liteav/a;->r:Ljava/lang/String;

    iget-object v10, v0, Lcom/tencent/liteav/a;->s:Ljava/lang/String;

    .line 130
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 131
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    .line 132
    :cond_b
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-static/range {v5 .. v10}, Lcom/tencent/liteav/txcvodplayer/c/b;->a(Lcom/tencent/liteav/txcvodplayer/c/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 133
    :cond_c
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "put params empty fileId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " overlayKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " overlayIv:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayInfoProtocolV4Storage"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_d
    :goto_3
    new-instance v1, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const v4, 0xc34f

    const/16 v5, 0x3ec

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v6, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    .line 135
    invoke-virtual {v1, v11, v13, v12}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    .line 136
    iget-object v2, v0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    invoke-virtual {v2}, Lcom/tencent/liteav/txcvodplayer/a/a;->a()V

    :try_start_0
    const-string v2, "com.tencent.liteav.demo.play.SuperPlayerView"

    .line 137
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/16 v2, 0x614

    .line 138
    invoke-virtual {v1, v2, v13, v12}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v13

    .line 139
    :cond_e
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startPlay playUrl is empty, player="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/tencent/liteav/a;->o:Ljava/util/Map;

    const-string v1, "TXC_DRM_KEY_URL"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object p2, p0, Lcom/tencent/liteav/a;->o:Ljava/util/Map;

    new-instance v0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;

    invoke-direct {v0}, Lcom/tencent/rtmp/TXPlayerDrmBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->getDeviceCertificateUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXC_DRM_PROVISION_URL"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object p2, p0, Lcom/tencent/liteav/a;->o:Ljava/util/Map;

    const-string v0, "TXC_DRM_SIMPLE_AES_URL"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object p2, p0, Lcom/tencent/liteav/a;->o:Ljava/util/Map;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "TXC_DRM_ENABLE"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0, p4, p5}, Lcom/tencent/liteav/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Z)I
    .locals 3

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/tencent/liteav/a;->m:Z

    .line 146
    iget-object v1, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b()V

    .line 147
    iget-object v1, p0, Lcom/tencent/liteav/a;->w:Lcom/tencent/liteav/txcvodplayer/b/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1, v2}, Lcom/tencent/liteav/txcvodplayer/b/d;->a(Lcom/tencent/liteav/txcvodplayer/b/e;)V

    .line 149
    iput-object v2, p0, Lcom/tencent/liteav/a;->w:Lcom/tencent/liteav/txcvodplayer/b/d;

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/a;->A:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Z)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_2

    .line 153
    invoke-static {v0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/tencent/liteav/a;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;I)V

    .line 155
    iget-object p1, p0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeVideoView()V

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/a/a;->c()V

    :cond_3
    const/16 p1, -0x3e8

    .line 158
    iput p1, p0, Lcom/tencent/liteav/a;->F:I

    .line 159
    iget-object p1, p0, Lcom/tencent/liteav/a;->L:Lcom/tencent/liteav/txcvodplayer/renderer/c;

    if-eqz p1, :cond_4

    .line 160
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/renderer/c;->a()V

    .line 161
    iput-object v2, p0, Lcom/tencent/liteav/a;->L:Lcom/tencent/liteav/txcvodplayer/renderer/c;

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/a;->C:Lcom/tencent/rtmp/ui/TXSubtitleView;

    if-eqz p1, :cond_5

    .line 163
    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/ui/TXSubtitleView;->show(Landroid/graphics/Bitmap;)V

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/TXTrackInfo;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-static {v1, v0}, Lcom/tencent/liteav/a;->a(Ljava/util/List;[Lcom/tencent/thumbplayer/api/TPTrackInfo;)V

    return-object v1

    .line 173
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    .line 188
    iput p1, p0, Lcom/tencent/liteav/a;->E:F

    .line 189
    iget-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRate(F)V

    .line 190
    iget-object v0, p0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(F)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 164
    iput p1, p0, Lcom/tencent/liteav/a;->G:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderMode(I)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderMode(I)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/a;->A:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    if-eqz v0, :cond_1

    .line 168
    invoke-static {p1}, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 202
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/liteav/a;->l:Landroid/view/Surface;

    .line 203
    iget-object p1, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 9

    const-string v0, "TXCVodPlayer"

    .line 204
    iget-boolean v1, p0, Lcom/tencent/liteav/a;->J:Z

    if-nez v1, :cond_0

    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/a;->I:Lcom/tencent/liteav/a$a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/a;->B:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 206
    new-instance v2, Lcom/tencent/liteav/a$a;

    invoke-direct {v2, v1}, Lcom/tencent/liteav/a$a;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tencent/liteav/a;->I:Lcom/tencent/liteav/a$a;

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/a;->I:Lcom/tencent/liteav/a$a;

    if-eqz v1, :cond_3

    .line 208
    iget-object v2, p0, Lcom/tencent/liteav/a;->B:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    :try_start_1
    iget-object v3, v1, Lcom/tencent/liteav/a$a;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 210
    iget-object v4, v1, Lcom/tencent/liteav/a$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v4, :cond_2

    .line 212
    iget-object v4, v1, Lcom/tencent/liteav/a$a;->e:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v4, v1, Lcom/tencent/liteav/a$a;->f:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    :goto_0
    iget-object v4, v1, Lcom/tencent/liteav/a$a;->c:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 215
    iget-object v5, v1, Lcom/tencent/liteav/a$a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    iget-object v3, v1, Lcom/tencent/liteav/a$a;->h:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    iget-object v3, v1, Lcom/tencent/liteav/a$a;->i:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    iget-object p1, v1, Lcom/tencent/liteav/a$a;->j:Ljava/lang/reflect/Field;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    iget-object p1, v1, Lcom/tencent/liteav/a$a;->k:Ljava/lang/reflect/Field;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    iget-object p1, v1, Lcom/tencent/liteav/a$a;->l:Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    iget-object p1, v1, Lcom/tencent/liteav/a$a;->a:Ljava/lang/Class;

    const-string v1, "sendCustomVideoData"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {p1, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    .line 222
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    aput-object v4, v1, v8

    invoke-virtual {p1, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "sendCustomVideoData method error "

    .line 223
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-void

    :catch_1
    move-exception p1

    const-string v1, "get enableCustomVideoCapture method error "

    .line 224
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/tencent/rtmp/TXVodPlayConfig;)V
    .locals 3

    .line 7
    iput-object p1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-direct {p1}, Lcom/tencent/rtmp/TXVodPlayConfig;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 9
    :cond_0
    new-instance p1, Lcom/tencent/liteav/txcplayer/e;

    invoke-direct {p1}, Lcom/tencent/liteav/txcplayer/e;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getConnectRetryCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_2

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    float-to-int v0, v0

    .line 11
    iput v0, p1, Lcom/tencent/liteav/txcplayer/e;->a:I

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getConnectRetryInterval()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_4

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    float-to-int v0, v0

    .line 13
    iput v0, p1, Lcom/tencent/liteav/txcplayer/e;->b:I

    .line 14
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getTimeout()I

    move-result v0

    int-to-float v0, v0

    float-to-int v0, v0

    .line 15
    iput v0, p1, Lcom/tencent/liteav/txcplayer/e;->c:I

    .line 16
    iget-boolean v0, p0, Lcom/tencent/liteav/a;->k:Z

    .line 17
    iput-boolean v0, p1, Lcom/tencent/liteav/txcplayer/e;->d:Z

    .line 18
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/tencent/liteav/txcplayer/e;->e:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getMaxCacheItems()I

    move-result v0

    .line 21
    iput v0, p1, Lcom/tencent/liteav/txcplayer/e;->f:I

    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getPlayerType()I

    move-result v0

    .line 23
    iput v0, p1, Lcom/tencent/liteav/txcplayer/e;->g:I

    .line 24
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 25
    iput-object v0, p1, Lcom/tencent/liteav/txcplayer/e;->h:Ljava/util/Map;

    .line 26
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->isEnableAccurateSeek()Z

    move-result v0

    .line 27
    iput-boolean v0, p1, Lcom/tencent/liteav/txcplayer/e;->i:Z

    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->isSmoothSwitchBitrate()Z

    move-result v0

    .line 29
    iput-boolean v0, p1, Lcom/tencent/liteav/txcplayer/e;->j:Z

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getCacheMp4ExtName()Ljava/lang/String;

    move-result-object v0

    .line 31
    iput-object v0, p1, Lcom/tencent/liteav/txcplayer/e;->k:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getProgressInterval()I

    move-result v0

    .line 33
    iput v0, p1, Lcom/tencent/liteav/txcplayer/e;->l:I

    .line 34
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getMaxBufferSize()I

    move-result v0

    .line 35
    iput v0, p1, Lcom/tencent/liteav/txcplayer/e;->m:I

    .line 36
    iget-object v0, p0, Lcom/tencent/liteav/a;->q:Lcom/tencent/rtmp/TXPlayInfoParams;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/a;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getOverlayKey()Ljava/lang/String;

    move-result-object v0

    .line 38
    iput-object v0, p1, Lcom/tencent/liteav/txcplayer/e;->u:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getOverlayIv()Ljava/lang/String;

    move-result-object v0

    .line 40
    iput-object v0, p1, Lcom/tencent/liteav/txcplayer/e;->v:Ljava/lang/String;

    goto :goto_3

    .line 41
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/a;->r:Ljava/lang/String;

    .line 42
    iput-object v0, p1, Lcom/tencent/liteav/txcplayer/e;->u:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/tencent/liteav/a;->s:Ljava/lang/String;

    .line 44
    iput-object v0, p1, Lcom/tencent/liteav/txcplayer/e;->v:Ljava/lang/String;

    .line 45
    :goto_3
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getExtInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 46
    iput-object v0, p1, Lcom/tencent/liteav/txcplayer/e;->x:Ljava/util/Map;

    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->isEnableRenderProcess()Z

    move-result v0

    .line 48
    iput-boolean v0, p1, Lcom/tencent/liteav/txcplayer/e;->z:Z

    .line 49
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->isAutoRotate()Z

    move-result v0

    .line 50
    iput-boolean v0, p1, Lcom/tencent/liteav/txcplayer/e;->y:Z

    .line 51
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getPreferredResolution()J

    move-result-wide v0

    .line 52
    iput-wide v0, p1, Lcom/tencent/liteav/txcplayer/e;->s:J

    .line 53
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->getMediaType()I

    move-result v0

    .line 54
    iput v0, p1, Lcom/tencent/liteav/txcplayer/e;->A:I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setConfig [connectRetryCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getConnectRetryCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(default 3 times)][connectRetryInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 56
    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getConnectRetryInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(default 3s,min:3s max:30s)][vodTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(default 10s)][enableHardwareDecoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/a;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "(default false)][cacheFolderPath for mp4/HLS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 57
    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][maxCacheItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getMaxCacheItems()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][enableAccurateSeek:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 58
    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->isEnableAccurateSeek()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "(default true)][autoRotate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->isAutoRotate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "(default true)][HLS smoothSwitchBitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 59
    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->isSmoothSwitchBitrate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "(default false)][progressInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getProgressInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(default 0.5s)][preload maxBufferSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getMaxBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][mOverlayKey for HLS Encrypt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 60
    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getOverlayKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][mOverlayIv for HLS Encrypt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getOverlayIv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][mEnableRenderProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->isEnableRenderProcess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "][mPreferredResolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 61
    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getPreferredResolution()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "][mMediaType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->getMediaType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayer"

    .line 62
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setConfig(Lcom/tencent/liteav/txcplayer/e;)V

    .line 64
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->isEnableRenderProcess()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->setEnableRenderProcess(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/tencent/liteav/a;->r:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/tencent/liteav/a;->s:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/tencent/liteav/a;->J:Z

    .line 18
    invoke-direct {p0, v0}, Lcom/tencent/liteav/a;->c(Z)V

    return-void
.end method

.method public final b(F)V
    .locals 1

    .line 7
    iput p1, p0, Lcom/tencent/liteav/a;->z:F

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setStartTime(F)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 3
    iput p1, p0, Lcom/tencent/liteav/a;->H:I

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setVideoRotationDegree(I)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/a;->A:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 5

    .line 9
    iput-boolean p1, p0, Lcom/tencent/liteav/a;->x:Z

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/a;->a:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 11
    invoke-static {v0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->isAutoRotate()Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getMetaRotationDegree()I

    move-result v1

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getMetaRotationDegree()I

    move-result v1

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleY(F)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 15
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/a/a;->b(Z)V

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/tencent/liteav/a;->J:Z

    .line 7
    invoke-direct {p0, v0}, Lcom/tencent/liteav/a;->c(Z)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setBitrateIndex(I)V

    .line 3
    iput p1, p0, Lcom/tencent/liteav/a;->F:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/tencent/liteav/a;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/a;->g:Lcom/tencent/liteav/txcvodplayer/a/a;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/a;->f:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->isSmoothSwitchBitrate()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->c(Z)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/a;->K:Z

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/a;->K:Z

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 4
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->unpublishAudioToNetwork()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/a;->l:Landroid/view/Surface;

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/a;->e:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/a;->o:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "TXC_DRM_ENABLE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
