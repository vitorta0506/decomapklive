.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "data"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Ljava/util/List;

    move-result-object v1

    const-string v2, "key1"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->finish()V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->finish()V

    :goto_1
    return-void
.end method
