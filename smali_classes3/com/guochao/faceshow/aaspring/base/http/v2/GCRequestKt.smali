.class public final Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "requestFromViewModel",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
        "Landroidx/lifecycle/ViewModel;",
        "url",
        "",
        "requestOnLifecycle",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lib_httpclient_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final requestFromViewModel(Landroidx/lifecycle/ViewModel;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .param p0    # Landroidx/lifecycle/ViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->dispatchOn(Lkotlinx/coroutines/CoroutineScope;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final requestOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p0

    return-object p0
.end method
