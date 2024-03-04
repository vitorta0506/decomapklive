.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R(\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "backPageGiftLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
        "getBackPageGiftLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setBackPageGiftLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "count",
        "",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "currPage",
        "getCurrPage",
        "setCurrPage",
        "loadBackPackData",
        "",
        "isLoadMore",
        "",
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
.field private backPageGiftLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private count:I

.field private currPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->backPageGiftLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->currPage:I

    return-void
.end method


# virtual methods
.method public final getBackPageGiftLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->backPageGiftLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->count:I

    return v0
.end method

.method public final getCurrPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->currPage:I

    return v0
.end method

.method public final loadBackPackData(Z)V
    .locals 3

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/BackPageGiftListBean$Result;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->currPage:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->currPage:I

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->currPage:I

    .line 4
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->backPageGiftLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v1, "api/token/trade/bag/personList/V2"

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->currPage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    const/16 v1, 0x14

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel$loadBackPackData$$inlined$success$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel$loadBackPackData$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel$loadBackPackData$$inlined$fail$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel$loadBackPackData$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final setBackPageGiftLiveData(Landroidx/lifecycle/MutableLiveData;)V
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
            "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->backPageGiftLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->count:I

    return-void
.end method

.method public final setCurrPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->currPage:I

    return-void
.end method
