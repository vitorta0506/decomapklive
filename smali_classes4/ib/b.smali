.class public Lib/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x578


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;Lhb/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lhb/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->friend_delete:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    const-string v1, "accountId"

    invoke-virtual {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lib/b$d;

    invoke-direct {v1, p0, p1, p2}, Lib/b$d;-><init>(Ljava/lang/String;Landroid/app/Activity;Lhb/b;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lib/b$c;

    invoke-direct {v1, p1, p2, p0}, Lib/b$c;-><init>(Landroid/app/Activity;Lhb/b;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;",
            "Landroid/app/Activity;",
            "Lhb/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v1, Lib/b$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 4
    :cond_3
    :goto_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->friend_add:Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fromSource"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    const-string v1, "aids"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance v0, Lib/b$b;

    invoke-direct {v0, p2, p0, p3}, Lib/b$b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lhb/b;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance v0, Lib/b$a;

    invoke-direct {v0, p2, p3, p0}, Lib/b$a;-><init>(Landroid/app/Activity;Lhb/b;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method public static c(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Ljava/lang/String;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lp7/h;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lp7/h;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setNewConversation(Z)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2c_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lib/b$e;

    invoke-direct {v1, v0, p2, p3}, Lib/b$e;-><init>(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    :catch_0
    return-void
.end method
