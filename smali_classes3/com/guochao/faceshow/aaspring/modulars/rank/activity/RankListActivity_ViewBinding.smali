.class public Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0100

    const-string v2, "field \'backIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->backIV:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->backIV:Landroid/widget/ImageView;

    .line 4
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity_ViewBinding;->unbind()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
