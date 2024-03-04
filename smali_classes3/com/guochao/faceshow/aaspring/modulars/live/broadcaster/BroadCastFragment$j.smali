.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->t5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->f()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->P()V

    .line 5
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setLiving(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->w5()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->m:Z

    :cond_1
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
