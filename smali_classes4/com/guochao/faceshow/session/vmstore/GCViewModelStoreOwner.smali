.class public final Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "()V",
        "viewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "getViewModelStore",
        "lib_user_session_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static viewModelStore:Landroidx/lifecycle/ViewModelStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;

    invoke-direct {v0}, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;->INSTANCE:Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;

    .line 1
    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    sget-object v1, Ldb/a;->a:Ldb/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 2
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/faceshow/session/model/UserSessionModel;)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    sput-object p0, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/session/model/UserSessionModel;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;->_init_$lambda-0(Lcom/guochao/faceshow/session/model/UserSessionModel;)V

    return-void
.end method


# virtual methods
.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method
