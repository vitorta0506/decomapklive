.class public Lcom/guochao/faceshow/mine/view/MyFollowActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/MyFollowActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/MyFollowActivity;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/MyFollowActivity;

    const v0, 0x7f0a095a

    const-string v1, "field \'recyclerContentArea\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/MyFollowActivity;->recyclerContentArea:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/MyFollowActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/MyFollowActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/MyFollowActivity;->recyclerContentArea:Landroid/view/View;

    .line 4
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
