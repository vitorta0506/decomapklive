.class public interface abstract Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J$\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\tH&J\u001e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\tH&J\u000f\u0010\u000c\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000bH&J\u0018\u0010\u0014\u001a\u00020\u00052\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\tH&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/GCViewModel;",
        "M",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "",
        "bind",
        "",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "bindLoading",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;",
        "current",
        "()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "loadData",
        "vararg",
        "obtainLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "publishingLoadingState",
        "loadingStateModel",
        "unbind",
        "lib_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "TM;>;)V"
        }
    .end annotation
.end method

.method public abstract bindLoading(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract loadData(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract obtainLiveData()Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract publishingLoadingState(Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract unbind(Landroidx/lifecycle/Observer;)V
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "TM;>;)V"
        }
    .end annotation
.end method
