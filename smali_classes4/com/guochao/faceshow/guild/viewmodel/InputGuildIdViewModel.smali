.class public final Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "chckIdResultLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getChckIdResultLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "checkIdValid",
        "",
        "id",
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
.field private final chckIdResultLiveData:Landroidx/lifecycle/MutableLiveData;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;->chckIdResultLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final checkIdValid(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Ljava/lang/Integer;

    const-string v1, "id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v2, "api/token/guild/anchorin/chkGhIdValid"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "guildId"

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel$checkIdValid$$inlined$success$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel$checkIdValid$$inlined$success$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel$checkIdValid$$inlined$fail$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel$checkIdValid$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel$checkIdValid$3;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel$checkIdValid$3;-><init>(Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final getChckIdResultLiveData()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;->chckIdResultLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
