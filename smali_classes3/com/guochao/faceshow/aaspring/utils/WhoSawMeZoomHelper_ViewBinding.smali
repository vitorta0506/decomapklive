.class public Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;
.source "SourceFile"


# instance fields
.field private target:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

.field private view7f0a0065:Landroid/view/View;

.field private view7f0a0264:Landroid/view/View;

.field private view7f0a042f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->target:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    const v0, 0x7f0a0065

    const-string v1, "method \'startUserHome\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mActionArea:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->view7f0a0065:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a04c0

    const-string v2, "field \'headImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->headImg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a080d

    const-string v2, "field \'nickName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->nickName:Landroid/widget/TextView;

    .line 9
    const-class v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v1, 0x7f0a0e13

    const-string v2, "field \'vipIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v0, 0x7f0a042f

    const-string v1, "field \'focus\' and method \'requestFocus\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'focus\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->focus:Landroid/widget/ImageView;

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->view7f0a042f:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0264

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 15
    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mConversation:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 16
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->view7f0a0264:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding$3;-><init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->target:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->target:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mActionArea:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->headImg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->nickName:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->focus:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->mConversation:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->view7f0a0065:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->view7f0a0065:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->view7f0a042f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->view7f0a042f:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->view7f0a0264:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper_ViewBinding;->view7f0a0264:Landroid/view/View;

    .line 16
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;->unbind()V

    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
