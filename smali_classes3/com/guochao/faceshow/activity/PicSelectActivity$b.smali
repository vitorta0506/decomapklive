.class Lcom/guochao/faceshow/activity/PicSelectActivity$b;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/PicSelectActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/PicSelectActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/PicSelectActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 10

    const v0, 0x7f0a0534

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0a056a

    .line 2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0a4f

    .line 3
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v6

    const v3, 0x7f0a0128

    .line 4
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v7

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/activity/PicSelectActivity;->b0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080220

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v9

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/activity/PicSelectActivity;->d0(Lcom/guochao/faceshow/activity/PicSelectActivity;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v9, :cond_0

    .line 8
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-static {v3, v6}, Lcom/guochao/faceshow/activity/PicSelectActivity;->i0(Lcom/guochao/faceshow/activity/PicSelectActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 14
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x41f80000    # 31.0f

    .line 15
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v4, 0x42300000    # 44.0f

    .line 16
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 17
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v4, 0x40000000    # 2.0f

    .line 24
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x41d80000    # 27.0f

    .line 25
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v4, 0x42200000    # 40.0f

    .line 26
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 27
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    :goto_0
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;

    move-object v4, v0

    move-object v5, p0

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;-><init>(Lcom/guochao/faceshow/activity/PicSelectActivity$b;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/String;)V

    return-void
.end method
