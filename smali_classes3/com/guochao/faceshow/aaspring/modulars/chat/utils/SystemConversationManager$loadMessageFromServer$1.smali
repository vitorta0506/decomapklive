.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadMessageFromServer$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->loadMessageFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001J2\u0010\u0008\u001a\u00020\u00072\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00022\u0016\u0010\u0006\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0005H\u0016J \u0010\u000b\u001a\u00020\u00072\u0016\u0010\n\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\tH\u0016J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadMessageFromServer$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "onCompleted",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$setRequesting$p(Z)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadMessageFromServer$1;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$setOfficialConversationRead(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastData$p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastData$p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->checkRemove(ZLjava/util/List;)V

    .line 6
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$handleConversations(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Ljava/util/List;)V

    return-void
.end method
