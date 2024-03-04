.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;,
        Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;,
        Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

.field mImageViewPlayBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewPlayCenter:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSeekBar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSimpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCurrent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewDuration:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->c()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->d()V

    :goto_0
    return-void
.end method

.method public clickView(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->d()V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f(I)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0051

    return v0
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f0a042c

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const v1, 0x7f06033e

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    const-string v1, "#DDDDDD"

    .line 3
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b(II)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mSimpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->e(Landroid/net/Uri;)V

    const-string v0, ""

    .line 10
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->a()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->c()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$b;->d()V

    return-void
.end method
