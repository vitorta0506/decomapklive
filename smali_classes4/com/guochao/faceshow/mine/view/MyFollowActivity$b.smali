.class Lcom/guochao/faceshow/mine/view/MyFollowActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/MyFollowActivity;->b0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/bean/FollowBean;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/MyFollowActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/MyFollowActivity;Lcom/guochao/faceshow/bean/FollowBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$b;->b:Lcom/guochao/faceshow/mine/view/MyFollowActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$b;->a:Lcom/guochao/faceshow/bean/FollowBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$b;->a:Lcom/guochao/faceshow/bean/FollowBean;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FollowBean;->liveData:Lcom/guochao/faceshow/bean/FollowBean$LiveData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/FollowBean$LiveData;->getIsLive()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$b;->a:Lcom/guochao/faceshow/bean/FollowBean;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FollowBean;->liveData:Lcom/guochao/faceshow/bean/FollowBean$LiveData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/FollowBean$LiveData;->obtainData()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$b;->a:Lcom/guochao/faceshow/bean/FollowBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/FollowBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setImg(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$b;->b:Lcom/guochao/faceshow/mine/view/MyFollowActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
