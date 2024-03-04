.class Lcom/guochao/faceshow/push/PushSettingActivity$i;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/push/PushSettingActivity;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/push/model/PushStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/push/PushSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/push/model/PushStatus;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/push/model/PushStatus;
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
            "Lcom/guochao/faceshow/push/model/PushStatus;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/push/model/PushStatus;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iput-object p1, p2, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p2, Lcom/guochao/faceshow/push/PushSettingActivity;->swCommentsAbout:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getIs_reply_comment()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->swUseYourMusic:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getIs_music()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->swVideoAbout:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getIs_video()I

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->swWhoSendGift:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getIs_gift()I

    move-result p1

    if-ne p1, v1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->swWhoSendGiftFromVideo:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getIs_video_gift()I

    move-result p1

    if-ne p1, v1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->swWhoSendGiftForChat:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getIs_gift_chat()I

    move-result p1

    if-ne p1, v1, :cond_6

    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    const/4 p1, 0x0

    :goto_5
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->swFocusVideo:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getIs_like_vide()I

    move-result p1

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->swFocusLive:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getIs_anchor()I

    move-result p1

    if-ne p1, v1, :cond_8

    const/4 p1, 0x1

    goto :goto_7

    :cond_8
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->swQAndA:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getIs_qa()I

    move-result p1

    if-ne p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_8

    :cond_9
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->newChatMsgStatues:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/guochao/faceshow/push/PushSettingActivity;->a:Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p1}, Lcom/guochao/faceshow/push/model/PushStatus;->getChat_switch()I

    move-result p1

    if-ne p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a:Lcom/guochao/faceshow/push/PushSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/push/PushSettingActivity;->b0(Lcom/guochao/faceshow/push/PushSettingActivity;)V

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
            "Lcom/guochao/faceshow/push/model/PushStatus;",
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

    check-cast p1, Lcom/guochao/faceshow/push/model/PushStatus;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/push/PushSettingActivity$i;->a(Lcom/guochao/faceshow/push/model/PushStatus;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
