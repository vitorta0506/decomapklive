.class public final Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->loadData(I)V
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
.field final synthetic this$0:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 4
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
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean;->getList()Ljava/util/List;

    move-result-object v2

    const-string v3, "data.list"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->notifyDataLoaded(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$loadData$lambda-2$$inlined$success$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->notifyDataLoaded(Z)V

    :goto_0
    return-void
.end method
