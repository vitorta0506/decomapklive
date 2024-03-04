.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanetData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u00012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "_response",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "",
        "invoke",
        "com/guochao/faceshow/aaspring/base/http/v2/GCRequest$success$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->setPlanetDataTime(J)V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetUserIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PlanetResult;

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "key_plant_masked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "module_planet"

    invoke-static {v2, v4, v3, v1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetUserIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PlanetResult;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setBaseMatch(Z)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setLayout(Z)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setMCurrentIndex(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getHomeUser()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getChatUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getHomeUser()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMViewRunnable()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$1$1$1$1$1;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-direct {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$1$1$1$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setOnTagClickListener(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;)V

    :cond_2
    return-void
.end method
