.class public final Lcom/guochao/faceshow/aaspring/dialog/GCDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "context",
        "Landroid/content/Context;",
        "builder",
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;",
        "(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;)V",
        "viewBinding",
        "Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;",
        "getViewBinding",
        "()Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;",
        "setViewBinding",
        "(Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Builder",
        "lib_core_release"
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
.field private final builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;)V
    .locals 1

    .line 1
    sget v0, Lcom/guochao/lib_core/R$style;->GCDialog:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->onCreate$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->onCreate$lambda-3$lambda-1(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreate$lambda-3$lambda-1(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getCancel$lib_core_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private static final onCreate$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getConfirm$lib_core_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->viewBinding:Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;

    move-result-object p1

    const-string v0, "it"

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->setViewBinding(Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;)V

    invoke-virtual {p1}, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->getViewBinding()Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;

    move-result-object p1

    .line 8
    iget-object v2, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->cancel:Landroid/widget/TextView;

    const-string v0, "cancel"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/guochao/faceshow/aaspring/dialog/b;

    invoke-direct {v5, p0}, Lcom/guochao/faceshow/aaspring/dialog/b;-><init>(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 9
    iget-object v8, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->ok:Landroid/widget/TextView;

    const-string v0, "ok"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    new-instance v11, Lcom/guochao/faceshow/aaspring/dialog/a;

    invoke-direct {v11, p0}, Lcom/guochao/faceshow/aaspring/dialog/a;-><init>(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getTitle$lib_core_release()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getTitle$lib_core_release()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getContent$lib_core_release()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->content:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getContent$lib_core_release()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->content:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getShowCancel$lib_core_release()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->cancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_3
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->cancel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getOkText$lib_core_release()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ne v0, v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_6

    .line 23
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->ok:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getOkText$lib_core_release()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getSingleButton$lib_core_release()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getConfirm$lib_core_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_7

    .line 26
    iget-object v0, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->ok:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->builder:Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->getCancel$lib_core_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_8

    .line 28
    iget-object p1, p1, Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;->cancel:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :cond_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v0, -0x1

    .line 30
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 31
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x500

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_9
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;->viewBinding:Lcom/guochao/lib_core/databinding/DialogGcCommonDialogBinding;

    return-void
.end method
