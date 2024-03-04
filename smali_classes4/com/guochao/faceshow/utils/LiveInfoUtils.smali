.class public Lcom/guochao/faceshow/utils/LiveInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLiveInfoAndJumpIfNeed(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setLiveRoomId(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;)V

    return-void
.end method

.method public static jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;Z)V

    return-void
.end method

.method public static jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;Z)V
    .locals 1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;-><init>()V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/utils/LiveInfoUtils$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/utils/LiveInfoUtils$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setRoomList(Ljava/util/List;)V

    const-string p0, "0"

    .line 4
    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setCurrentPage(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setTypeId(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->f(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;II)V

    return-void
.end method

.method public static jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroidx/fragment/app/Fragment;I)V
    .locals 2

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;-><init>()V

    .line 8
    new-instance v1, Lcom/guochao/faceshow/utils/LiveInfoUtils$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/utils/LiveInfoUtils$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setRoomList(Ljava/util/List;)V

    const-string p0, "0"

    .line 9
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setCurrentPage(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setTypeId(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->j(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;II)V

    return-void
.end method
