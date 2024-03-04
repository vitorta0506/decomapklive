.class Lib/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lib/b;->c(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Ljava/lang/String;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
    .locals 0

    iput-object p1, p0, Lib/b$e;->a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iput-object p2, p0, Lib/b$e;->b:Landroid/app/Activity;

    iput-object p3, p0, Lib/b$e;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lib/b$e;->a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setTIMConversation2(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v0, p0, Lib/b$e;->a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->N0(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->R0(Z)V

    .line 4
    iget-object p1, p0, Lib/b$e;->b:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lib/b$e;->b:Landroid/app/Activity;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lib/b$e;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p0, p1}, Lib/b$e;->a(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method
