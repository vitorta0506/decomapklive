.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

.field deleteImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imageThumb:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field videoIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->imageThumb:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->imageThumb:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->a:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

    return-object p0
.end method


# virtual methods
.method public e(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->a:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->imageThumb:Landroid/widget/ImageView;

    const p2, 0x7f060337

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->videoIcon:Landroid/widget/ImageView;

    const p2, 0x7f0f0607

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->videoIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->deleteImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 7
    :pswitch_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->videoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->videoIcon:Landroid/widget/ImageView;

    const v1, 0x7f0f023e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->imageThumb:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getDisplayThumbUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getDisplayThumbUri()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->deleteImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->deleteImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 12
    :pswitch_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->videoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->imageThumb:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getDisplayThumbUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getDisplayThumbUri()Landroid/net/Uri;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->deleteImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->deleteImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02a9

    const/16 v1, 0x66

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0de3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->a:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result p1

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->a:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;->d(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->a:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result p1

    if-gt p1, v1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->a:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;->b(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

    return-void
.end method
