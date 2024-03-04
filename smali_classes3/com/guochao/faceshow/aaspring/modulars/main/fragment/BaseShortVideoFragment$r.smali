.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->J:Lcom/guochao/faceshow/mine/model/ContributionListBean;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "userId"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->e2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_gift_click:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$r;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->i2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    :goto_0
    return-void
.end method
