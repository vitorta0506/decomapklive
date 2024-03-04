.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$e;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Integer;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    const v0, 0x7f0a0741

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$e;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
