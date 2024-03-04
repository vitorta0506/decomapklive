.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->c2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->MusicLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    .line 10
    new-instance v5, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-direct {v5}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;-><init>()V

    .line 11
    sget v6, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->h:I

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setType(I)V

    .line 12
    iput-object v4, v5, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    .line 13
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_3

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_1

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
