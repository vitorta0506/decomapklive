.class Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/personal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->m0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->a:Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 5

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_8

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->a:Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object p3

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v4

    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v3

    if-ne v4, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, p1, :cond_5

    .line 5
    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v1

    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 8
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setSelect(Z)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v1

    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 11
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setSelect(Z)V

    goto :goto_2

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 18
    :cond_8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->a:Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 19
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object p3

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 21
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v3

    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v2

    if-ne v3, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    if-eq v0, p1, :cond_b

    .line 22
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27
    :cond_d
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_e
    :goto_4
    return-void
.end method
