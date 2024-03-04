.class Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    .line 3
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/bean/FollowBeanLsit;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/FollowBeanLsit;

    const/4 p2, -0x1

    const-string v0, ""

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lg7/a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->onFailure(Lg7/a;)V

    return-void

    .line 4
    :cond_0
    iget v1, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit;->code:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 5
    new-instance p1, Lg7/a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->onFailure(Lg7/a;)V

    return-void

    .line 6
    :cond_1
    iget-object v1, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit;->result:Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;

    if-nez v1, :cond_2

    .line 7
    new-instance p1, Lg7/a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->onFailure(Lg7/a;)V

    return-void

    .line 8
    :cond_2
    iget-object p2, v1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    if-nez p2, :cond_3

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    .line 10
    :cond_3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->a:I

    if-ne p2, v2, :cond_5

    .line 11
    iget-object p2, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit;->result:Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;

    iget-object p2, p2, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0x14

    if-lt p2, v0, :cond_4

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    .line 14
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit;->result:Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit;->result:Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 16
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method
