.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\u0008\u0010\u0018\u001a\u00020\u0004H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u001a\u001a\u00020\u0015H\u0016J\u0012\u0010\u001b\u001a\u00020\u00152\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010\u001e\u001a\u00020\u00152\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010\u001f\u001a\u00020 2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;",
        "()V",
        "scene",
        "",
        "scrollLayout",
        "Landroid/widget/ScrollView;",
        "getScrollLayout",
        "()Landroid/widget/ScrollView;",
        "setScrollLayout",
        "(Landroid/widget/ScrollView;)V",
        "sure",
        "Landroid/widget/TextView;",
        "getSure",
        "()Landroid/widget/TextView;",
        "setSure",
        "(Landroid/widget/TextView;)V",
        "tvWaitingTip",
        "getTvWaitingTip",
        "setTvWaitingTip",
        "close",
        "",
        "view",
        "Landroid/view/View;",
        "getLayoutId",
        "initView",
        "loadData",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "Companion",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIVE_TIP_AR_1:Ljava/lang/String; = "BuzzCast \u0647\u064a \u0639\u0628\u0627\u0631\u0629 \u0639\u0646 \u0645\u0646\u0635\u0629 \u0628\u062b \u0645\u0628\u0627\u0634\u0631 \u0627\u062c\u062a\u0645\u0627\u0639\u064a \u0635\u062f\u064a\u0642\u0629 \u0644\u0644\u0628\u064a\u0626\u0629 \u0648\u0635\u062d\u064a\u0629. \u0625\u0630\u0627 \u0643\u0627\u0646 \u0647\u0646\u0627\u0643 \u0623\u064a \u0645\u0646 \u0627\u0644\u0627\u0646\u062a\u0647\u0627\u0643\u0627\u062a \u0627\u0644\u062a\u0627\u0644\u064a\u0629 \u060c \u0641\u0633\u062a\u0642\u0648\u0645 BuzzCast \u0628\u062d\u0638\u0631 / \u062a\u062c\u0645\u064a\u062f \u062d\u0633\u0627\u0628 \u0627\u0644\u0645\u0636\u064a\u0641. \u0641\u064a \u0627\u0644\u062d\u0627\u0644\u0627\u062a \u0627\u0644\u0634\u062f\u064a\u062f\u0629 \u060c \u0633\u064a\u062a\u0645 \u0625\u0644\u063a\u0627\u0621 \u0627\u0644\u0639\u0642\u062f \u060c \u0648\u0633\u064a\u062a\u0645 \u0625\u0644\u063a\u0627\u0621 \u0627\u0644\u0639\u0645\u0648\u0644\u0629 \u0648\u0627\u0644\u0648\u0643\u064a\u0644. \u064a\u062c\u0628 \u0639\u0644\u0649 \u062c\u0645\u064a\u0639 \u0627\u0644\u0648\u0643\u0644\u0627\u0621 / \u0627\u0644\u0645\u0636\u064a\u0641\u064a\u0646 \u0627\u0644\u0627\u0646\u062a\u0628\u0627\u0647 \u0648\u0627\u0644\u0627\u0644\u062a\u0632\u0627\u0645 \u0628\u0642\u0648\u0627\u0639\u062f\u0646\u0627.\n\n\u0623 - \u0639\u0631\u0636 \u0645\u0637\u0648\u0644 \u0644\u0623\u062c\u0632\u0627\u0621 \u0645\u0648\u0636\u0639\u064a\u0629 \u062d\u0633\u0627\u0633\u0629 \u0645\u0646 \u0627\u0644\u062c\u0633\u0645 \u0648\u0623\u0641\u0639\u0627\u0644 \u0645\u0648\u062d\u064a\u0629 \u062c\u0646\u0633\u064a\u0627 \u060c \u0645\u062b\u0644 \u0627\u0644\u0636\u063a\u0637 \u0639\u0644\u0649 \u0627\u0644\u062b\u062f\u064a \u060c \u0648\u0645\u062f\u0627\u0639\u0628\u0629 \u0627\u0644\u0623\u062c\u0632\u0627\u0621 \u0627\u0644\u062d\u0633\u0627\u0633\u0629 \u0645\u0646 \u0627\u0644\u062c\u0633\u0645 \u060c \u0648\u063a\u064a\u0631 \u0630\u0644\u0643 \u0645\u0646 \u0627\u0644\u0633\u0644\u0648\u0643\u064a\u0627\u062a \u0627\u0644\u0645\u0648\u062d\u064a\u0629 \u062c\u0646\u0633\u064a\u0627.\n\u0628 - \u0644\u0627 \u064a\u0645\u0643\u0646 \u0623\u0646 \u062a\u0635\u062f\u0631 \u0623\u0635\u0648\u0627\u062a \u062a\u0623\u0648\u0647 \u0623\u0648 \u0623\u0635\u0648\u0627\u062a \u0623\u062e\u0631\u0649 \u063a\u064a\u0631 \u0642\u0627\u0646\u0648\u0646\u064a\u0629\n\u062c- \u0644\u0627 \u064a\u0648\u062c\u062f \u0645\u062d\u062a\u0648\u0649 \u0625\u0628\u0627\u062d\u064a \u0645\u062b\u0644 \u0627\u0644\u0623\u0639\u0636\u0627\u0621 \u0627\u0644\u062c\u0646\u0633\u064a\u0629\n\u062f - \u0644\u0627 \u064a\u0645\u0643\u0646 \u062a\u0634\u063a\u064a\u0644 \u0645\u0642\u0627\u0637\u0639 \u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u0627\u0644\u0625\u0628\u0627\u062d\u064a\u0629 \u060c \u0648\u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u060c \u0648\u0645\u0627 \u0625\u0644\u0649 \u0630\u0644\u0643.\n\u0647\u0640 - \u0644\u0627 \u062a\u0631\u062a\u062f\u064a \u062c\u0648\u0627\u0631\u0628 \u0634\u0628\u0643\u064a\u0629 \u060c \u0645\u0644\u0627\u0628\u0633 \u0634\u0641\u0627\u0641\u0629 \u060c \u0645\u0644\u0627\u0628\u0633 \u062f\u0627\u062e\u0644\u064a\u0629 \u0648\u063a\u064a\u0631\u0647\u0627 \u0645\u0646 \u0627\u0644\u0645\u0644\u0627\u0628\u0633 \u0627\u0644\u0645\u0648\u062d\u064a\u0629 \u062c\u0646\u0633\u064a\u064b\u0627\n\u0648- \u064a\u062c\u0628 \u0623\u0644\u0627 \u064a\u0632\u064a\u062f \u0627\u0644\u0635\u062f\u0631 \u0627\u0644\u0645\u0643\u0634\u0648\u0641 \u0639\u0646 \u062b\u0644\u062b\u064a \u0627\u0644\u0641\u0633\u062a\u0627\u0646\n\u062d. \u0644\u0627 \u064a\u0645\u0643\u0646 \u0639\u0631\u0636 \u0627\u0644\u0623\u0644\u0639\u0627\u0628 \u0627\u0644\u062c\u0646\u0633\u064a\u0629\n\u0623\u0646\u0627 \u0644\u0627 \u064a\u0645\u0643\u0646 \u0644\u0644\u0631\u062c\u0627\u0644 \u062f\u062e\u0648\u0644 \u0627\u0644\u0628\u0644\u0627\u062f \u0639\u0627\u0631\u064a\u0627\u062a"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PROFILE_TIP_AR_1:Ljava/lang/String; = "1. \u0634\u0628\u0643\u0627\u062a \u0627\u062c\u062a\u0645\u0627\u0639\u064a\u0629 \u0635\u062d\u064a\u0629. \u0625\u0630\u0627 \u0643\u0627\u0646 \u0627\u0644\u0645\u062d\u062a\u0648\u0649 \u064a\u062d\u062a\u0648\u064a \u0639\u0644\u0649 \u0645\u062d\u062a\u0648\u0649 \u0628\u0630\u064a\u0621 \u060c \u0623\u0648 \u0625\u0628\u0627\u062d\u064a \u060c \u0623\u0648 \u062a\u0639\u0631\u0636 \u060c \u0623\u0648 \u0639\u0646\u0641 \u060c \u0623\u0648 \u0645\u0639\u0627\u0645\u0644\u0627\u062a \u062e\u0627\u0635\u0629 \u060c \u0648\u0645\u0627 \u0625\u0644\u0649 \u0630\u0644\u0643 \u060c \u0641\u0633\u064a\u062a\u0645 \u062a\u0639\u0644\u064a\u0642 \u0627\u0644\u062d\u0633\u0627\u0628."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PROFILE_TIP_AR_2:Ljava/lang/String; = "2. \u0628\u0639\u062f \u0627\u0644\u062d\u0641\u0638 \u060c \u0633\u064a\u062f\u062e\u0644 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627 \u0642\u0627\u0626\u0645\u0629 \u0627\u0646\u062a\u0638\u0627\u0631 \u0627\u0644\u0645\u0631\u0627\u062c\u0639\u0629 \u060c \u0648\u064a\u0645\u0643\u0646 \u0644\u0644\u0645\u0633\u062a\u062e\u062f\u0645\u064a\u0646 \u0631\u0624\u064a\u0629 \u0627\u0644\u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u0645\u062d\u062f\u062b\u0629 \u0641\u0642\u0637 \u0628\u0639\u062f \u0627\u062c\u062a\u064a\u0627\u0632 \u0627\u0644\u0645\u0631\u0627\u062c\u0639\u0629."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UGC_TIP_AR_1:Ljava/lang/String; = "1. \u0635\u062d\u064a \u0627\u062c\u062a\u0645\u0627\u0639\u064a\u0627. \u0633\u064a\u062a\u0645 \u062a\u0639\u0644\u064a\u0642 \u0627\u0644\u0645\u0634\u0627\u0631\u0643\u0627\u062a \u0627\u0644\u062a\u064a \u062a\u062a\u0636\u0645\u0646 \u0645\u062d\u062a\u0648\u0649 \u0628\u0630\u064a\u0626\u064b\u0627 \u0623\u0648 \u0625\u0628\u0627\u062d\u064a\u064b\u0627 \u0623\u0648 \u0641\u0627\u062d\u0634\u064b\u0627 \u0623\u0648 \u0639\u0646\u064a\u0641\u064b\u0627 \u0623\u0648 \u062e\u0627\u0635\u064b\u0627 \u0623\u0648 \u063a\u064a\u0631 \u0630\u0644\u0643."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UGC_TIP_AR_2:Ljava/lang/String; = "2. \u064a\u0645\u0643\u0646 \u0644\u0644\u0645\u0624\u0644\u0641 \u062d\u0630\u0641 \u0648\u0638\u064a\u0641\u0629 \u0627\u0644\u062a\u0639\u0644\u064a\u0642 \u0648\u064a\u0637\u0644\u0628 \u0645\u0646 \u0627\u0644\u062c\u0645\u0647\u0648\u0631 \u0627\u0644\u062a\u062d\u062f\u062b \u0628\u0637\u0631\u064a\u0642\u0629 \u062d\u0636\u0627\u0631\u064a\u0629."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UGC_TIP_AR_3:Ljava/lang/String; = "3. \u0628\u0639\u062f \u0627\u0644\u0646\u0634\u0631 \u060c \u0633\u064a\u062f\u062e\u0644 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627 \u0642\u0627\u0626\u0645\u0629 \u0627\u0646\u062a\u0638\u0627\u0631 \u0627\u0644\u0645\u0631\u0627\u062c\u0639\u0629 \u060c \u0648\u064a\u0645\u0643\u0646 \u0644\u0644\u0645\u0633\u062a\u062e\u062f\u0645\u064a\u0646 \u0631\u0624\u064a\u0629 \u0627\u0644\u0645\u062d\u062a\u0648\u0649 \u0641\u0642\u0637 \u0628\u0639\u062f \u0627\u062c\u062a\u064a\u0627\u0632 \u0627\u0644\u0645\u0631\u0627\u062c\u0639\u0629."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private scene:I

.field public scrollLayout:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public sure:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvWaitingTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static final checkShouldShow(I)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;->checkShouldShow(I)Z

    move-result p0

    return p0
.end method

.method public static final getInstance(I)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;->getInstance(I)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0195

    return v0
.end method

.method public final getScrollLayout()Landroid/widget/ScrollView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->scrollLayout:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "scrollLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSure()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->sure:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sure"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTvWaitingTip()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->tvWaitingTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tvWaitingTip"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->scene:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    const-string v1, "\r\n"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "1. \u0634\u0628\u0643\u0627\u062a \u0627\u062c\u062a\u0645\u0627\u0639\u064a\u0629 \u0635\u062d\u064a\u0629. \u0625\u0630\u0627 \u0643\u0627\u0646 \u0627\u0644\u0645\u062d\u062a\u0648\u0649 \u064a\u062d\u062a\u0648\u064a \u0639\u0644\u0649 \u0645\u062d\u062a\u0648\u0649 \u0628\u0630\u064a\u0621 \u060c \u0623\u0648 \u0625\u0628\u0627\u062d\u064a \u060c \u0623\u0648 \u062a\u0639\u0631\u0636 \u060c \u0623\u0648 \u0639\u0646\u0641 \u060c \u0623\u0648 \u0645\u0639\u0627\u0645\u0644\u0627\u062a \u062e\u0627\u0635\u0629 \u060c \u0648\u0645\u0627 \u0625\u0644\u0649 \u0630\u0644\u0643 \u060c \u0641\u0633\u064a\u062a\u0645 \u062a\u0639\u0644\u064a\u0642 \u0627\u0644\u062d\u0633\u0627\u0628."

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "2. \u0628\u0639\u062f \u0627\u0644\u062d\u0641\u0638 \u060c \u0633\u064a\u062f\u062e\u0644 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627 \u0642\u0627\u0626\u0645\u0629 \u0627\u0646\u062a\u0638\u0627\u0631 \u0627\u0644\u0645\u0631\u0627\u062c\u0639\u0629 \u060c \u0648\u064a\u0645\u0643\u0646 \u0644\u0644\u0645\u0633\u062a\u062e\u062f\u0645\u064a\u0646 \u0631\u0624\u064a\u0629 \u0627\u0644\u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u0645\u062d\u062f\u062b\u0629 \u0641\u0642\u0637 \u0628\u0639\u062f \u0627\u062c\u062a\u064a\u0627\u0632 \u0627\u0644\u0645\u0631\u0627\u062c\u0639\u0629."

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getTvWaitingTip()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getTvWaitingTip()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f12073e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getScrollLayout()Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getScrollLayout()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 10
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "1. \u0635\u062d\u064a \u0627\u062c\u062a\u0645\u0627\u0639\u064a\u0627. \u0633\u064a\u062a\u0645 \u062a\u0639\u0644\u064a\u0642 \u0627\u0644\u0645\u0634\u0627\u0631\u0643\u0627\u062a \u0627\u0644\u062a\u064a \u062a\u062a\u0636\u0645\u0646 \u0645\u062d\u062a\u0648\u0649 \u0628\u0630\u064a\u0626\u064b\u0627 \u0623\u0648 \u0625\u0628\u0627\u062d\u064a\u064b\u0627 \u0623\u0648 \u0641\u0627\u062d\u0634\u064b\u0627 \u0623\u0648 \u0639\u0646\u064a\u0641\u064b\u0627 \u0623\u0648 \u062e\u0627\u0635\u064b\u0627 \u0623\u0648 \u063a\u064a\u0631 \u0630\u0644\u0643."

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "2. \u064a\u0645\u0643\u0646 \u0644\u0644\u0645\u0624\u0644\u0641 \u062d\u0630\u0641 \u0648\u0638\u064a\u0641\u0629 \u0627\u0644\u062a\u0639\u0644\u064a\u0642 \u0648\u064a\u0637\u0644\u0628 \u0645\u0646 \u0627\u0644\u062c\u0645\u0647\u0648\u0631 \u0627\u0644\u062a\u062d\u062f\u062b \u0628\u0637\u0631\u064a\u0642\u0629 \u062d\u0636\u0627\u0631\u064a\u0629."

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "3. \u0628\u0639\u062f \u0627\u0644\u0646\u0634\u0631 \u060c \u0633\u064a\u062f\u062e\u0644 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627 \u0642\u0627\u0626\u0645\u0629 \u0627\u0646\u062a\u0638\u0627\u0631 \u0627\u0644\u0645\u0631\u0627\u062c\u0639\u0629 \u060c \u0648\u064a\u0645\u0643\u0646 \u0644\u0644\u0645\u0633\u062a\u062e\u062f\u0645\u064a\u0646 \u0631\u0624\u064a\u0629 \u0627\u0644\u0645\u062d\u062a\u0648\u0649 \u0641\u0642\u0637 \u0628\u0639\u062f \u0627\u062c\u062a\u064a\u0627\u0632 \u0627\u0644\u0645\u0631\u0627\u062c\u0639\u0629."

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getTvWaitingTip()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getTvWaitingTip()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1209d4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->j()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BuzzCast \u0647\u064a \u0639\u0628\u0627\u0631\u0629 \u0639\u0646 \u0645\u0646\u0635\u0629 \u0628\u062b \u0645\u0628\u0627\u0634\u0631 \u0627\u062c\u062a\u0645\u0627\u0639\u064a \u0635\u062f\u064a\u0642\u0629 \u0644\u0644\u0628\u064a\u0626\u0629 \u0648\u0635\u062d\u064a\u0629. \u0625\u0630\u0627 \u0643\u0627\u0646 \u0647\u0646\u0627\u0643 \u0623\u064a \u0645\u0646 \u0627\u0644\u0627\u0646\u062a\u0647\u0627\u0643\u0627\u062a \u0627\u0644\u062a\u0627\u0644\u064a\u0629 \u060c \u0641\u0633\u062a\u0642\u0648\u0645 BuzzCast \u0628\u062d\u0638\u0631 / \u062a\u062c\u0645\u064a\u062f \u062d\u0633\u0627\u0628 \u0627\u0644\u0645\u0636\u064a\u0641. \u0641\u064a \u0627\u0644\u062d\u0627\u0644\u0627\u062a \u0627\u0644\u0634\u062f\u064a\u062f\u0629 \u060c \u0633\u064a\u062a\u0645 \u0625\u0644\u063a\u0627\u0621 \u0627\u0644\u0639\u0642\u062f \u060c \u0648\u0633\u064a\u062a\u0645 \u0625\u0644\u063a\u0627\u0621 \u0627\u0644\u0639\u0645\u0648\u0644\u0629 \u0648\u0627\u0644\u0648\u0643\u064a\u0644. \u064a\u062c\u0628 \u0639\u0644\u0649 \u062c\u0645\u064a\u0639 \u0627\u0644\u0648\u0643\u0644\u0627\u0621 / \u0627\u0644\u0645\u0636\u064a\u0641\u064a\u0646 \u0627\u0644\u0627\u0646\u062a\u0628\u0627\u0647 \u0648\u0627\u0644\u0627\u0644\u062a\u0632\u0627\u0645 \u0628\u0642\u0648\u0627\u0639\u062f\u0646\u0627.\n\n\u0623 - \u0639\u0631\u0636 \u0645\u0637\u0648\u0644 \u0644\u0623\u062c\u0632\u0627\u0621 \u0645\u0648\u0636\u0639\u064a\u0629 \u062d\u0633\u0627\u0633\u0629 \u0645\u0646 \u0627\u0644\u062c\u0633\u0645 \u0648\u0623\u0641\u0639\u0627\u0644 \u0645\u0648\u062d\u064a\u0629 \u062c\u0646\u0633\u064a\u0627 \u060c \u0645\u062b\u0644 \u0627\u0644\u0636\u063a\u0637 \u0639\u0644\u0649 \u0627\u0644\u062b\u062f\u064a \u060c \u0648\u0645\u062f\u0627\u0639\u0628\u0629 \u0627\u0644\u0623\u062c\u0632\u0627\u0621 \u0627\u0644\u062d\u0633\u0627\u0633\u0629 \u0645\u0646 \u0627\u0644\u062c\u0633\u0645 \u060c \u0648\u063a\u064a\u0631 \u0630\u0644\u0643 \u0645\u0646 \u0627\u0644\u0633\u0644\u0648\u0643\u064a\u0627\u062a \u0627\u0644\u0645\u0648\u062d\u064a\u0629 \u062c\u0646\u0633\u064a\u0627.\n\u0628 - \u0644\u0627 \u064a\u0645\u0643\u0646 \u0623\u0646 \u062a\u0635\u062f\u0631 \u0623\u0635\u0648\u0627\u062a \u062a\u0623\u0648\u0647 \u0623\u0648 \u0623\u0635\u0648\u0627\u062a \u0623\u062e\u0631\u0649 \u063a\u064a\u0631 \u0642\u0627\u0646\u0648\u0646\u064a\u0629\n\u062c- \u0644\u0627 \u064a\u0648\u062c\u062f \u0645\u062d\u062a\u0648\u0649 \u0625\u0628\u0627\u062d\u064a \u0645\u062b\u0644 \u0627\u0644\u0623\u0639\u0636\u0627\u0621 \u0627\u0644\u062c\u0646\u0633\u064a\u0629\n\u062f - \u0644\u0627 \u064a\u0645\u0643\u0646 \u062a\u0634\u063a\u064a\u0644 \u0645\u0642\u0627\u0637\u0639 \u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u0627\u0644\u0625\u0628\u0627\u062d\u064a\u0629 \u060c \u0648\u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u060c \u0648\u0645\u0627 \u0625\u0644\u0649 \u0630\u0644\u0643.\n\u0647\u0640 - \u0644\u0627 \u062a\u0631\u062a\u062f\u064a \u062c\u0648\u0627\u0631\u0628 \u0634\u0628\u0643\u064a\u0629 \u060c \u0645\u0644\u0627\u0628\u0633 \u0634\u0641\u0627\u0641\u0629 \u060c \u0645\u0644\u0627\u0628\u0633 \u062f\u0627\u062e\u0644\u064a\u0629 \u0648\u063a\u064a\u0631\u0647\u0627 \u0645\u0646 \u0627\u0644\u0645\u0644\u0627\u0628\u0633 \u0627\u0644\u0645\u0648\u062d\u064a\u0629 \u062c\u0646\u0633\u064a\u064b\u0627\n\u0648- \u064a\u062c\u0628 \u0623\u0644\u0627 \u064a\u0632\u064a\u062f \u0627\u0644\u0635\u062f\u0631 \u0627\u0644\u0645\u0643\u0634\u0648\u0641 \u0639\u0646 \u062b\u0644\u062b\u064a \u0627\u0644\u0641\u0633\u062a\u0627\u0646\n\u062d. \u0644\u0627 \u064a\u0645\u0643\u0646 \u0639\u0631\u0636 \u0627\u0644\u0623\u0644\u0639\u0627\u0628 \u0627\u0644\u062c\u0646\u0633\u064a\u0629\n\u0623\u0646\u0627 \u0644\u0627 \u064a\u0645\u0643\u0646 \u0644\u0644\u0631\u062c\u0627\u0644 \u062f\u062e\u0648\u0644 \u0627\u0644\u0628\u0644\u0627\u062f \u0639\u0627\u0631\u064a\u0627\u062a"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getTvWaitingTip()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getTvWaitingTip()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1204fa

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getSure()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 27
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$initView$2;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$initView$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const-string v1, "scene"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->scene:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p1, -0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->setParamsHeight(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    const-string v0, "createCenterDialog()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setScrollLayout(Landroid/widget/ScrollView;)V
    .locals 1
    .param p1    # Landroid/widget/ScrollView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->scrollLayout:Landroid/widget/ScrollView;

    return-void
.end method

.method public final setSure(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->sure:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvWaitingTip(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->tvWaitingTip:Landroid/widget/TextView;

    return-void
.end method
