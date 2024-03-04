.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field beautyIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field beautyName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d021f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/pusher/beauty/BeautyItem;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;->beautyIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getIcon()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;->beautyName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getDisplayName()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
