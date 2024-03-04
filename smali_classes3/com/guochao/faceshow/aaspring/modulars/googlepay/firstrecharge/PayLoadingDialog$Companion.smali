.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nR\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;",
        "",
        "()V",
        "showingDialogs",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;",
        "getShowingDialogs",
        "()Ljava/util/List;",
        "dismissDialog",
        "",
        "showDialog",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;->showDialog$lambda-0()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;->dismissDialog$lambda-2()V

    return-void
.end method

.method private static final dismissDialog$lambda-2()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;->getShowingDialogs()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.PayLoadingDialog"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final showDialog$lambda-0()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;-><init>()V

    .line 4
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;->getShowingDialogs()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "currTopActivity.supportFragmentManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dismissDialog()V
    .locals 3

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/j;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/j;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread$default(Ljava/lang/Runnable;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void
.end method

.method public final getShowingDialogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;->access$getShowingDialogs$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final showDialog()V
    .locals 3

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/i;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/i;

    const-wide/16 v1, 0x190

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;Ljava/lang/Long;)V

    return-void
.end method
