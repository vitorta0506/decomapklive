.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;
.super Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

.field b:Lcom/tencent/rtmp/TXVodPlayer;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->createPlayer(Landroid/content/Context;)Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    .line 5
    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXVodPlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;)V

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->a()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->stopPlay(Z)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->c()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mImageViewPlayBtn:Landroid/widget/ImageView;

    const v1, 0x7f0f02cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mImageViewPlayCenter:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->pause()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->d()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mImageViewPlayBtn:Landroid/widget/ImageView;

    const v1, 0x7f0f0298

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mImageViewPlayCenter:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->resume()V

    return-void
.end method

.method e(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->e(Landroid/net/Uri;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->b:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->startVodPlay(Ljava/lang/String;)I

    return-void
.end method
