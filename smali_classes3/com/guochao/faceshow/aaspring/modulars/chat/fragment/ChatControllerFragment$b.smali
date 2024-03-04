.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/e;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/e;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/e;->onInputting(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->o2(Z)V

    return-void
.end method
