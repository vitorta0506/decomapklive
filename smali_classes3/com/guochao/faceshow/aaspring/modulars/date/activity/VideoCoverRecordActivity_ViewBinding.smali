.class public Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    .line 3
    const-class v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const v1, 0x7f0a0d5e

    const-string v2, "field \'mTXCloudVideoView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const v0, 0x7f0a094b

    const-string v1, "field \'mProgressBar\' and method \'startRecord\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;

    const-string v3, "field \'mProgressBar\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mProgressBar:Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->d:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0be2

    const-string v1, "field \'mTouchView\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mTouchView:Landroid/view/View;

    const v0, 0x7f0a031c

    const-string v1, "field \'mEffectView\' and method \'showEffect\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 10
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mEffectView:Landroid/view/View;

    .line 11
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->e:Landroid/view/View;

    .line 12
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01af

    const-string v1, "method \'cancel\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->f:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mProgressBar:Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mTouchView:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->mEffectView:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->e:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity_ViewBinding;->f:Landroid/view/View;

    .line 13
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
