.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->isSelect()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->a:I

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->a:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;I)I

    .line 8
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x41000000    # 8.0f

    .line 9
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v1, v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;I)I

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I

    move-result-object p1

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;I)I

    goto :goto_1

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;I)I

    goto :goto_1

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->a:I

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;I)I

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I

    move-result-object p1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->a:I

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 22
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
