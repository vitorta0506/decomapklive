.class public final Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001f\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u0015J\u0015\u0010\t\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0012R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "cancelResultLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getCancelResultLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "cancellation",
        "cancellingRescind",
        "checkSignExpireLiveData",
        "",
        "getCheckSignExpireLiveData",
        "contractHistoryLiveData",
        "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;",
        "getContractHistoryLiveData",
        "cancelRescind",
        "",
        "guildId",
        "signId",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "(Ljava/lang/Integer;)V",
        "checkSignExpire",
        "checkSignState",
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
.field private final cancelResultLiveData:Landroidx/lifecycle/MutableLiveData;
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

.field private cancellation:Z

.field private cancellingRescind:Z

.field private final checkSignExpireLiveData:Landroidx/lifecycle/MutableLiveData;
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

.field private final contractHistoryLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;",
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

    iput-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancelResultLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->contractHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->checkSignExpireLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$setCancellation$p(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancellation:Z

    return-void
.end method

.method public static final synthetic access$setCancellingRescind$p(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancellingRescind:Z

    return-void
.end method


# virtual methods
.method public final cancelRescind(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancellingRescind:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancellingRescind:Z

    const-string v0, "api/token/guild/anchorin/cancelRescind"

    .line 5
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestKt;->requestFromViewModel(Landroidx/lifecycle/ViewModel;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    const-string v1, "signId"

    .line 6
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string p2, "guildId"

    .line 7
    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    const-class p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$cancelRescind$$inlined$success$1;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$cancelRescind$$inlined$success$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 10
    new-instance p1, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$cancelRescind$2;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$cancelRescind$2;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    :cond_1
    return-void
.end method

.method public final cancellation(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancellation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancellation:Z

    const-string v0, "api/token/guild/anchorin/cancelSign"

    .line 3
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestKt;->requestFromViewModel(Landroidx/lifecycle/ViewModel;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "signId"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$cancellation$$inlined$success$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$cancellation$$inlined$success$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;)V

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 8
    new-instance p1, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$cancellation$3;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$cancellation$3;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final checkSignExpire()V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/Integer;

    const-string v1, "api/token/guild/anchorin/chkSignExpire"

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestKt;->requestFromViewModel(Landroidx/lifecycle/ViewModel;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$checkSignExpire$$inlined$success$1;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$checkSignExpire$$inlined$success$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;)V

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$checkSignExpire$$inlined$fail$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$checkSignExpire$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final checkSignState()V
    .locals 3

    const-string v0, "api/token/guild/anchorin/findAnchorSignInfo"

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestKt;->requestFromViewModel(Landroidx/lifecycle/ViewModel;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$checkSignState$$inlined$success$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$checkSignState$$inlined$success$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$checkSignState$$inlined$fail$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel$checkSignState$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final getCancelResultLiveData()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancelResultLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCheckSignExpireLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->checkSignExpireLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->contractHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
