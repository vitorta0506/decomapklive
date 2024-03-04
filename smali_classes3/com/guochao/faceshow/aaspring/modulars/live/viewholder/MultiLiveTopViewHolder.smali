.class public final Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u0006H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0008\"\u0004\u0008\u001c\u0010\n\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "height",
        "",
        "getHeight",
        "()I",
        "setHeight",
        "(I)V",
        "imageView",
        "Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;",
        "getImageView",
        "()Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;",
        "setImageView",
        "(Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;)V",
        "textViewCount",
        "Landroid/widget/TextView;",
        "getTextViewCount",
        "()Landroid/widget/TextView;",
        "setTextViewCount",
        "(Landroid/widget/TextView;)V",
        "textViewInfo",
        "getTextViewInfo",
        "setTextViewInfo",
        "width",
        "getWidth",
        "setWidth",
        "bindValue",
        "",
        "roomItemData",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "position",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private height:I

.field private imageView:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textViewCount:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textViewInfo:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a051b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->imageView:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    const v0, 0x7f0a0c16

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->textViewInfo:Landroid/widget/TextView;

    const v0, 0x7f0a0c22

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->textViewCount:Landroid/widget/TextView;

    const/4 v0, 0x3

    .line 5
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const/high16 v0, 0x44430000    # 780.0f

    mul-float p1, p1, v0

    const/16 v0, 0x438

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->width:I

    int-to-float p1, p1

    const v0, 0x43be8000    # 381.0f

    mul-float p1, p1, v0

    const/16 v0, 0x30c

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 7
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->height:I

    return-void
.end method


# virtual methods
.method public bindValue(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->bindValue(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->imageView:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBackgroundImg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "roomItemData!!.backgroundImg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const p2, 0x7f0a00f6

    .line 3
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getAudienceList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "audienceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast p2, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->setAvatarList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->height:I

    return v0
.end method

.method public final getImageView()Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->imageView:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    return-object v0
.end method

.method public final getTextViewCount()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->textViewCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTextViewInfo()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->textViewInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->width:I

    return v0
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->height:I

    return-void
.end method

.method public final setImageView(Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->imageView:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    return-void
.end method

.method public final setTextViewCount(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->textViewCount:Landroid/widget/TextView;

    return-void
.end method

.method public final setTextViewInfo(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->textViewInfo:Landroid/widget/TextView;

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->width:I

    return-void
.end method
