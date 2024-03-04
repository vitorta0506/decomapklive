.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0012\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;",
        "()V",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;)V",
        "createCenterDialog",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
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
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;-><init>()V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method public static final newInstance(I)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;->newInstance(I)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object v0

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
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

    if-eqz p1, :cond_3

    const-string p2, "price"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;->contentTV:Landroid/widget/TextView;

    sget p2, Lcom/guochao/component/liveroom/R$string;->member_content1_free:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4
    :cond_0
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 5
    sget p2, Lcom/guochao/component/liveroom/R$string;->member_content1_fee:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.member_content1_fee)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{icon}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 7
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    sget v2, Lcom/guochao/lib_core/R$mipmap;->ic_earth:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/high16 v2, 0x41200000    # 10.0f

    .line 11
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v4

    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v3, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    sget v2, Lcom/guochao/component/liveroom/R$color;->orange_FF9900:I

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v2, v0, p1}, Lcom/guochao/component/voiceliveroom/helper/a;->c(ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/guochao/component/voiceliveroom/helper/a$a;

    invoke-direct {p1, v1}, Lcom/guochao/component/voiceliveroom/helper/a$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-static {v0, p2, p1}, Lcom/guochao/component/voiceliveroom/helper/a;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;->contentTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;

    return-void
.end method
