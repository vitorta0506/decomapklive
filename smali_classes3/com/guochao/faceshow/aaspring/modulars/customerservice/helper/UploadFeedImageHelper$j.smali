.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$j;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/view/ViewGroup;Landroidx/activity/result/ActivityResultCaller;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$j;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p2

    rem-int/lit8 p2, p2, 0x3

    const/high16 p3, 0x40400000    # 3.0f

    if-eqz p2, :cond_1

    const/4 p4, 0x2

    if-eq p2, p4, :cond_0

    const/high16 p2, 0x3fc00000    # 1.5f

    .line 3
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 4
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method
