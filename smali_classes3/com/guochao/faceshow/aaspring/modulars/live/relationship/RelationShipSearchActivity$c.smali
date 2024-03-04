.class Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->l0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/ContactBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/ContactBean;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;Lcom/guochao/faceshow/aaspring/beans/ContactBean;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->a:Lcom/guochao/faceshow/aaspring/beans/ContactBean;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->a:Lcom/guochao/faceshow/aaspring/beans/ContactBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->isHasInvited()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->a:Lcom/guochao/faceshow/aaspring/beans/ContactBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->isHasInvited()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->setHasInvited(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->b:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->a:Lcom/guochao/faceshow/aaspring/beans/ContactBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->getUserPhone()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    const-string v1, "user/contacts/mobileShortmessage"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "contactName"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codemobile"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$c;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "send_message_port_ues"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
