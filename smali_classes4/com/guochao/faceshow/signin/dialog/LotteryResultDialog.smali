.class public final Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0012\u0010\u0016\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "currentCount",
        "",
        "getCurrentCount",
        "()I",
        "setCurrentCount",
        "(I)V",
        "viewBinding",
        "Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "Companion",
        "lib_sign_in_release"
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
.field public static final Companion:Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private currentCount:I

.field public viewBinding:Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->initView$lambda-1(Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->initView$lambda-2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCurrentCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->currentCount:I

    return v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->viewBinding:Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "root"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getRewardDiamond()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->lotteryContent:Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;->rewardDiamond:Landroid/widget/TextView;

    .line 4
    sget v5, Lcom/guochao/faceshow/signin/R$string;->lottery_free_diamonds:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v5, "getString(R.string.lottery_free_diamonds)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string/jumbo v7, "x %s"

    const-string v8, ""

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x78

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->lotteryContent:Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;

    iget-object v5, v5, Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;->rewardDiamondCount:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->lotteryContent:Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;

    iget-object v3, v3, Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;->avatarDays:Landroid/widget/TextView;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v6, Lcom/guochao/faceshow/signin/R$string;->f_dress_days:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v0, v6, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, " "

    const-string v14, ""

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->lotteryContent:Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;

    iget-object v3, v3, Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;->newDays:Landroid/widget/TextView;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v11

    invoke-virtual {v0, v6, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    const-string v14, ""

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->lotteryContent:Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;

    iget-object v3, v3, Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;->speedDays:Landroid/widget/TextView;

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v11

    invoke-virtual {v0, v6, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, " "

    const-string v10, ""

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->lotteryContent:Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;

    iget-object v3, v3, Lcom/guochao/faceshow/signin/databinding/LayoutLotteryResultContentBinding;->exploreDays:Landroid/widget/TextView;

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/guochao/faceshow/signin/R$string;->signin_perday_result_fifth:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getCharmValues()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->tvIKnow:Landroid/widget/TextView;

    new-instance v2, Lcom/guochao/faceshow/signin/dialog/g;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/signin/dialog/g;-><init>(Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->bgView:Landroid/view/View;

    sget-object v2, Lcom/guochao/faceshow/signin/dialog/h;->a:Lcom/guochao/faceshow/signin/dialog/h;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->tvIKnow:Landroid/widget/TextView;

    sget v2, Lcom/guochao/faceshow/signin/R$string;->lottery_i_know:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;->tvIKnow:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

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

.method public final setCurrentCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->currentCount:I

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->viewBinding:Lcom/guochao/faceshow/signin/databinding/FragmentLotteryResultBinding;

    return-void
.end method
