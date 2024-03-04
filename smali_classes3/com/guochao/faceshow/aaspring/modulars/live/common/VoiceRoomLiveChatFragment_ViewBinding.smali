.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private m:Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;

    const v0, 0x7f0a0e2b

    const-string v1, "field \'audioSwitch\' and method \'voiceSwitch\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'audioSwitch\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->audioSwitch:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->n:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0690

    const-string v1, "method \'showGift\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->o:Landroid/view/View;

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06a6

    const-string v1, "method \'showMore\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->p:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;->audioSwitch:Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->n:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->o:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment_ViewBinding;->p:Landroid/view/View;

    .line 10
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment_ViewBinding;->unbind()V

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
