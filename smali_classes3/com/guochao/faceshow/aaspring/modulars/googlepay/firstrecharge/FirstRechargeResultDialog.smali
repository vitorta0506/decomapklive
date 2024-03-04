.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0004\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0012\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0013\u001a\u00020\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u0010\u001b\u001a\u00020\u000b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0016\u0010\u001c\u001a\u00020\u000b2\u000e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u001eJ\u0014\u0010\u001f\u001a\u00020\u000b2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001eJ\u0014\u0010 \u001a\u00020\u000b2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001eR$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "setImageResouse",
        "imageView",
        "Landroid/widget/ImageView;",
        "giftBean",
        "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
        "setTextView",
        "textView",
        "Landroid/widget/TextView;",
        "setTextViewCount",
        "showMoreContent",
        "datas",
        "",
        "showOneContent",
        "showTwoContent",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public viewBinding:Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setImageResouse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    return-void
.end method

.method public static final synthetic access$setTextView(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    return-void
.end method

.method public static final synthetic access$setTextViewCount(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setTextViewCount(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private final setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lhc/a;->k(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    const p2, 0x7f0f01f8

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    const p2, 0x7f0f01f7

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const p2, 0x7f0f029d

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const p2, 0x7f12060d

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.muser_center_report_tenth)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const p2, 0x7f12076a

    .line 3
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const p2, 0x7f120424

    .line 4
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    goto :goto_1

    .line 5
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12083f

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getNum()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private final setTextViewCount(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getNum()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;)V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;->ivClose:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/e;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;->tvIKnow:Landroid/widget/TextView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/f;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "firstChargeGiftBean"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getDatas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;->fragmentContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;->fragmentContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getDatas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_3
    if-nez p2, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    :goto_2
    const/4 v0, 0x1

    if-nez p2, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6

    if-eqz p1, :cond_9

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getDatas()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->showOneContent(Ljava/util/List;)V

    goto :goto_5

    :cond_6
    :goto_3
    const/4 v0, 0x2

    if-nez p2, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_8

    if-eqz p1, :cond_9

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getDatas()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->showTwoContent(Ljava/util/List;)V

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz p1, :cond_9

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getDatas()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->showMoreContent(Ljava/util/List;)V

    :cond_9
    :goto_5
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

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    return-void
.end method

.method public final showMoreContent(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "datas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;->fragmentContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;->fragmentContent:Landroid/widget/FrameLayout;

    const v2, 0x7f0d0329

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a095c

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 8
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$2$1;

    invoke-direct {v2, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$2$1;-><init>(Ljava/util/List;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;

    invoke-direct {v1, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final showOneContent(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "datas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;->fragmentContent:Landroid/widget/FrameLayout;

    const v2, 0x7f0d032a

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0522

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    invoke-direct {p0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    const v1, 0x7f0a0b77

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    invoke-direct {p0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    const v1, 0x7f0a0c64

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setTextViewCount(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    return-void
.end method

.method public final showTwoContent(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "datas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;->fragmentContent:Landroid/widget/FrameLayout;

    const v2, 0x7f0d032b

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0571

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0522

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    invoke-direct {p0, v2, v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0a0b77

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    invoke-direct {p0, v2, v7}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0c64

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    invoke-direct {p0, v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setTextViewCount(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    const v1, 0x7f0a0577

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    invoke-direct {p0, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setImageResouse(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    invoke-direct {p0, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setTextView(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->setTextViewCount(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    return-void
.end method
