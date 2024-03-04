.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ0\u0010\n\u001a\u00020\t2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;",
        "",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "callBack",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycle",
        "",
        "params",
        "",
        "startRequest",
        "<init>",
        "()V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startRequest(Lcom/guochao/faceshow/aaspring/base/http/callback/c;Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "callBack"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lifecycle"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "params"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v2, "api/token/promotion/invite-earn-money/applyWithdraw"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p2

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p3

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils$startRequest$$inlined$success$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils$startRequest$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p3

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils$startRequest$$inlined$fail$1;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils$startRequest$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method
