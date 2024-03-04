.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    .line 3
    const-class v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const v1, 0x7f0a0145

    const-string v2, "field \'bigVideoView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->bigVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 4
    const-class v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const v1, 0x7f0a0aa8

    const-string v2, "field \'smallVideoView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0146

    const-string v2, "field \'bigVideoViewImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->bigVideoViewImg:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0aa9

    const-string v2, "field \'smallVideoViewImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoViewImg:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a09d8

    const-string v2, "field \'rootView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0aab

    const-string v1, "field \'smallBg\' and method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallBg:Landroid/view/View;

    .line 10
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->bigVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->bigVideoViewImg:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallVideoViewImg:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->rootView:Landroid/view/ViewGroup;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->smallBg:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity_ViewBinding;->d:Landroid/view/View;

    .line 11
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
