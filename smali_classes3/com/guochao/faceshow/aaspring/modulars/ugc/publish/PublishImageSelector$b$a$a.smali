.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->d(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a$a;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 2

    .line 2
    iget-boolean p1, p1, Lte/a;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0xd3

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->g0(Landroid/app/Activity;Ljava/util/ArrayList;I)V

    :cond_0
    return-void
.end method
