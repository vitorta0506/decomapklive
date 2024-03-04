.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->content:Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    const/4 p1, 0x0

    return p1
.end method
