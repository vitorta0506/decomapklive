.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackSuccessActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02df

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a04d6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0050

    return v0
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
