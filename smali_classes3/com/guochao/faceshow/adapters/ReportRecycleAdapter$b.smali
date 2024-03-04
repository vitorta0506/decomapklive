.class Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->e(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    iput p3, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "add_com_guochao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v0, :cond_2

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->b(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    const/16 v1, 0x64

    invoke-static {v0, p1, v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->i0(Landroid/app/Activity;Ljava/util/ArrayList;II)V

    goto/16 :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v3}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->c(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 9
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_5

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v4}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->b(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image_urls"

    .line 13
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 14
    iget v1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->b:I

    const-string v2, "image_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->b(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "img"

    invoke-static {v1, p1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->b(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;->c:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->b(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
