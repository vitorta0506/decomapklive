.class public final Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000fR\u001a\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "_visitorList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
        "repository",
        "Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository;",
        "visitorList",
        "Landroidx/lifecycle/LiveData;",
        "getVisitorList",
        "()Landroidx/lifecycle/LiveData;",
        "visitorPage",
        "",
        "loadVisitorList",
        "",
        "refresh",
        "",
        "size",
        "app_GooglePlayRelease"
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
.field private final _visitorList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository:Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final visitorList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;>;"
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
    new-instance v0, Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository;

    invoke-direct {v0}, Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->repository:Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->_visitorList:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->visitorPage:I

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->visitorList:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;)Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->repository:Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository;

    return-object p0
.end method

.method public static final synthetic access$getVisitorPage$p(Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->visitorPage:I

    return p0
.end method

.method public static final synthetic access$get_visitorList$p(Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->_visitorList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$setVisitorPage$p(Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->visitorPage:I

    return-void
.end method

.method public static synthetic loadVisitorList$default(Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/16 p2, 0x28

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->loadVisitorList(ZI)V

    return-void
.end method


# virtual methods
.method public final getVisitorList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;->visitorList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final loadVisitorList(ZI)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel$loadVisitorList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, p2, v2}, Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel$loadVisitorList$1;-><init>(ZLcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
