.class Lcom/guochao/faceshow/utils/LiveInfoUtils$2;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroidx/fragment/app/Fragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$itemData:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/utils/LiveInfoUtils$2;->val$itemData:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
