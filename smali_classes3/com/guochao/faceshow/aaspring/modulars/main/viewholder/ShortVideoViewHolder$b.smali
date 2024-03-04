.class Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->M(ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-wide/16 v0, 0x2bc

    .line 1
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getIsAttention()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 4
    :cond_2
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_chat_click:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->w:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method
