.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imDisturbToggle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;Z)Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d88\u606f\u514d\u6253\u6270e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zune"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6d88\u606f\u514d\u6253\u6270 = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zune"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imDisturbToggle:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSilent(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imDisturbToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getMyNoDisturb()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getMyNoDisturb()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imDisturbToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;Z)Z

    .line 8
    new-instance p1, Ly7/h;

    invoke-direct {p1}, Ly7/h;-><init>()V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly7/h;->a(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
