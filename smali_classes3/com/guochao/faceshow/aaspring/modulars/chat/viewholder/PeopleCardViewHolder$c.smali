.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->l(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Space;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;Landroid/widget/Space;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;->a:Landroid/widget/Space;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;->a:Landroid/widget/Space;

    invoke-virtual {v0}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$c;->a:Landroid/widget/Space;

    invoke-virtual {v1, v0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
