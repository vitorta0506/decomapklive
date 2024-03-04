.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0a14

    const-string v2, "field \'searchContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->searchContent:Landroid/widget/EditText;

    const v0, 0x7f0a02a8

    const-string v1, "field \'deleteEdit\' and method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'deleteEdit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->deleteEdit:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding;->d:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a0962

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 10
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a095a

    const-string v2, "field \'recyclerContentArea\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->recyclerContentArea:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->searchContent:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->deleteEdit:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->recyclerContentArea:Landroid/widget/FrameLayout;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity_ViewBinding;->d:Landroid/view/View;

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
