.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->L2(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getMusicId()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_music_click:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getMusicId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "musicId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "musicName"

    const-string v2, "titleName"

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    const v4, 0x7f120b08

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getMusicUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "musicUrl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getTypeId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tyPeName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
