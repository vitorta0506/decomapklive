.class public Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;",
            ">;"
        }
    .end annotation
.end field

.field public c:[Landroid/view/View;

.field private d:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;

.field firstPhoto:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondPhoto:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field thirdPhoto:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field view2:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field view3:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->c:[Landroid/view/View;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->a:Landroid/view/View;

    .line 4
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->c:[Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->firstPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->secondPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->thirdPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->b:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    .line 5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v5, 0xe

    const v6, 0x7f0f008c

    if-ne p1, v4, :cond_4

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->firstPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->secondPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->thirdPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->view2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->view3:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->firstPhoto:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getSmallImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6, v5}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 18
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v7, 0x2

    if-ne p1, v7, :cond_5

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->firstPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->secondPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->thirdPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->view2:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->view3:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->firstPhoto:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getSmallImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v6, v5}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->secondPhoto:Landroid/widget/ImageView;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getSmallImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6, v5}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->firstPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->secondPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->thirdPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->view2:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->view3:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->firstPhoto:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getSmallImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v6, v5}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->secondPhoto:Landroid/widget/ImageView;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getSmallImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v6, v5}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->thirdPhoto:Landroid/widget/ImageView;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getSmallImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6, v5}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    :goto_1
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03e2

    if-eq v0, v1, :cond_4

    const v1, 0x7f0a0a35

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a0b90

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->d:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;

    if-eqz v0, :cond_6

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->d:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;->a(Landroid/view/View;Ljava/util/List;I)V

    goto :goto_3

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->d:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;

    if-eqz v0, :cond_6

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    .line 12
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->d:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;->a(Landroid/view/View;Ljava/util/List;I)V

    goto :goto_3

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->d:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;

    if-eqz v0, :cond_6

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->b:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;

    .line 18
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->d:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;->a(Landroid/view/View;Ljava/util/List;I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public setOnClickImageListener(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->d:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;

    return-void
.end method
