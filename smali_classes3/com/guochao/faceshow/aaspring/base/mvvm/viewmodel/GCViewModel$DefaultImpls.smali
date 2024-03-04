.class public final Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic bind$default(Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: bind"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadData(Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;Ljava/lang/Object;)V
    .locals 0
    .param p0    # Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel<",
            "TM;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public static synthetic loadData$default(Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;->loadData(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static obtainLiveData(Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .param p0    # Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel<",
            "TM;>;)",
            "Landroidx/lifecycle/MutableLiveData<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-object p0
.end method
