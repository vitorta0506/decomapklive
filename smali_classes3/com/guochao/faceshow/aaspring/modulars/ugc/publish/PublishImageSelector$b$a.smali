.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->h(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;Z)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result v2

    const/16 v3, 0x68

    if-ge v2, v3, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->e(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->e(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result p1

    const/16 v0, 0x66

    if-gt p1, v0, :cond_3

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;-><init>()V

    const/16 v0, 0x6a

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setMediaType(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->f(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->f(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;->a()V

    :cond_4
    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Landroid/view/View;I)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    .line 5
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result v4

    const/16 v5, 0x65

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v4, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;-><init>()V

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setFileSmallUrl(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setFileUrl(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setHeight(I)V

    .line 10
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setWidth(I)V

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setFileId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "data"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "position"

    .line 14
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "img"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    const-string p3, "transitionName"

    .line 17
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-static {p3, p2, p1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 19
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p3, v0, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
