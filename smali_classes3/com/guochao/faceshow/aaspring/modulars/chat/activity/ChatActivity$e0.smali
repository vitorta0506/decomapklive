.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->refreshEndIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getImAudioAppointSwitch()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getImVideoAppointSwitch()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->J(Landroidx/fragment/app/FragmentActivity;IILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V

    :cond_2
    :goto_0
    return-void
.end method
