.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private k:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding;->k:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    const v0, 0x7f0a05f2

    const-string v1, "method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding;->l:Landroid/view/View;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding;->k:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding;->k:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment_ViewBinding;->l:Landroid/view/View;

    .line 5
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->unbind()V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
