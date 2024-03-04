.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->checkBackToLast(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$h;->a:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$h;->a:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    :cond_0
    return-void
.end method
