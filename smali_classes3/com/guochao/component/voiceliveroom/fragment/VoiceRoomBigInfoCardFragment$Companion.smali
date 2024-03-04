.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;",
        "showJoinTips",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "memberViewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final showJoinTips(Landroidx/fragment/app/Fragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberViewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p3, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->setVoiceRoomSeatControllerViewModel(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)V

    .line 3
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMemberPrice()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_2

    .line 5
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/component/liveroom/R$string;->member_content1_fee:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fragment.resources.getSt\u2026ring.member_content1_fee)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{icon}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 8
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 11
    sget v6, Lcom/guochao/component/liveroom/R$mipmap;->ic_voice_room_diamond:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    const/high16 v6, 0x41500000    # 13.0f

    .line 12
    invoke-static {v6}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v7

    invoke-static {v6}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v6

    invoke-virtual {v5, v2, v2, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/guochao/component/liveroom/R$color;->orange_FF9900:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v2, v4, v1}, Lcom/guochao/component/voiceliveroom/helper/a;->c(ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/guochao/component/voiceliveroom/helper/a$a;

    invoke-direct {v1, v5}, Lcom/guochao/component/voiceliveroom/helper/a$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-static {v4, v3, v1}, Lcom/guochao/component/voiceliveroom/helper/a;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/guochao/component/liveroom/R$string;->member_content1_free:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fragment.resources.getSt\u2026ing.member_content1_free)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 20
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/guochao/component/liveroom/R$string;->member_title:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "fragment.resources.getSt\u2026ng(R.string.member_title)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    sget-object v2, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$1;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$1;

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;

    invoke-direct {v3, p2, p3, v1, v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p1, v2, v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    const-string p2, "it1"

    .line 23
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
