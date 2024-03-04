.class public Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "whoLikeMeDelete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "friends"

    invoke-static {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v1, 0x3

    const-string v2, "who_like_me"

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>(ILjava/lang/String;)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;-><init>()V

    .line 5
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserId(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->img:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAvatar(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setCount(I)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 9
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i$a;

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i$a;->a(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static registerProvider(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unRegisterProvider(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i$a;)V
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/i;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
