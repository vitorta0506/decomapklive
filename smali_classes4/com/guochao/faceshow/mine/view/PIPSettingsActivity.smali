.class public final Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u00012\u00020\u0002:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "()V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;)V",
        "initView",
        "",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onCheckedChanged",
        "p0",
        "Landroid/widget/CompoundButton;",
        "p1",
        "",
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
.field public static final Companion:Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SP_KEY_PIP_WATCHER:Ljava/lang/String; = "SP_KEY_PIP_WATCHER"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public viewBinding:Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;->Companion:Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;-><init>()V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f120812

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;->watcherCheck:Landroid/widget/CheckBox;

    sget-object v0, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;->Companion:Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;->watcherIsOpen(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;->watcherCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/CompoundButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const v1, 0x7f0a0e36

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 3
    sget-object p1, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;->Companion:Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;

    invoke-virtual {p1, p0, p2}, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;->setWatcherSwitch(Landroid/content/Context;Z)V

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;->hasPermissions(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f120813

    const/4 p2, 0x0

    const/4 v1, 0x4

    .line 5
    invoke-static {p0, p1, p2, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    :cond_2
    :goto_1
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;

    return-void
.end method
