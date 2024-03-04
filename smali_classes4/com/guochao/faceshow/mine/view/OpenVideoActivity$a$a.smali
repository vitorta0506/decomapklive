.class Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iput p2, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    sput-object v0, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    const-class v2, Lcom/guochao/faceshow/activity/PersonVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    invoke-direct {v1}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;-><init>()V

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iget-object v3, v3, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->d0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iget-object v5, v5, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v5}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->e0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "page"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_private"

    const-string v5, "1"

    .line 8
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "limit"

    const-string v5, "24"

    .line 9
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v3, Lcom/guochao/faceshow/utils/Contants;->getMyVideoNew:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->e(Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iget-object v3, v3, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->e0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->c(I)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->d(Ljava/util/HashMap;)V

    const-string v2, "config"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    iget v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->a:I

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->e0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)I

    move-result v1

    const-string v2, "currPage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->k0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)I

    move-result v1

    const-string/jumbo v2, "totalPage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->d0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const/16 v2, 0xc

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
