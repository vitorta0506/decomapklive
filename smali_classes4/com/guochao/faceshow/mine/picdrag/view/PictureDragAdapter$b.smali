.class Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroidx/cardview/widget/CardView;

.field d:Landroid/view/View;

.field e:Landroid/widget/ImageView;

.field final synthetic f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0316

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->a:Landroid/widget/ImageView;

    const p1, 0x7f0a02a4

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->e:Landroid/widget/ImageView;

    const p1, 0x7f0a0317

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->b:Landroid/widget/TextView;

    const p1, 0x7f0a0439

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->c:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0a0511

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->d:Landroid/view/View;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->isIllegal()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, -0x3

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    if-eq v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_1

    .line 2
    iget v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    if-eq v0, v4, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->c:Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    .line 5
    invoke-static {v1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f06038c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    iget-object v6, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    .line 6
    invoke-static {v6}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    .line 7
    invoke-static {v1, v5, v6, v7}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->b:Landroid/widget/TextView;

    const v1, 0x7f120728

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->c:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    iget-boolean v1, v0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->e:Z

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    if-eq v1, v4, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    :goto_2
    iget v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->localType:I

    if-ne v0, v4, :cond_4

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->a:Landroid/widget/ImageView;

    const v1, 0x7f0f0607

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 18
    :cond_4
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgUrl:Ljava/lang/String;

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object v0

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/c;->J1(Landroid/graphics/drawable/Drawable;)Lic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_3

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->a(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object v0

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->smallImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/c;->J1(Landroid/graphics/drawable/Drawable;)Lic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 21
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$a;-><init>(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;ILcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b$b;-><init>(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$b;ILcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
