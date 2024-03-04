.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->doPublishVideo(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 2

    .line 2
    iget-boolean p1, p1, Lte/a;->b:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    const-string v1, "from"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "topicName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ActivityTransitionAnimUtils;->startActivityByDownToUp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    const/4 v0, 0x0

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->o0(ILjava/util/List;)V

    :goto_0
    return-void
.end method
