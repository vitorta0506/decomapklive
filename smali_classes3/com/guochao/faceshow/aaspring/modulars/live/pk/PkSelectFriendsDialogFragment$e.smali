.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$e;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->content:Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->Y1(Landroid/view/View;)V

    return-void
.end method
