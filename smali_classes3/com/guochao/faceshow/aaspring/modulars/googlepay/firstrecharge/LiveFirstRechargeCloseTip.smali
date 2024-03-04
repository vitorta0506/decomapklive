.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0007\u00a2\u0006\u0004\u0008 \u0010\u0015J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0006\u0010\u000b\u001a\u00020\u0004J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016R(\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u000e\u0010\u000f\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "Landroid/view/View;",
        "root",
        "initView",
        "refreshText",
        "onDestroyView",
        "Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "Lcom/guochao/faceshow/views/g;",
        "mCountDownTimerUtil",
        "Lcom/guochao/faceshow/views/g;",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;",
        "onConfirmListener",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;",
        "getOnConfirmListener",
        "()Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;",
        "setOnConfirmListener",
        "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;)V",
        "<init>",
        "Companion",
        "OnConfirmListener",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mCountDownTimerUtil:Lcom/guochao/faceshow/views/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onConfirmListener:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$mCountDownTimerUtil$1;

    const-wide/32 v1, 0x7fffffff

    invoke-direct {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$mCountDownTimerUtil$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;J)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->mCountDownTimerUtil:Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->onConfirmListener:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;->onConfirm()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getOnConfirmListener()Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->onConfirmListener:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->viewBinding:Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->getViewBinding()Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;->ivClose:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/h;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->getViewBinding()Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/g;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->refreshText()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->mCountDownTimerUtil:Lcom/guochao/faceshow/views/g;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->mCountDownTimerUtil:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    return-void
.end method

.method public final refreshText()V
    .locals 10

    const v0, 0x5265c00

    int-to-long v0, v0

    .line 1
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->getLastLoginTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "format(format, *args)"

    const/4 v3, 0x0

    const-string v4, "getString(R.string.first\u2026charge_close_tip_content)"

    const v5, 0x7f120395

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    cmp-long v9, v0, v6

    if-gez v9, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->getViewBinding()Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;->tvContent:Landroid/widget/TextView;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/guochao/faceshow/utils/TimeUtil;->timeToString(JZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->getViewBinding()Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;->tvContent:Landroid/widget/TextView;

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v8}, Lcom/guochao/faceshow/utils/TimeUtil;->timeToString(JZ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setOnConfirmListener(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->onConfirmListener:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->viewBinding:Lcom/guochao/faceshow/databinding/LiveFirstRechargeCloseTipBinding;

    return-void
.end method
