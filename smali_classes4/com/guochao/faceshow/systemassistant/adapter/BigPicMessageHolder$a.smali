.class Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->d(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

.field final synthetic b:Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->b:Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget v1, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Type:I

    const/16 v2, 0x143

    if-ne v1, v2, :cond_0

    .line 2
    iget v1, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->PartakeTimes:I

    .line 3
    iget v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v2, v2, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Name:Ljava/lang/String;

    .line 5
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;-><init>()V

    .line 6
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setPartakeTimes(I)V

    .line 7
    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setTopicId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setTopicName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->r0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    return-void

    :cond_0
    const/16 v0, 0x144

    if-ne v1, v0, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-wide v1, v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->UserId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/utils/PushUtils;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->b:Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->c(Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "userToken"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-boolean v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->shareable:Z

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->g(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->k(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder$a;->b:Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->c(Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    return-void
.end method
