.class Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/ChatControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;->a:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;->getChatSet()I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;->a:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;->a:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivFollow:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;->a:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;->a:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivFollow:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;->a:Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;->getChatSet()I

    move-result p1

    invoke-static {p2, p1}, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->d0(Lcom/guochao/faceshow/mine/view/ChatControllerActivity;I)I

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;->a(Lcom/guochao/faceshow/aaspring/beans/PrivacyChatSet;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
