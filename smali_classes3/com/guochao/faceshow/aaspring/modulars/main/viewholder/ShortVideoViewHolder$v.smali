.class public Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/rtmp/ITXVodPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "v"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->c:Z

    return p0
.end method


# virtual methods
.method public onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayEvent"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_8

    const/16 p1, 0x7d4

    const/4 v1, 0x1

    if-eq p2, p1, :cond_6

    const/16 p1, 0x7d5

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "EVT_PLAY_PROGRESS_MS"

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "EVT_PLAYABLE_DURATION_MS"

    .line 3
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 v2, 0x32

    const/16 v3, 0x8

    if-le p1, v2, :cond_1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->a:Z

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->mCoverImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->k(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Z)Z

    :cond_1
    const-string v2, "EVT_PLAY_DURATION_MS"

    .line 8
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-ne p3, p1, :cond_2

    .line 9
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->c:Z

    :cond_2
    add-int/lit16 p1, p3, -0x3e8

    if-lt p2, p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-boolean v2, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C:Z

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->E(Z)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_5

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->n:Landroid/widget/ProgressBar;

    mul-int/lit8 p2, p2, 0x64

    div-int/2addr p2, p3

    invoke-virtual {p1, p2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->n:Landroid/widget/ProgressBar;

    mul-int/lit8 p2, p2, 0x64

    div-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 17
    :cond_6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->a:Z

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->b:Z

    if-nez p1, :cond_7

    .line 20
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->video_play_success:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 22
    :cond_7
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->b:Z

    goto :goto_0

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->d:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
