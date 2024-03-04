.class public final Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/session/model/UserSessionModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/session/model/UserSessionModel;",
        "()V",
        "updateUserSession",
        "",
        "userSessionModel",
        "Companion",
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
.field public static final Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static instance:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;)V
    .locals 0

    sput-object p0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    return-void
.end method

.method public static final instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final updateUserSession(Lcom/guochao/faceshow/session/model/UserSessionModel;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/session/model/UserSessionModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
