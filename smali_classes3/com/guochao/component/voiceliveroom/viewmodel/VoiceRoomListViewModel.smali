.class public final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0008J\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0008J\u0006\u0010\u001d\u001a\u00020\u0019R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "_inviteList",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel;",
        "_myRoomCount",
        "",
        "_myRoomList",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
        "_roomList",
        "inviteList",
        "Landroidx/lifecycle/LiveData;",
        "getInviteList",
        "()Landroidx/lifecycle/LiveData;",
        "myRoomCount",
        "getMyRoomCount",
        "myRoomList",
        "getMyRoomList",
        "repository",
        "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;",
        "roomList",
        "getRoomList",
        "loadInviteList",
        "",
        "loadMyRoomList",
        "page",
        "loadRoomList",
        "minusMyRoom",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _inviteList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _myRoomCount:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _myRoomList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _roomList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inviteList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final myRoomCount:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final myRoomList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final roomList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->repository:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_roomList:Landroidx/lifecycle/MutableLiveData;

    .line 4
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->roomList:Landroidx/lifecycle/LiveData;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_myRoomList:Landroidx/lifecycle/MutableLiveData;

    .line 6
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->myRoomList:Landroidx/lifecycle/LiveData;

    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_myRoomCount:Landroidx/lifecycle/MutableLiveData;

    .line 8
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->myRoomCount:Landroidx/lifecycle/LiveData;

    .line 9
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_inviteList:Landroidx/lifecycle/MutableLiveData;

    .line 10
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->inviteList:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;)Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->repository:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;

    return-object p0
.end method

.method public static final synthetic access$get_inviteList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_inviteList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_myRoomCount$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_myRoomCount:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_myRoomList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_myRoomList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_roomList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_roomList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final getInviteList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->inviteList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getMyRoomCount()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->myRoomCount:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getMyRoomList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->myRoomList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getRoomList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->roomList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final loadInviteList()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel$loadInviteList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel$loadInviteList$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadMyRoomList(I)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel$loadMyRoomList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel$loadMyRoomList$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadRoomList(I)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel$loadRoomList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel$loadRoomList$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final minusMyRoom()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_myRoomCount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->_myRoomCount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
