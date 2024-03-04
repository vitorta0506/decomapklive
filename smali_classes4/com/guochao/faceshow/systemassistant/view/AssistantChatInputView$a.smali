.class Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$a;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$a;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->b(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$a;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->c(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$a;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->b(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$a;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->c(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$a;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->a(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)Lcom/guochao/faceshow/aaspring/utils/ChatView;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/utils/ChatView;->sending()V

    :cond_1
    :goto_0
    return-void
.end method
