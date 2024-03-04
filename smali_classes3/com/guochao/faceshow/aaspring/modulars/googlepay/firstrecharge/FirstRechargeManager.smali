.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/navigator/ARouterRechargeDialogProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;",
        "Lcom/guochao/faceshow/aaspring/base/navigator/ARouterRechargeDialogProvider;",
        "()V",
        "shownFirstRechargeTime",
        "",
        "autoShowFirstRecharge",
        "",
        "init",
        "context",
        "Landroid/content/Context;",
        "isFirstRechargeAutoShown",
        "",
        "shouldShowFirstRecharge",
        "showRechargeDialog",
        "type",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static shownFirstRechargeTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;

    const-class v0, Ljava/lang/String;

    const-string v1, "live"

    const-string v2, "FirstRechargeTime"

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->shownFirstRechargeTime:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autoShowFirstRecharge()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->isFirstRechargeAutoShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToday()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->shownFirstRechargeTime:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, "live"

    const-string v2, "FirstRechargeTime"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final isFirstRechargeAutoShown()Z
    .locals 4

    const-string v0, "new_first_recharge_gift_config"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {v0, v1, v2, v1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature$default(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    const-class v0, Ljava/lang/String;

    const-string v2, "live"

    const-string v3, "FirstRechargeTime"

    invoke-static {v2, v3, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->shownFirstRechargeTime:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToday()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->shownFirstRechargeTime:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final shouldShowFirstRecharge()Z
    .locals 3

    const-string v0, "new_first_recharge_gift_config"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature$default(Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public showRechargeDialog(Landroid/content/Context;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string p1, "context.supportFragmentManager"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;->showDialog$default(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string p1, "currTopActivity.supportFragmentManager"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;->showDialog$default(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
