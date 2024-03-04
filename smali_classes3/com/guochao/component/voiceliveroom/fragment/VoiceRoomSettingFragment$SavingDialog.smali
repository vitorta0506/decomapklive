.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavingDialog"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "component_liveroom_release"
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
.field public viewBinding:Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;->viewBinding:Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
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

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v0, v2}, Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;

    move-result-object p1

    const-string v0, "it"

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;->setViewBinding(Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;)V

    .line 6
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;->loading:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    sget v3, Lcom/guochao/lib_base/R$raw;->loading_global:I

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_2
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 12
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;->viewBinding:Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;

    return-void
.end method
