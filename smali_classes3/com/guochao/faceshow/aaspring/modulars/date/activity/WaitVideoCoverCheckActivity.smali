.class public Lcom/guochao/faceshow/aaspring/modulars/date/activity/WaitVideoCoverCheckActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00cf

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f1207ab

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
