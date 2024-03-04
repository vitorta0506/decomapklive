.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "key1"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)I

    move-result v0

    const-string v1, "key2"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
