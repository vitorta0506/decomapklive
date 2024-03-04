.class public Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private result:Ljava/lang/String;

.field private type_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeActivityCache(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "removeActivityId"

    .line 2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

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

    check-cast v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget v3, v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object p0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 9
    iget-object p0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 10
    iget-object p0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lc8/b;->x(Lcom/guochao/faceshow/promotion/data/PromotionData;)V

    .line 12
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p0

    invoke-virtual {p0}, Lc8/b;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public addActivityCache()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->result:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->result:Ljava/lang/String;

    const-class v2, Lcom/guochao/faceshow/promotion/data/PromotionData;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/promotion/data/PromotionData;

    if-eqz v0, :cond_4

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 5
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v2

    invoke-virtual {v2}, Lc8/b;->n()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v2

    invoke-virtual {v2}, Lc8/b;->m()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/b;->x(Lcom/guochao/faceshow/promotion/data/PromotionData;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    .line 8
    iget-object v2, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 9
    iget v4, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    iget v3, v3, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    if-ne v4, v3, :cond_2

    return-void

    .line 10
    :cond_3
    iget-object v2, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    iget-object v1, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/b;->x(Lcom/guochao/faceshow/promotion/data/PromotionData;)V

    .line 14
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getType_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->type_id:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->result:Ljava/lang/String;

    return-void
.end method

.method public setType_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->type_id:Ljava/lang/String;

    return-void
.end method
