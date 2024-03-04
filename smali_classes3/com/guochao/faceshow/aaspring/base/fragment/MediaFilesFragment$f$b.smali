.class Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "img"

    invoke-static {v0, p1, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->b2(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->Z1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I

    move-result v1

    const-string v2, "key2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->c2(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I

    move-result v1

    const-string v2, "mediaType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->Y1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Z

    move-result v2

    sub-int/2addr v1, v2

    const-string v2, "currentPosition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d2(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d2(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "key3"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->R1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I

    move-result v1

    const-string v2, "params_key3_position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->S1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->S1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->S1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "doodle_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    const/16 v2, 0x3e8

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
