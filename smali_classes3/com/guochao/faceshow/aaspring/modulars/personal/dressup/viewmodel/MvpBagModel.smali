.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;
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
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J8\u0010\u0019\u001a\u00020\u001a2(\u0010\u001b\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J@\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#2(\u0010\u001b\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR(\u0010\r\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "count",
        "",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "currPage",
        "getCurrPage",
        "setCurrPage",
        "mvpLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
        "getMvpLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setMvpLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "netLiveData",
        "",
        "getNetLiveData",
        "setNetLiveData",
        "cancelDressUp",
        "",
        "call",
        "Lkotlin/Function2;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function2;)V",
        "dressUp",
        "id",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "loadMvpBagData",
        "isLoadMore",
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
.field private count:I

.field private currPage:I

.field private mvpLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private netLiveData:Landroidx/lifecycle/MutableLiveData;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->mvpLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->netLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->currPage:I

    return-void
.end method


# virtual methods
.method public final cancelDressUp(Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel$cancelDressUp$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel$cancelDressUp$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final dressUp(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel$dressUp$1;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel$dressUp$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->count:I

    return v0
.end method

.method public final getCurrPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->currPage:I

    return v0
.end method

.method public final getMvpLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->mvpLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getNetLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->netLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final loadMvpBagData(Z)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->currPage:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->currPage:I

    goto :goto_0

    .line 2
    :cond_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->currPage:I

    .line 3
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->netLiveData:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->netLiveData:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel$loadMvpBagData$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel$loadMvpBagData$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->count:I

    return-void
.end method

.method public final setCurrPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->currPage:I

    return-void
.end method

.method public final setMvpLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->mvpLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setNetLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->netLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
