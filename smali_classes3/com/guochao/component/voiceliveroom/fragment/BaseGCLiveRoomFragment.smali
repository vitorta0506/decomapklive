.class public abstract Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J#\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0019\u0008\u0002\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u000cJ\u001f\u0010\r\u001a\u00020\u00072\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0002\u0008\u000cJ\'\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0007H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "liveRoomViewController",
        "Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;",
        "findController",
        "makeDialogLikeActivity",
        "",
        "requireGCLiveRoomModel",
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "requireLiveRoomViewController",
        "showPeopleInfoCard",
        "userId",
        "",
        "voiceId",
        "seatIndex",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V",
        "test",
        "component_liveroom_release"
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
.field private liveRoomViewController:Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    return-void
.end method

.method private final findController()Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;
    .locals 2

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    instance-of v1, v0, Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must attach to a root fragment which is a LiveRoomViewController"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$requireGCLiveRoomModel$1;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$requireGCLiveRoomModel$1;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: requireGCLiveRoomModel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final test()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$test$1;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$test$1;

    invoke-virtual {p0, v0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1, v0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-void
.end method


# virtual methods
.method public final makeDialogLikeActivity()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/high16 v3, 0x4000000

    if-le v1, v2, :cond_0

    const/high16 v1, -0x80000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 10
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 11
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_5
    return-void
.end method

.method public final requireGCLiveRoomModel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    instance-of v1, v0, Lcom/guochao/component/liveroomcommon/interfaces/GCLiveRoomModelProvider;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/component/liveroomcommon/interfaces/GCLiveRoomModelProvider;

    invoke-interface {v0}, Lcom/guochao/component/liveroomcommon/interfaces/GCLiveRoomModelProvider;->getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :cond_2
    return-object v2
.end method

.method public final requireLiveRoomViewController(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->liveRoomViewController:Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->findController()Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->liveRoomViewController:Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;

    .line 3
    :cond_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final showPeopleInfoCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-void
.end method
