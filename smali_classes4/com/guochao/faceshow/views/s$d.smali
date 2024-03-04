.class Lcom/guochao/faceshow/views/s$d;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/s;->F(Lcom/guochao/faceshow/views/VideoProgressView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/s;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/s;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz p2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->f(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/s$e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->f(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/s$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {v0}, Lcom/guochao/faceshow/views/s;->g(Lcom/guochao/faceshow/views/s;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/views/s$e;->b(J)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->i(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->i(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->i(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->m()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->j(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/ColorfulProgress;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->j(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/ColorfulProgress;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {v0}, Lcom/guochao/faceshow/views/s;->k(Lcom/guochao/faceshow/views/s;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/ColorfulProgress;->setCurPosition(F)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->a(Lcom/guochao/faceshow/views/s;)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->m(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->m(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->m(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/SliderViewContainer;

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/SliderViewContainer;->e()V

    goto :goto_1

    .line 13
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/s;->o(Lcom/guochao/faceshow/views/s;I)I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->k(Lcom/guochao/faceshow/views/s;)F

    move-result p3

    int-to-float p2, p2

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Lcom/guochao/faceshow/views/s;->l(Lcom/guochao/faceshow/views/s;F)F

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->k(Lcom/guochao/faceshow/views/s;)F

    move-result p1

    iget-object p2, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-virtual {p2}, Lcom/guochao/faceshow/views/s;->z()F

    move-result p2

    div-float/2addr p1, p2

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p2}, Lcom/guochao/faceshow/views/s;->p(Lcom/guochao/faceshow/views/s;)J

    move-result-wide p2

    long-to-float p2, p2

    mul-float p1, p1, p2

    float-to-long p1, p1

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p3}, Lcom/guochao/faceshow/views/s;->b(Lcom/guochao/faceshow/views/s;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p3}, Lcom/guochao/faceshow/views/s;->c(Lcom/guochao/faceshow/views/s;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p3}, Lcom/guochao/faceshow/views/s;->n(Lcom/guochao/faceshow/views/s;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/guochao/faceshow/views/s;->d(Lcom/guochao/faceshow/views/s;Z)Z

    .line 7
    iget-object p3, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p3}, Lcom/guochao/faceshow/views/s;->f(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/s$e;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    iget-object p3, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p3}, Lcom/guochao/faceshow/views/s;->f(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/s$e;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/guochao/faceshow/views/s$e;->a(J)V

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p3, p1, p2}, Lcom/guochao/faceshow/views/s;->h(Lcom/guochao/faceshow/views/s;J)J

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->i(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->i(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->i(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->m()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->j(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/ColorfulProgress;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->j(Lcom/guochao/faceshow/views/s;)Lcom/guochao/faceshow/views/ColorfulProgress;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p2}, Lcom/guochao/faceshow/views/s;->k(Lcom/guochao/faceshow/views/s;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/ColorfulProgress;->setCurPosition(F)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->a(Lcom/guochao/faceshow/views/s;)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->m(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->m(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/views/s$d;->a:Lcom/guochao/faceshow/views/s;

    invoke-static {p1}, Lcom/guochao/faceshow/views/s;->m(Lcom/guochao/faceshow/views/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/SliderViewContainer;

    .line 18
    invoke-virtual {p2}, Lcom/guochao/faceshow/views/SliderViewContainer;->e()V

    goto :goto_1

    :cond_4
    return-void
.end method
