.class Lbb/b$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b;->k(Lod/a;)V
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
.field final synthetic a:Lod/a;

.field final synthetic b:Lbb/b;


# direct methods
.method constructor <init>(Lbb/b;Lod/a;)V
    .locals 0

    iput-object p1, p0, Lbb/b$a;->b:Lbb/b;

    iput-object p2, p0, Lbb/b$a;->a:Lod/a;

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
            "Ljava/lang/String;",
            ">;)V"
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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lbb/b$a;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/promotion/data/PromotionData;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/promotion/data/PromotionData;

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p2, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 5
    iget-object p2, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p2}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 6
    iget v1, v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getBlackShow()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x44

    if-eq v1, v2, :cond_3

    const/16 v2, 0x47

    if-eq v1, v2, :cond_3

    const/16 v2, 0x48

    if-ne v1, v2, :cond_2

    .line 8
    :cond_3
    iget-object p2, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p2}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    :cond_4
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lc8/b;->x(Lcom/guochao/faceshow/promotion/data/PromotionData;)V

    .line 10
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lbb/a;->j(Z)V

    .line 11
    iget-object p2, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->msg:Ljava/lang/String;

    invoke-static {p2}, Lcom/guochao/faceshow/utils/Ahttp;->isNetError(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 12
    :cond_5
    iget-object p2, p0, Lbb/b$a;->b:Lbb/b;

    invoke-static {p2, p1}, Lbb/b;->a(Lbb/b;Lcom/guochao/faceshow/promotion/data/PromotionData;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 13
    iget-object p2, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p2}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->requestTime:J

    .line 15
    iget-object v2, p0, Lbb/b$a;->b:Lbb/b;

    iget-object v3, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v3}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lbb/b$a;->b:Lbb/b;

    invoke-static {v5}, Lbb/b;->b(Lbb/b;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lbb/b;->c(Lbb/b;Ljava/util/List;ZLjava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_6
    iget-object p2, p0, Lbb/b$a;->b:Lbb/b;

    invoke-static {p2}, Lbb/b;->b(Lbb/b;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-object p2, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lbb/b$a;->b:Lbb/b;

    invoke-static {v2, p1}, Lbb/b;->d(Lbb/b;Lcom/guochao/faceshow/promotion/data/PromotionData;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    iget-object v1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->video:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->requestTime:J

    .line 20
    iget-object v2, p0, Lbb/b$a;->b:Lbb/b;

    iget-object v3, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    iget-object v3, v3, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->video:Ljava/util/List;

    .line 21
    invoke-static {v2}, Lbb/b;->e(Lbb/b;)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v2, v3, v0, v4}, Lbb/b;->c(Lbb/b;Ljava/util/List;ZLjava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_7
    iget-object v0, p0, Lbb/b$a;->b:Lbb/b;

    invoke-static {v0}, Lbb/b;->e(Lbb/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 24
    :goto_1
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbb/a;->k(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V

    .line 25
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lbb/a;->m(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V

    .line 26
    iget-object p2, p0, Lbb/b$a;->a:Lod/a;

    if-eqz p2, :cond_8

    .line 27
    iget-object v0, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    iget v1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->code:I

    iget-object p1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->msg:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lod/a;->a(Ljava/lang/Object;ILjava/lang/String;)V

    :cond_8
    return-void
.end method
