.class public final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomInviteHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomInviteHolder;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "view",
        "Landroid/view/View;",
        "liveChatFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;",
        "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/LayoutVoiceRoomChatInviteBinding;",
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


# instance fields
.field private final viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomChatInviteBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveChatFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomChatInviteBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutVoiceRoomChatInviteBinding;

    move-result-object v0

    const-string v1, "bind(view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomInviteHolder;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutVoiceRoomChatInviteBinding;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/databinding/LayoutVoiceRoomChatInviteBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/c;

    invoke-direct {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/c;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda-2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V
    .locals 7

    const-string p2, "$view"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$liveChatFragment"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of p2, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_0

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v1, p0

    .line 2
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p0

    const-string p2, "/app/voice_room_share"

    invoke-virtual {p0, p2}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.guochao.lib_service_center.share.service.ShareProxy"

    .line 4
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/guochao/lib_service_center/share/service/ShareProxy;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string p0, "liveRoomId"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p0

    invoke-interface {p0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v3, ""

    const-string v4, ""

    .line 7
    invoke-interface/range {v0 .. v6}, Lcom/guochao/lib_service_center/share/service/ShareProxy;->start(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomInviteHolder;->_init_$lambda-2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V

    return-void
.end method
