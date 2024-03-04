.class public final Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;",
        "fragment",
        "",
        "observeFeatures",
        "Landroid/view/View;",
        "view",
        "clickMoney",
        "Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;",
        "listener",
        "checkInviteMoneyEnable",
        "checkInviteDiamondEnable",
        "<init>",
        "()V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkInviteDiamondEnable(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V
    .locals 1
    .param p0    # Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteDiamondEnable$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteDiamondEnable$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V

    const-string p0, "invite_earn_diamond"

    invoke-static {p0, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    return-void
.end method

.method public static final checkInviteMoneyEnable(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V
    .locals 1
    .param p0    # Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$checkInviteMoneyEnable$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V

    const-string p0, "invite_earn_money"

    invoke-static {p0, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    return-void
.end method

.method public static final clickMoney(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public static final observeFeatures(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V
    .locals 2
    .param p0    # Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invite_earn_diamond"

    const-string v1, "invite_earn_money"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$observeFeatures$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge$observeFeatures$1;

    invoke-static {p0, v0, v1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeaturesCombinedOnLifecycle(Landroidx/lifecycle/LifecycleOwner;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
