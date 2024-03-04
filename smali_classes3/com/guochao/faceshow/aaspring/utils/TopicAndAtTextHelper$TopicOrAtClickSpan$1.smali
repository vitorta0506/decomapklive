.class Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->this$0:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->access$100(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->mText:Ljava/lang/String;

    const-string v1, "@"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->removeInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->startByUserName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "#"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;-><init>()V

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->removeInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setTopicName(Ljava/lang/String;)V

    .line 9
    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->r0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDoubleTabClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->this$0:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->access$200(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;)Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$TopicOrAtClickSpan;->this$0:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->access$200(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;)Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;->onDoubleTap()V

    :cond_0
    return-void
.end method
