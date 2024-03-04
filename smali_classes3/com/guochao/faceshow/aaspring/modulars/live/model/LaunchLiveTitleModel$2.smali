.class Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getNetTitleAndCover(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

.field final synthetic val$onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->val$onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT_MY_LIVE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LiveRoom"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$402(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;Z)Z

    if-eqz p1, :cond_3

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;->getPrivateOnlineNum()I

    move-result v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$502(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;I)I

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;->getInfoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$602(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;->getMorePeopleInfoName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;->getMorePeopleInfoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;->getMorePeopleInfoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$302(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;->getLiveImg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;->getLiveImg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$702(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->saveModelData()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->val$onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;

    if-eqz p1, :cond_4

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;->onResult(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)V

    :cond_4
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
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$2;->onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveCoverData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
