.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0a14

    const-string v2, "field \'searchContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->searchContent:Landroid/widget/EditText;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a02a8

    const-string v2, "field \'deleteEdit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->deleteEdit:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a0962

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 7
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a095a

    const-string v2, "field \'recyclerContentArea\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->recyclerContentArea:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0332

    const-string v1, "field \'emptyView\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->emptyView:Landroid/view/View;

    .line 9
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09c9

    const-string v2, "field \'rlSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->rlSearch:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->searchContent:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->deleteEdit:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->recyclerContentArea:Landroid/widget/FrameLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->emptyView:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->rlSearch:Landroid/widget/RelativeLayout;

    .line 10
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
