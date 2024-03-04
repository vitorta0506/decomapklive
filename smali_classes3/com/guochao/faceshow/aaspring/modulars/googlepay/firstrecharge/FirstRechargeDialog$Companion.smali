.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\u0011JQ\u0010\u000e\u001a\u00020\u000f2\u001a\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00142\u001a\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00142\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;",
        "",
        "()V",
        "AUTO_SHOW_LIVE",
        "",
        "AUTO_SHOW_WALLET",
        "SHOW_1V1_GIFT",
        "SHOW_DATING_GIFT",
        "SHOW_HOME",
        "SHOW_IM_GIFT",
        "SHOW_LIVE",
        "SHOW_LIVE_GIFT",
        "SHOW_VIDEO_GIFT",
        "SHOW_WALLET",
        "showDialog",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;",
        "type",
        "(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;",
        "x",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "y",
        "(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;",
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

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic showDialog$default(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;->showDialog(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showDialog$default(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;->showDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final showDialog(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$Companion;->showDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    move-result-object p1

    return-object p1
.end method

.method public final showDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;
    .locals 4
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;-><init>()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    if-eqz v2, :cond_1

    .line 5
    check-cast v1, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showLoading$default(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string v3, "type"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "x"

    .line 8
    invoke-virtual {v2, p3, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "y"

    .line 9
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "currTopActivity.supportFragmentManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
