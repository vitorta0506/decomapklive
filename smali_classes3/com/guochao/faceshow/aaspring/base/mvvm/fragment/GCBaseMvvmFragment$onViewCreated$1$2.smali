.class public final Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment$onViewCreated$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment$onViewCreated$1$2",
        "Landroidx/lifecycle/Observer;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;",
        "onChanged",
        "",
        "t",
        "lib_core_release"
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment<",
            "TM;TVM;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment<",
            "TM;TVM;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment$onViewCreated$1$2;->this$0:Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment$onViewCreated$1$2;->this$0:Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;->onLoadingStateChanged(Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment$onViewCreated$1$2;->onChanged(Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;)V

    return-void
.end method
