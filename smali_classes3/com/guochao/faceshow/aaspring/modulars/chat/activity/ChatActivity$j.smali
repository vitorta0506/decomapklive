.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkFriendRelation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;->a:Ljava/lang/String;

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;->getFriends()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp_friend_relation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
