.class public final Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a7\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\u0008\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0008\u001a+\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\u0008\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0086\u0008\u001a7\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\u0008\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0008\u001a;\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\u0008\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u0003*\u00020\n2\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0008\u001a:\u0010\u000b\u001a\u0002H\u0002\"\u000e\u0008\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u0003*\u00020\n2\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0008\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "lazyGCViewModel",
        "Lkotlin/Lazy;",
        "T",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "key",
        "",
        "factory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "lazyGlobalViewModel",
        "lazyViewModel",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "viewModel",
        "(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "lib_core_release"
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
.method public static final synthetic lazyGCViewModel(Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)Lkotlin/Lazy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
            "*>;>(",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;->INSTANCE:Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;

    .line 2
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGCViewModel$$inlined$lazyViewModel$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGCViewModel$$inlined$lazyViewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lazyGCViewModel$default(Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p0, v0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move-object p1, v0

    .line 1
    :cond_1
    sget-object p2, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;->INSTANCE:Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;

    .line 2
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGCViewModel$$inlined$lazyViewModel$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGCViewModel$$inlined$lazyViewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {p3, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic lazyGlobalViewModel(Ljava/lang/String;)Lkotlin/Lazy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
            "*>;>(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic lazyGlobalViewModel(Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)Lkotlin/Lazy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
            "*>;>(",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lazyGlobalViewModel$default(Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 2

    and-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p0, p2

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    const-string v0, "app()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$default$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lazyGlobalViewModel$default(Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p0, v0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move-object p1, v0

    .line 1
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p2

    const-string p3, "app()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyGlobalViewModel$$inlined$lazyViewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {p3, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic lazyViewModel(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
            "*>;>(",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ")",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyViewModel$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyViewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lazyViewModel$default(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    const-string p3, "<this>"

    .line 1
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p4, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyViewModel$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyViewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {p3, p4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic viewModel(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
            "*>;>(",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    move-object p2, v1

    :goto_0
    const-string p0, "T"

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 2
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    :goto_1
    return-object p0
.end method

.method public static synthetic viewModel$default(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 2

    .line 1
    const-class p4, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v1

    :cond_1
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 2
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    goto :goto_0

    :cond_2
    new-instance p3, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p3, p0, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    move-object p2, p3

    :goto_0
    const-string p0, "T"

    const/4 p3, 0x4

    if-eqz p1, :cond_3

    .line 3
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-virtual {p2, p1, p4}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-virtual {p2, p4}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    :goto_1
    return-object p0
.end method
