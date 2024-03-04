.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->a:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->access$102(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;Z)Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ChatActivity"

    const-string v1, "onFailure: "

    .line 1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a5\u53e3\u51fa\u73b0\u9519\u8bef code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  \r\n msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iput-object p1, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result p1

    const/4 p2, 0x4

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/bean/UserBean;->setRiskLevel(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/bean/UserBean;->setRiskLevel(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->access$002(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;Z)Z

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->showLimitDialog(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->setHasRead()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAutoTransFlag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslate:Z

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAutoTransFlag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslate:Z

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getPreferentialLang()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getPreferentialLang()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getPhoneLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getPhoneLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslateLanguage:Z

    goto :goto_2

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getFaceCastAppLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslateLanguage:Z

    .line 20
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isfristData:Z

    if-eqz v1, :cond_8

    .line 21
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslate:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslateLanguage:Z

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->notifyData(Ljava/lang/String;Z)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isfristData:Z

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "otherLanguage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    if-eqz v0, :cond_9

    .line 25
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->j(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    .line 26
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->initChatControl(Z)V

    .line 27
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->a:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mKeyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 28
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz p2, :cond_c

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz p1, :cond_c

    .line 30
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getPreferentialLang()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getPreferentialLang()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setPreferentialLang(Ljava/lang/String;)V

    .line 32
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAppointState()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setAppointState(I)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getImAudioAppointSwitch()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setImAudioAppointSwitch(I)V

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getImVideoAppointSwitch()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setImVideoAppointSwitch(I)V

    .line 35
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->refreshEndIcon()V

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

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$a;->onResponse(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
