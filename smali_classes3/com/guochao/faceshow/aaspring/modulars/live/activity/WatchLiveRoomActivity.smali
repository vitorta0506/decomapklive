.class public Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$v0;
.implements Lja/a$b;
.implements Lcom/guochao/faceshow/aaspring/manager/im/b$m;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/liveroom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;
    }
.end annotation


# static fields
.field public static L4:Z = false


# instance fields
.field A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

.field B:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;

.field private B3:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;

.field C:Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

.field private C4:I

.field D:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

.field private D4:Z

.field E:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

.field private E4:Z

.field F:Landroid/view/SurfaceView;

.field private F4:Z

.field G:Landroid/widget/FrameLayout;

.field private G4:I

.field H:Landroid/view/View;

.field private H4:I

.field I:Landroid/view/View;

.field I4:Ljava/lang/Runnable;

.field J:Landroid/widget/FrameLayout;

.field private J4:Z

.field K:Lcom/guochao/faceshow/views/SvgaImageViewV2;

.field private K4:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;

.field L:Landroid/widget/ImageView;

.field M:Landroid/widget/ImageView;

.field private N:J

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:Z

.field private final V1:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;

.field V2:Ljava/lang/Runnable;

.field private V3:I

.field private a1:Z

.field private a2:Z

.field public j:Z

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ld9/g;

.field public m:Z

.field public mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field protected t:Z

.field protected u:Z

.field v:Z

.field w:Landroid/os/Handler;

.field x:I

.field y:I

.field z:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->j:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->m:Z

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->n:Z

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->p:I

    .line 7
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->v:Z

    .line 8
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->w:Landroid/os/Handler;

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x:I

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->y:I

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->Q:I

    .line 12
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->R:Z

    .line 13
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->a1:Z

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V1:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;

    .line 15
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->a2:Z

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V2:Ljava/lang/Runnable;

    const/16 v0, 0x9

    .line 17
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V3:I

    const/16 v0, 0x10

    .line 18
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->C4:I

    .line 19
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->D4:Z

    .line 20
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E4:Z

    .line 21
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F4:Z

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G4:I

    .line 23
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->I4:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G4:I

    return p0
.end method

.method static synthetic B0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G4:I

    return p1
.end method

.method static synthetic E0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->a2:Z

    return p1
.end method

.method static synthetic F0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->N:J

    return-wide p1
.end method

.method private F1()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "liveId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveStartTimestamp()Ljava/lang/String;

    move-result-object v2

    const-string v4, "startTime"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v2, "tokens/live/newLive/getLiveInfo"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "likeNum"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 8
    invoke-virtual {v1, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    .line 9
    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method static synthetic G0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->P:Z

    return p0
.end method

.method private G1()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->u:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->R:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->u:Z

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x:I

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->z:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->z:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getDiscoverCounty()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;

    invoke-direct {v2, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)V

    const-string v3, "typeId"

    const-string v4, "20"

    const-string v5, "limit"

    const-string v6, "page"

    if-eqz v1, :cond_2

    const-string v1, "tokens/live/cache/getLiveListByCountryId"

    .line 6
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    iget v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x:I

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    invoke-virtual {v1, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->z:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    .line 10
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getDiscoverCounty()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "countryId"

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 11
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_1

    :cond_2
    const-string v0, "tokens/live/cache/getLiveList"

    .line 12
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 13
    invoke-virtual {v0, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->y:I

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 15
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic H0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->P:Z

    return p1
.end method

.method private H1()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;->Companion:Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;->hasPermissions(Landroid/content/Context;)Z

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.picture_in_picture"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;->watcherIsOpen(Landroid/content/Context;)Z

    move-result v0

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v3}, Ld9/g;->getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F4:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ld9/g;->z1()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic I0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->m1(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic N0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->R:Z

    return p0
.end method

.method private N1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isFromNotification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/event/VoiceRoomInviteCloseEvent;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getRoomID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/guochao/component/voiceliveroom/event/VoiceRoomInviteCloseEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private O1(I)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->n(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->n(I)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    if-lt p1, v2, :cond_1

    add-int/lit8 v3, p1, -0x1

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->o(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->o(ZLjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->n(I)V

    :goto_0
    if-nez p1, :cond_3

    add-int/2addr p1, v2

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->o(ZLjava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_4

    add-int/2addr p1, v2

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->o(ZLjava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p1, v3, :cond_5

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->o(ZLjava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->n(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic P0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->R:Z

    return p1
.end method

.method static synthetic Q0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H1()Z

    move-result p0

    return p0
.end method

.method static synthetic S0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F4:Z

    return p1
.end method

.method private S1(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseView()V

    .line 2
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->stopMini()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4
    sget-object v1, Ld9/c;->d0:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "voice_room"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->a(Ljava/util/List;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->d()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->z:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCurrentPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x:I

    .line 11
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->z:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 12
    :catch_1
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->y:I

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->b()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x:I

    .line 14
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$i;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->setAdapter(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ROOM_POS_KEY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 19
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v2, v1, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m(IZ)V

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->r0()V

    .line 21
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->N1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    return-void

    .line 22
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->finish()V

    return-void
.end method

.method static synthetic T0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H4:I

    return p1
.end method

.method private V1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->K:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->K:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v1, 0x7f110021

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    :cond_2
    return-void
.end method

.method static synthetic W0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G1()V

    return-void
.end method

.method static synthetic X0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V3:I

    return p1
.end method

.method static synthetic Y0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->C4:I

    return p1
.end method

.method static synthetic Z0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)Landroid/app/PictureInPictureParams;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->q1(Z)Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a1(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V1()V

    return-void
.end method

.method static synthetic b1(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x1()V

    return-void
.end method

.method static synthetic d1(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->O1(I)V

    return-void
.end method

.method private h1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivityBeforeWatchRoom()Ljava/lang/Class;

    move-result-object v0

    .line 3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000

    .line 4
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 5
    invoke-super {p0, v2, v1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->hideBackToLast()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v0}, Ld9/g;->getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->startMini(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->finish()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 12
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->D4:Z

    if-eqz v0, :cond_3

    .line 13
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E4:Z

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private i1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/player/GCLivePlayer;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V1()V

    :cond_1
    return-void
.end method

.method private k1()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->z:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->checkSaveCountry(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V

    return-void
.end method

.method private m1(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    .line 6
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private q1(Z)Landroid/app/PictureInPictureParams;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H1()Z

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V3:I

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->C4:I

    .line 6
    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V3:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->C4:I

    if-lez v1, :cond_3

    if-nez p1, :cond_3

    .line 7
    new-instance p1, Landroid/util/Rational;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V3:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->C4:I

    invoke-direct {p1, v1, v2}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Landroid/util/Rational;

    const/16 v1, 0x9

    const/16 v2, 0x10

    invoke-direct {p1, v1, v2}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    .line 10
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p1

    return-object p1
.end method

.method static synthetic v0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V
    .locals 0

    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->q0()V

    return-void
.end method

.method private x1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->D:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->K:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->K:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic y0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->a2:Z

    return p0
.end method


# virtual methods
.method public B1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object v0

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object v1

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_5

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getCurrentItem()I

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLastRoomItem()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLastRoomItem(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1, v1, v3}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m(IZ)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->r0()V

    return-void

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getCurrentItem()I

    move-result v1

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_6

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_6
    add-int/2addr v1, v3

    .line 16
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getCurrentItem()I

    move-result v2

    .line 18
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-le v1, v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->o(ZLjava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->setCurrentItem(I)V

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->r0()V

    return-void
.end method

.method public D1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->a1:Z

    return v0
.end method

.method public I1(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->O:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->W1(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->t:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->O:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->setEnableLoadMore(Z)V

    :cond_1
    return-void
.end method

.method public J1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getAdapter()Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->c(I)V

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->O1(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 7
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->r0()V

    .line 8
    sget-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L4:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d02ce

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H:Landroid/view/View;

    const p1, 0x1020002

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H:Landroid/view/View;

    const v0, 0x7f0a027c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H:Landroid/view/View;

    const v1, 0x7f0a080d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H:Landroid/view/View;

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    new-instance v1, Ljc/f;

    const/16 v2, 0xf

    const/4 v3, 0x5

    const-string v4, "#1A000000"

    .line 17
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljc/f;-><init>(III)V

    invoke-virtual {v0, v1}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object v0

    const v1, 0x7f0f03f3

    .line 18
    invoke-virtual {v0, v1}, Lic/c;->I1(I)Lic/c;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 19
    invoke-virtual {v0, v1, v1}, Lic/c;->H1(II)Lic/c;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_5

    const/4 p1, 0x1

    .line 22
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->q1(Z)Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    :cond_5
    return-void
.end method

.method public L1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->a2:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->q0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public P1()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Q1(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getCurrentItem()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->setIndexOnly(I)V

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "remove"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public R1(Lz8/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lz8/b;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {p1}, Ld9/g;->D0()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/player/GCLivePlayer;->setMute(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setShowedFloatFromLiveRoom(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {p1}, Ld9/g;->M1()V

    :cond_1
    return-void
.end method

.method public T1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->a1:Z

    return-void
.end method

.method public U1(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->Q:I

    return-void
.end method

.method public W1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->O:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->t:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->setUserInputEnabled(Z)V

    return-void
.end method

.method public e0()Ld9/g;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    return-object v0
.end method

.method public f0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->f0(Z)V

    :cond_0
    return-void
.end method

.method public g1(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H4:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H4:I

    const/16 p1, 0x32

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J4:Z

    :cond_0
    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0072

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getRoomContainerId()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/utils/TXIMUtils;->loginTIM(I)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->N:J

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B3:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->setOnScrollCallback(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "ROOM_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 9
    :goto_0
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->v:Z

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->setEnableLoadMore(Z)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$g;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->setOnLoadMoreListener(Lcom/guochao/faceshow/aaspring/views/LiveRoomView$a;)V

    .line 12
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->S1(Z)V

    return-void
.end method

.method public l0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->t:Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->W1(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->setEnableLoadMore(Z)V

    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public m0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->t:Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->W1(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->O:Z

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->setEnableLoadMore(Z)V

    :cond_0
    return-void
.end method

.method public o0(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->o0(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->w:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$k;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public o1()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->s:Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->r0()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->h1()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->W1(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->h1()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->finishWatch(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    .line 2
    invoke-static {}, Ly8/a;->b()Ly8/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly8/a;->h(ZZ)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->K4:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    .line 6
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    invoke-direct {v3, v0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->C:Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;

    invoke-virtual {v0, v3}, Lcom/guochao/player/GCLivePlayer;->addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->C:Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    invoke-virtual {v0, v3}, Lcom/guochao/player/GCLivePlayer;->addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 10
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v3, "KEY_SWIPE_TO_DISMISS_LIVE_CHAT"

    invoke-virtual {v0, v3}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->m:Z

    .line 11
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v4, "KEY_LIVE_ADS_TIPS"

    invoke-virtual {v0, v4}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->n:Z

    .line 12
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Lja/a;->d(Ljava/lang/String;Lja/a$b;)V

    .line 13
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lja/a;->d(Ljava/lang/String;Lja/a$b;)V

    if-eqz p1, :cond_0

    const-string v0, "data"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->l(Ljava/util/List;)V

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fromFloatLive"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->r:Z

    .line 19
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setWatchingLive(Z)V

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->registImCheckListener(Lcom/guochao/faceshow/aaspring/manager/im/b$m;)V

    .line 21
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k1()V

    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V1:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 23
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V1:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_LIVE_ADS_TIPS"

    invoke-virtual {v0, v1, p0}, Lja/a;->h(Ljava/lang/String;Lja/a$b;)V

    .line 5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_SWIPE_TO_DISMISS_LIVE_CHAT"

    invoke-virtual {v0, v1, p0}, Lja/a;->h(Ljava/lang/String;Lja/a$b;)V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 2

    const-string v0, "KEY_LIVE_ADS_TIPS"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->n:Z

    :cond_0
    const-string v0, "KEY_SWIPE_TO_DISMISS_LIVE_CHAT"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->m:Z

    :cond_1
    return-void
.end method

.method public onEnterBackground()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    invoke-interface {v0}, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;->onEnterBackground()V

    :cond_0
    return-void
.end method

.method public onEnterForeground()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    invoke-interface {v0}, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;->onEnterForeground()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "from_float"

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->S1(Z)V

    return-void
.end method

.method public onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;

    if-eqz v0, :cond_12

    .line 4
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->getWrappedMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "LIVE_CUSTOM_MSG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "LIVE_UPDATE_LINKMIC_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "LIVE_SEND_GIFT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_3
    const-string v2, "LIVE_REMOVE_USER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "LOCAL_GROUP_DISSMISS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "LIVE_VOLUME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "LIVE_LINKMIC_VOICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "LIVE_LINKMIC_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v2, "LIVE_CLOSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eq v1, v7, :cond_e

    if-eq v1, v6, :cond_d

    const-string v0, "2"

    const-string v2, "1"

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    goto/16 :goto_a

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->F(Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;)V

    :cond_4
    return-void

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 13
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v9, v4, :cond_8

    .line 14
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 15
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 16
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setVoiceStatus(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 17
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->z(Ljava/util/List;J)V

    return-void

    .line 18
    :cond_9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    .line 19
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 20
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v9, v4, :cond_c

    .line 21
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 22
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 23
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    move-object v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setMatchType(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 24
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->z(Ljava/util/List;J)V

    return-void

    .line 25
    :cond_d
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->z(Ljava/util/List;J)V

    return-void

    .line 27
    :cond_e
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 28
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    .line 29
    :goto_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v1

    if-ne v1, v7, :cond_10

    const/4 v1, 0x1

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    .line 30
    :goto_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserType()I

    move-result p1

    if-ne p1, v6, :cond_11

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    .line 31
    :goto_9
    invoke-static {p0, v0, v1, v8, v9}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->W2(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_12
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x650b6f3b -> :sswitch_8
        -0x2d06b08a -> :sswitch_7
        -0x2d03e3d3 -> :sswitch_6
        -0x1bcd7233 -> :sswitch_5
        -0x10f2a28b -> :sswitch_4
        0xc35e7d3 -> :sswitch_3
        0x193433f4 -> :sswitch_2
        0x35fbcda3 -> :sswitch_1
        0x47dcdac6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->K4:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->onPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPictureInPictureModeChanged(Z)V

    .line 2
    sput-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L4:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->hideBackToLast()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->D4:Z

    const v1, 0x1020002

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    .line 7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0d031a

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    const v3, 0x7f0a070b

    .line 8
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->K:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    const v3, 0x7f0a0104

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L:Landroid/widget/ImageView;

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    const v3, 0x7f0a093d

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->M:Landroid/widget/ImageView;

    .line 11
    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object p1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v3}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->M:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L:Landroid/widget/ImageView;

    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object p1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v3}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    const v3, 0x7f0a0254

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G:Landroid/widget/FrameLayout;

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    const v3, 0x7f0a07ba

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->D:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    .line 15
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    invoke-direct {v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;-><init>(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->D:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/player/GCLivePlayer;->isCompatMode()Z

    move-result p1

    const/4 v3, -0x1

    if-nez p1, :cond_1

    .line 18
    new-instance p1, Landroid/view/SurfaceView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F:Landroid/view/SurfaceView;

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v5, -0x2

    invoke-interface {p1, v5}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F:Landroid/view/SurfaceView;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G:Landroid/widget/FrameLayout;

    invoke-static {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    goto :goto_0

    .line 24
    :cond_1
    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F:Landroid/view/SurfaceView;

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F:Landroid/view/SurfaceView;

    if-eqz p1, :cond_2

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F:Landroid/view/SurfaceView;

    invoke-virtual {p1, v5}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/View;)V

    goto :goto_1

    .line 27
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    .line 28
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    const/16 v5, 0x8

    if-eqz p1, :cond_3

    .line 29
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->D:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-direct {p1, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;-><init>(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    .line 30
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->D:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v6, p1}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->h:Z

    .line 32
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-wide v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d5:J

    invoke-virtual {p1, v6, v7, v8}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->z(Ljava/util/List;J)V

    goto :goto_2

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->D:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    if-eqz p1, :cond_4

    .line 34
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 35
    :cond_4
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->I:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 36
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s2(Landroidx/fragment/app/FragmentManager;)V

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H5:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_6

    .line 40
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iput-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H5:Landroid/widget/PopupWindow;

    .line 42
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->i1()V

    .line 43
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_d

    .line 44
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V1()V

    .line 45
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F1()V

    goto :goto_4

    .line 46
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_9

    .line 47
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 49
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->I:Landroid/view/View;

    if-nez p1, :cond_b

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->I:Landroid/view/View;

    .line 52
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->I:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 53
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V

    const-wide/16 v3, 0xa

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    const p1, 0x7f0a0e32

    .line 54
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    .line 55
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    .line 56
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/guochao/player/GCLivePlayer;->setMute(Z)V

    :cond_d
    :goto_4
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->onResume()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->K4:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 5
    new-instance v4, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 7
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveCoverImg(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getGroupId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setGroupId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getChatGroupId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setChatGroupId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStreamUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStreamUrl(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setNickName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStartTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStartTime(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveType(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getImg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserId(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setMultiLiveRoom(Z)V

    .line 18
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "data"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "current"

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onStop()V

    .line 2
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L4:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->finish(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStreamUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->stopPlay(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public p0(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->p0(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->w:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$j;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld9/g;->x0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->a2:Z

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->q0()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->a2:Z

    return-void
.end method

.method public r1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->f()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gtz p1, :cond_1

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_1
    add-int/lit8 v2, p1, -0x3

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt p1, v2, :cond_3

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, p1, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-gez v2, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-gez p1, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-eq p1, v2, :cond_9

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gez v4, :cond_6

    goto :goto_1

    :cond_6
    move v1, v4

    .line 11
    :goto_1
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_2
    if-gt v1, p1, :cond_7

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 13
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    const-string v5, "liveId"

    .line 14
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "startTime"

    .line 15
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveStartTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 17
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_8
    return-object v3

    .line 18
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 19
    :cond_a
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public release(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->release(Z)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->C:Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 4
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz8/c;->N(Lz8/b;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v2, :cond_0

    .line 6
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l5:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->onQuitLiveRoom(ZZ)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->v(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h()V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->w:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->J4:Z

    if-eqz p1, :cond_2

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Ly7/q;

    invoke-direct {v0}, Ly7/q;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 16
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->unRegistImCheckListener(Lcom/guochao/faceshow/aaspring/manager/im/b$m;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ld9/g;->z1()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isKickedOut()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    .line 2
    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->s:Z

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E4:Z

    if-nez v0, :cond_0

    .line 9
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->q:Z

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->E4:Z

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setShowedFloatFromLiveRoom(Z)V

    .line 12
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    invoke-interface {v2}, Ld9/g;->K1()Lz8/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz8/c;->N(Lz8/b;)V

    .line 13
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 14
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F4:Z

    return-void
.end method

.method public t0()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->t0()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->s0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object v0

    invoke-interface {v0}, Ld9/g;->getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->V2:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public t1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->Q:I

    return v0
.end method

.method public updatePipParams(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->updatePipParams(Landroid/view/View;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->q1(Z)Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    :cond_0
    return-void
.end method

.method public w(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G4:I

    return-void
.end method
