.class public Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication;
.super Lcom/guochao/faceshow/context/GCApplication;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication;",
        "Lcom/guochao/faceshow/context/GCApplication;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "()V",
        "store",
        "Landroidx/lifecycle/ViewModelStore;",
        "getStore",
        "()Landroidx/lifecycle/ViewModelStore;",
        "store$delegate",
        "Lkotlin/Lazy;",
        "getViewModelStore",
        "onCreate",
        "",
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
.field private final store$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/context/GCApplication;-><init>()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication$store$2;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication$store$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication;->store$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication;->store$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication;->getStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->init()V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/context/GCApplication;->onCreate()V

    return-void
.end method
