.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->a:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    invoke-interface {p1, v1}, Lla/a;->setPen(Lla/e;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BRUSH:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    invoke-interface {p1, v1}, Lla/a;->setPen(Lla/e;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->y0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)[I

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->a:I

    sub-int/2addr v2, v0

    aget v1, v1, v2

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->u0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;I)I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->t0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(I)V

    invoke-interface {p1, v1}, Lla/a;->setColor(Lla/b;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->getLeftSeekBar()Lcom/guochao/faceshow/aaspring/views/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/r;->s()F

    move-result v1

    invoke-interface {p1, v1}, Lla/a;->setSize(F)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->a:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->isSelect()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 9
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->a:I

    if-eq v1, v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->a:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
