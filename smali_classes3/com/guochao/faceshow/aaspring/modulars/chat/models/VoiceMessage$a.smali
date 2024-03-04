.class Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->getOnPlayListener()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mVoiceMessageViewHolderWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mVoiceMessageViewHolderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->a(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mVoiceMessageViewHolderWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->mVoiceMessageViewHolderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;->b(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
