.class public final Lcom/guochao/lib_core/feature/FeatureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a-\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u001b\u0008\u0002\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u0008H\u0007\u001a8\u0010\t\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000b2\u001d\u0010\u0005\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000c\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0002\u0010\r\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a#\u0010\u0011\u001a\u00020\u0007*\u00020\u00032\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u001a/\u0010\u0012\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00030\u000c2\u001d\u0010\u0005\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000c\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u001a#\u0010\u0013\u001a\u00020\u0007*\u00020\u00032\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u001a+\u0010\u0014\u001a\u00020\u0007*\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00012\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u001a<\u0010\u0015\u001a\u00020\u0007*\u00020\u00102\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000b2\u001d\u0010\u0005\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000c\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0002\u0010\u0016\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "API",
        "",
        "requireFeature",
        "Lcom/guochao/lib_core/feature/Feature;",
        "featureName",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "requireFeaturesCombined",
        "featureNames",
        "",
        "",
        "([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "testCode",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onAvailable",
        "onResult",
        "onUnAvailable",
        "requireFeatureOnLifecycle",
        "requireFeaturesCombinedOnLifecycle",
        "(Landroidx/lifecycle/LifecycleOwner;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
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


# static fields
.field private static final API:Ljava/lang/String; = "api/token/foundation/model/getModelConfigByKeys"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/guochao/lib_core/feature/FeatureResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeatureOnLifecycle$lambda-1(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/guochao/lib_core/feature/FeatureResult;)V

    return-void
.end method

.method public static synthetic b([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/guochao/lib_core/feature/FeatureResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeaturesCombinedOnLifecycle$lambda-3([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/guochao/lib_core/feature/FeatureResult;)V

    return-void
.end method

.method public static final onAvailable(Lcom/guochao/lib_core/feature/Feature;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Lcom/guochao/lib_core/feature/Feature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/lib_core/feature/Feature;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/lib_core/feature/Feature;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final onResult(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/lib_core/feature/Feature;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/guochao/lib_core/feature/Feature;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final onUnAvailable(Lcom/guochao/lib_core/feature/Feature;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Lcom/guochao/lib_core/feature/Feature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/lib_core/feature/Feature;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/lib_core/feature/Feature;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "featureName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature$default(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static final requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/lib_core/feature/Feature;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/lib_core/feature/Feature;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "featureName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/lib_core/feature/Feature$Companion;->findFeature$lib_core_release(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static synthetic requireFeature$default(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/lib_core/feature/Feature;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static final requireFeatureOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/lib_core/feature/Feature;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature$Companion;->getViewModel$lib_core_release()Lcom/guochao/lib_core/feature/FeatureViewModel;

    move-result-object v0

    new-instance v1, Lcom/guochao/lib_core/feature/b;

    invoke-direct {v1, p2, p1}, Lcom/guochao/lib_core/feature/b;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final requireFeatureOnLifecycle$lambda-1(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/guochao/lib_core/feature/FeatureResult;)V
    .locals 0

    const-string p2, "$block"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$featureName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    invoke-virtual {p2, p1}, Lcom/guochao/lib_core/feature/Feature$Companion;->findFeature$lib_core_release(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final requireFeaturesCombined([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p0    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/guochao/lib_core/feature/Feature;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "featureNames"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 3
    sget-object v4, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    invoke-virtual {v4, v3}, Lcom/guochao/lib_core/feature/Feature$Companion;->findFeature$lib_core_release(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final requireFeaturesCombinedOnLifecycle(Landroidx/lifecycle/LifecycleOwner;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/guochao/lib_core/feature/Feature;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature$Companion;->getViewModel$lib_core_release()Lcom/guochao/lib_core/feature/FeatureViewModel;

    move-result-object v0

    new-instance v1, Lcom/guochao/lib_core/feature/c;

    invoke-direct {v1, p1, p2}, Lcom/guochao/lib_core/feature/c;-><init>([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final requireFeaturesCombinedOnLifecycle$lambda-3([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/guochao/lib_core/feature/FeatureResult;)V
    .locals 4

    const-string p2, "$featureNames"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$block"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 3
    sget-object v3, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    invoke-virtual {v3, v2}, Lcom/guochao/lib_core/feature/Feature$Companion;->findFeature$lib_core_release(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final testCode(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/lib_core/feature/FeatureKt$testCode$1;->INSTANCE:Lcom/guochao/lib_core/feature/FeatureKt$testCode$1;

    const-string v1, "invite_earn_money"

    invoke-static {v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    .line 2
    sget-object v0, Lcom/guochao/lib_core/feature/FeatureKt$testCode$2;->INSTANCE:Lcom/guochao/lib_core/feature/FeatureKt$testCode$2;

    const-string v1, "live_im_msg"

    invoke-static {p0, v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeatureOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string p0, "invite_earn_diamond"

    const-string v0, "appoint_square"

    .line 3
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/guochao/lib_core/feature/FeatureKt$testCode$3;->INSTANCE:Lcom/guochao/lib_core/feature/FeatureKt$testCode$3;

    invoke-static {p0, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeaturesCombined([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
