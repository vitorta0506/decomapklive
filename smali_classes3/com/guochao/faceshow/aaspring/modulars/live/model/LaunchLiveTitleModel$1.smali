.class Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->getNetPersonsTitles(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/PersonsTitleBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

.field final synthetic val$onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->val$onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;

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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PersonsTitleBean;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PERSONS_LIVE_TITLES = "

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
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
            "Lcom/guochao/faceshow/aaspring/beans/PersonsTitleBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PersonsTitleBean;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$102(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;Z)Z

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/PersonsTitleBean;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PersonsTitleBean;->getMorePeopleInfoName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$300(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;->access$302(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->val$onResultListener:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;

    if-eqz p1, :cond_3

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel$OnResultListener;->onResult(Lcom/guochao/faceshow/aaspring/modulars/live/model/LaunchLiveTitleModel;)V

    :cond_3
    return-void
.end method
