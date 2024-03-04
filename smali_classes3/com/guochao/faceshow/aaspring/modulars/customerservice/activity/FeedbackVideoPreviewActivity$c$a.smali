.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/rtmp/ITXVodPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V
    .locals 2

    const/16 p1, 0x7d5

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "EVT_PLAY_PROGRESS_MS"

    .line 1
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "EVT_PLAY_DURATION_MS"

    .line 2
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object p3

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mTextViewDuration:Landroid/widget/TextView;

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object p3

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mTextViewCurrent:Landroid/widget/TextView;

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->formatTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
