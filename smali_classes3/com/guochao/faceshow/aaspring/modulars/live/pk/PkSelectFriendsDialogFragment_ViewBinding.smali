.class public Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cd4

    const-string v2, "field \'tvPkFriendToMatch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->tvPkFriendToMatch:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036d

    const-string v2, "field \'etSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->etSearch:Landroid/widget/EditText;

    const v0, 0x7f0a02a8

    const-string v1, "field \'deleteEdit\' and method \'onViewClicked\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'deleteEdit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->deleteEdit:Landroid/widget/ImageView;

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0935

    const-string v2, "field \'rcvList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->rcvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0332

    const-string v2, "field \'emptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->emptyView:Landroid/widget/ImageView;

    .line 11
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a070b

    const-string v2, "field \'loadingAnim\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->loadingAnim:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 12
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0255

    const-string v2, "field \'content\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->content:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->tvPkFriendToMatch:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->etSearch:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->deleteEdit:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->rcvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->emptyView:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->loadingAnim:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->content:Landroid/widget/LinearLayout;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
