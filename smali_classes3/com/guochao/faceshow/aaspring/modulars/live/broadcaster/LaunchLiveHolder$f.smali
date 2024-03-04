.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;-><init>(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->mCreateVoiceRoomFragment:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchLiveEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->setTitleTV(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
