.class public Ly8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly8/a$b;
    }
.end annotation


# static fields
.field private static g:Ly8/a;


# instance fields
.field a:Z

.field private b:Lcom/guochao/player/GCLivePlayer;

.field private c:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

.field d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field e:Ly8/a$b;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly8/a;->a:Z

    .line 3
    new-instance v1, Ly8/a$a;

    invoke-direct {v1, p0}, Ly8/a$a;-><init>(Ly8/a;)V

    iput-object v1, p0, Ly8/a;->e:Ly8/a$b;

    .line 4
    iput-boolean v0, p0, Ly8/a;->f:Z

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    iput-object v0, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    return-void
.end method

.method static synthetic a(Ly8/a;)Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .locals 0

    iget-object p0, p0, Ly8/a;->c:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-object p0
.end method

.method public static b()Ly8/a;
    .locals 2

    .line 1
    sget-object v0, Ly8/a;->g:Ly8/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ly8/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ly8/a;->g:Ly8/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ly8/a;

    invoke-direct {v1}, Ly8/a;-><init>()V

    sput-object v1, Ly8/a;->g:Ly8/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Ly8/a;->g:Ly8/a;

    return-object v0
.end method

.method private c(Landroid/view/View;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lt v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly8/a;->f:Z

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ly8/a;->f:Z

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-gt v1, v0, :cond_8

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isPrivateLiveRoom()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFlvUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 12
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Ly8/a;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 13
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    iget-object p2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a08a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Ly8/a;->f(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;Landroid/widget/FrameLayout;)V

    return-void

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public f(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;Landroid/widget/FrameLayout;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ly8/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ly8/a;->c:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFlvUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ly8/a;->c:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFlvUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Ly8/a;->c:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFlvUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ly8/a;->c:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFlvUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    iget-object v2, p0, Ly8/a;->c:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/player/GCLivePlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {p1, p2}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    .line 7
    iput-boolean v1, p0, Ly8/a;->a:Z

    .line 8
    iget-object p1, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    iget-object p2, p0, Ly8/a;->e:Ly8/a$b;

    invoke-virtual {p1, p2}, Lcom/guochao/player/GCLivePlayer;->addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Ly8/a;->g()V

    .line 10
    iget-object v0, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->setMute(Z)V

    .line 11
    iput-object p1, p0, Ly8/a;->c:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 12
    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    .line 14
    iget-object v0, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {v0, p2}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    .line 15
    iget-object p2, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    iget-object v0, p0, Ly8/a;->e:Ly8/a$b;

    invoke-virtual {p2, v0}, Lcom/guochao/player/GCLivePlayer;->addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 16
    iget-object p2, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFlvUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->buildRoomInfo()Lcom/guochao/user/RoomInfo;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/guochao/player/GCLivePlayer;->startPlay(Ljava/lang/String;Lcom/guochao/user/RoomInfo;)V

    .line 17
    iput-boolean v1, p0, Ly8/a;->a:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Ly8/a;->h(ZZ)V

    return-void
.end method

.method public h(ZZ)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Ly8/a;->a:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/player/GCLivePlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    iget-object v0, p0, Ly8/a;->e:Ly8/a$b;

    invoke-virtual {p1, v0}, Lcom/guochao/player/GCLivePlayer;->removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Ly8/a;->a:Z

    .line 5
    iget-object v0, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/guochao/player/GCLivePlayer;->isPlaying()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-string p2, "LiveDynamicThumbManager.stopPlay()"

    .line 7
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->u0(Ljava/lang/String;Z)V

    .line 8
    iget-object p2, p0, Ly8/a;->b:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {p2, p1, p1}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    .line 9
    :cond_3
    iget-object p1, p0, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    :cond_4
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    .line 12
    iput-object p1, p0, Ly8/a;->c:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    :cond_5
    :goto_0
    return-void
.end method
