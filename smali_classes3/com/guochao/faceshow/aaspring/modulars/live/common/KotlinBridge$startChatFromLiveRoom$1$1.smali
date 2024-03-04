.class final Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1;->invoke(Lcom/guochao/lib_core/feature/Feature;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/lib_core/feature/Feature;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/guochao/lib_core/feature/Feature;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $fragment:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

.field final synthetic $userId:Ljava/lang/String;

.field final synthetic $userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;->$userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;->$fragment:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;->$userName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/lib_core/feature/Feature;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;->invoke(Lcom/guochao/lib_core/feature/Feature;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/lib_core/feature/Feature;)V
    .locals 5
    .param p1    # Lcom/guochao/lib_core/feature/Feature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$onAvailable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;->$userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->e0(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setNewConversation(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;->$fragment:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 5
    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 6
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->r0()V

    .line 8
    :cond_3
    sget-object p1, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->Companion:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;->$userId:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;->$userName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1, v2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge$startChatFromLiveRoom$1$1;->$fragment:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 13
    invoke-static {p1, v1}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V

    return-void
.end method
