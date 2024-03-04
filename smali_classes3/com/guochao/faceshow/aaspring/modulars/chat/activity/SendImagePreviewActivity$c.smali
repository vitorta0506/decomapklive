.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getSelectPosition()I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)I

    move-result v1

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 10
    :goto_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->A0()V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Ljava/util/List;)Ljava/util/List;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 16
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;)Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "currentPosition"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object p1

    const-wide/16 v3, 0x96

    invoke-virtual {p1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->t0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;->a(Ljava/util/List;)V

    return-void
.end method
