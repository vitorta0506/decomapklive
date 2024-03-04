.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;

    .line 2
    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;->b:I

    const v0, 0x7f120481

    if-eq p1, v0, :cond_2

    const v0, 0x7f120492

    if-eq p1, v0, :cond_1

    const v0, 0x7f120803

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->c:Ld9/g;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ld9/g;->c0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->c:Ld9/g;

    invoke-interface {p1}, Ld9/g;->switchCamera()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->c:Ld9/g;

    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->C()V

    :cond_3
    :goto_0
    return-void
.end method
