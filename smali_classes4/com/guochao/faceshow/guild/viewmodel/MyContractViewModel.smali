.class public final Lcom/guochao/faceshow/guild/viewmodel/MyContractViewModel;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\u000cR \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/viewmodel/MyContractViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "liveStaticLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/guochao/faceshow/guild/bean/LiveStaticBean;",
        "getLiveStaticLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setLiveStaticLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "checkSignState",
        "",
        "component_guild_release"
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
.field private liveStaticLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/faceshow/guild/bean/LiveStaticBean;",
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

    iput-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/MyContractViewModel;->liveStaticLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final checkSignState()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v1, "api/token/guild/anchorin/findAnchorSignInfo"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "loveRingSet"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/guild/viewmodel/MyContractViewModel$checkSignState$$inlined$success$1;

    invoke-direct {v2}, Lcom/guochao/faceshow/guild/viewmodel/MyContractViewModel$checkSignState$$inlined$success$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final getLiveStaticLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/faceshow/guild/bean/LiveStaticBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/MyContractViewModel;->liveStaticLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final setLiveStaticLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/faceshow/guild/bean/LiveStaticBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/MyContractViewModel;->liveStaticLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
