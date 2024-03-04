.class public final Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0000\u001aJ\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u00052\u001c\u0008\u0002\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00060\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "callbackOnLifecycle",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;",
        "T",
        "Landroidx/lifecycle/LifecycleOwner;",
        "value",
        "Lkotlin/Function1;",
        "",
        "error",
        "Lkotlin/Function2;",
        "",
        "",
        "lib_base_release"
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
.method public static final callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
    .locals 1
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    const-string v0, "lifecycle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt$callbackOnLifecycle$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt$callbackOnLifecycle$3;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public static synthetic callbackOnLifecycle$default(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 1
    sget-object p1, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt$callbackOnLifecycle$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt$callbackOnLifecycle$1;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 2
    sget-object p2, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt$callbackOnLifecycle$2;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt$callbackOnLifecycle$2;

    .line 3
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object p0

    return-object p0
.end method
