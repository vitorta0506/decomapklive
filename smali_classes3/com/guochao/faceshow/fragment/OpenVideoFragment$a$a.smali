.class Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;->b:Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;

    iput p2, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;->b:Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    sput-object p1, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    .line 2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;->b:Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/VideoPlayListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    invoke-direct {v0}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;->b:Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;

    iget-object v2, v2, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;->b:Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;

    iget-object v2, v2, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "coding"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_private"

    const-string v3, "1"

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "limit"

    const-string v3, "24"

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;->b:Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;

    iget-object v2, v2, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->P1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->c(I)V

    .line 10
    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->getMyVideoNew:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->e(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->d(Ljava/util/HashMap;)V

    const-string v1, "config"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "type"

    const/4 v1, 0x2

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "private"

    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    iget v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;->a:I

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a$a;->b:Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$a;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
