.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$l;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->getAudienceList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$l;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
