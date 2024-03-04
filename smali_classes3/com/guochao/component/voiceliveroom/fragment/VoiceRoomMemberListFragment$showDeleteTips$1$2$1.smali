.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2;->invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 3
    sget v0, Lcom/guochao/component/liveroom/R$string;->voice_room_member_remove_toast:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 5
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$showDeleteTips$1$2$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->access$postDelayedLoadData(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)V

    :cond_0
    return-void
.end method
