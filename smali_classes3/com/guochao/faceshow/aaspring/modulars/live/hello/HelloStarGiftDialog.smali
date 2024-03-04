.class public final Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u0012\u0010\u001c\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0017J\u0012\u0010\u001d\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001e\u001a\u00020\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0002\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "lockGiftNum",
        "",
        "getLockGiftNum",
        "()I",
        "setLockGiftNum",
        "(I)V",
        "type",
        "getType",
        "setType",
        "unLockGiftNum",
        "getUnLockGiftNum",
        "setUnLockGiftNum",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityCreated",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private lockGiftNum:I

.field private type:I

.field private unLockGiftNum:I

.field public viewBinding:Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->initView$lambda-4$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final getInstance(III)Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;->getInstance(III)Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-4$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getLockGiftNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->lockGiftNum:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->type:I

    return v0
.end method

.method public final getUnLockGiftNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->unLockGiftNum:I

    return v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "type"

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->type:I

    const-string p2, "lockGiftNum"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->lockGiftNum:I

    const-string p2, "unLockGiftNum"

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->unLockGiftNum:I

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;

    move-result-object p1

    .line 7
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->type:I

    if-nez p2, :cond_2

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p2

    const-string v0, "hellostar_hellogift"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p2

    const-string v0, "KEY_HELLO_HOUR_SHOW"

    invoke-virtual {p2, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 10
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;->tvDayUnlock:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;->tvTitle:Landroid/widget/TextView;

    const v1, 0x7f1203f8

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->lockGiftNum:I

    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->unLockGiftNum:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array p2, v2, [Ljava/lang/Object;

    .line 12
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->lockGiftNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const v1, 0x7f120403

    invoke-virtual {p0, v1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "getString(R.string.hello\u2026gift_number, lockGiftNum)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 13
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->unLockGiftNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.hello\u2026ft_number, unLockGiftNum)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f120401

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object v1, v4, v2

    .line 14
    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(R.string.hello\u2026ckNumbers, unlockNumbers)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p2

    .line 16
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    .line 17
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    const v11, 0x7f06006b

    invoke-static {v5, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v3

    const/16 v12, 0x21

    invoke-virtual {v2, v4, v3, p2, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->lockGiftNum:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->unLockGiftNum:I

    if-ne p2, v3, :cond_1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v1

    .line 19
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v1

    .line 20
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    .line 21
    :goto_0
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-static {v3, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v2, v0, p2, v1, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 22
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;->tvDayUnlock:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 24
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;->tvHelpTip:Landroid/widget/TextView;

    const v1, 0x7f06037f

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;->tvDayUnlock:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f1203f9

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 28
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;->tvHelpTip:Landroid/widget/TextView;

    const v1, 0x7f06003a

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;->tvIKnow:Landroid/widget/TextView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "it1.attributes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 6
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x50

    .line 7
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getSystemUiVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    const/4 p1, 0x0

    const v0, 0x7f13012a

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13012a

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public final setLockGiftNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->lockGiftNum:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->type:I

    return-void
.end method

.method public final setUnLockGiftNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->unLockGiftNum:I

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->viewBinding:Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;

    return-void
.end method
