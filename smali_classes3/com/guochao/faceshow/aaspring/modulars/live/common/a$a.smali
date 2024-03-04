.class Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->p(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;
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
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiveRoom"

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getIsOnLine()I

    move-result v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->a:I

    if-ne v1, v2, :cond_1

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->b(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->a(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->w(Z)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;->a(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
