.class Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->ivExpandable:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->startByUserName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->a(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/MyTopicAndName;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v2, v1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_topic_click:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 6
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v0, v1, Lcom/guochao/faceshow/bean/MyTopicAndName;->userId:Ljava/lang/String;

    const-string v2, "topic_id"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v0, v1, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->removeInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "titleName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getTypeId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->removeInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tyPeName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void

    .line 12
    :cond_4
    :goto_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setTopicName(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->b(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->r0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    return-void
.end method
