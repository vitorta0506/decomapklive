.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0012\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;",
        "()V",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onViewCreated",
        "view",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;->initView$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "null cannot be cast to non-null type android.net.Uri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p2, p1

    .line 3
    :goto_1
    invoke-static {p0}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->n(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;->bgIV:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;->bgIV:Landroid/widget/ImageView;

    const-string p1, "viewBinding.bgIV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/e1;

    invoke-direct {v3, p0}, Lcom/guochao/component/voiceliveroom/fragment/e1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

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
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->makeDialogLikeActivity()V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;

    return-void
.end method
