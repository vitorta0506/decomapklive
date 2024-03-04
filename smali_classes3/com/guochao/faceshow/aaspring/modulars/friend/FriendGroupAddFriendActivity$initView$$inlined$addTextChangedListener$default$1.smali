.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release"
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getMenuItem()Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->clearEdit:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getMenuItem()Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->clearEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
