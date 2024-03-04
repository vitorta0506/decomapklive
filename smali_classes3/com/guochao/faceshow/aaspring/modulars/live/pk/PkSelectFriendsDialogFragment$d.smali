.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$d;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    const/4 p1, 0x0

    return p1
.end method
