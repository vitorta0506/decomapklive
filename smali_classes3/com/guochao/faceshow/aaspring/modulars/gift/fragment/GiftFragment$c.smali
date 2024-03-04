.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showChargeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;II)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->a:I

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_2

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object p1

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->a:I

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1000(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Z

    move-result p2

    const-string v0, "interceptClick"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->b:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "isToken"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1100(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1100(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
