.class public final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;
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
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J4\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u0016\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\r0%j\u0008\u0012\u0004\u0012\u00020\r`&2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\t0(J4\u0010)\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u0016\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\r0%j\u0008\u0012\u0004\u0012\u00020\r`&2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\t0(J\u001c\u0010*\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\t0(J \u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u000b2\u0008\u0008\u0002\u0010.\u001a\u00020\u000bJ\"\u0010/\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u0008\u0008\u0002\u00100\u001a\u00020\t2\u0008\u0008\u0002\u0010.\u001a\u00020\u000bJ4\u00101\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u0016\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\r0%j\u0008\u0012\u0004\u0012\u00020\r`&2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\t0(J\u0010\u00102\u001a\u00020\"2\u0008\u00103\u001a\u0004\u0018\u00010\u0011R\u001c\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015R\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u000e\u0010 \u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "_memberList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
        "_memberListHasMore",
        "",
        "_memberNum",
        "",
        "_titles",
        "",
        "_visitorList",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;",
        "mSeatControllerViewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "memberList",
        "Landroidx/lifecycle/LiveData;",
        "getMemberList",
        "()Landroidx/lifecycle/LiveData;",
        "memberListHasMore",
        "getMemberListHasMore",
        "memberNum",
        "getMemberNum",
        "repository",
        "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;",
        "title",
        "getTitle",
        "visitorList",
        "getVisitorList",
        "visitorPage",
        "adminAdd",
        "",
        "roomId",
        "removeUserIds",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "gcValueCallback",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;",
        "adminRemove",
        "joinRoom",
        "loadMemberList",
        "voiceRoomId",
        "page",
        "size",
        "loadVisitorList",
        "refresh",
        "memberRemove",
        "setVoiceRoomSeatControllerViewModel",
        "viewmodel",
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
.field private final _memberList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _memberListHasMore:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _memberNum:Landroidx/lifecycle/MutableLiveData;
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

.field private final _titles:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _visitorList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSeatControllerViewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final memberList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final memberListHasMore:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final memberNum:Landroidx/lifecycle/LiveData;
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

.field private final repository:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final visitorList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private visitorPage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->repository:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_titles:Landroidx/lifecycle/MutableLiveData;

    .line 4
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->title:Landroidx/lifecycle/LiveData;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_memberNum:Landroidx/lifecycle/MutableLiveData;

    .line 6
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->memberNum:Landroidx/lifecycle/LiveData;

    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_memberListHasMore:Landroidx/lifecycle/MutableLiveData;

    .line 8
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->memberListHasMore:Landroidx/lifecycle/LiveData;

    .line 9
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_memberList:Landroidx/lifecycle/MutableLiveData;

    .line 10
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->memberList:Landroidx/lifecycle/LiveData;

    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_visitorList:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->visitorPage:I

    .line 13
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->visitorList:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getMSeatControllerViewModel$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->mSeatControllerViewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->repository:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;

    return-object p0
.end method

.method public static final synthetic access$getVisitorPage$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)I
    .locals 0

    iget p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->visitorPage:I

    return p0
.end method

.method public static final synthetic access$get_memberList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_memberList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_memberListHasMore$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_memberListHasMore:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_memberNum$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_memberNum:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_titles$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_titles:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_visitorList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->_visitorList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$setVisitorPage$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->visitorPage:I

    return-void
.end method

.method public static synthetic loadMemberList$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x14

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->loadMemberList(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic loadVisitorList$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x28

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->loadVisitorList(Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public final adminAdd(Ljava/lang/String;Ljava/util/ArrayList;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeUserIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcValueCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$adminAdd$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$adminAdd$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;Ljava/util/ArrayList;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final adminRemove(Ljava/lang/String;Ljava/util/ArrayList;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeUserIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcValueCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$adminRemove$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$adminRemove$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;Ljava/util/ArrayList;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getMemberList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->memberList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getMemberListHasMore()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->memberListHasMore:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getMemberNum()Landroidx/lifecycle/LiveData;
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

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->memberNum:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getTitle()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->title:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getVisitorList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->visitorList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final joinRoom(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcValueCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadMemberList(Ljava/lang/String;II)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "voiceRoomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;

    const/4 v8, 0x0

    move-object v3, v0

    move v4, p2

    move-object v5, p0

    move-object v6, p1

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;-><init>(ILcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadVisitorList(Ljava/lang/String;ZI)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;

    const/4 v8, 0x0

    move-object v3, v0

    move v4, p2

    move-object v5, p0

    move-object v6, p1

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;-><init>(ZLcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final memberRemove(Ljava/lang/String;Ljava/util/ArrayList;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeUserIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcValueCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$memberRemove$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$memberRemove$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;Ljava/util/ArrayList;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setVoiceRoomSeatControllerViewModel(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)V
    .locals 0
    .param p1    # Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->mSeatControllerViewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-void
.end method
