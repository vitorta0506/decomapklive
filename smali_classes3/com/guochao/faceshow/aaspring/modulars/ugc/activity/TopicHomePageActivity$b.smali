.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->b:Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;-><init>()V

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->b:Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->b:Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;->setUserImg(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->b:Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;->setShortUrl(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "#%s | %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->b:Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;->getUserImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setImgUrl(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f12095c

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->b:Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicDetailBean;->getShortUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShortUrl(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->d2(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ShareFragment"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
