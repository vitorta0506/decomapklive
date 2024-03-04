.class public final Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->getOneVOneRecord(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
        "recordHistory",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $pageNo:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->$pageNo:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->$pageNo:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->access$resetDatas(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;ILjava/util/List;)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->$pageNo:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->access$resetDatas(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;ILjava/util/List;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;->getList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->$pageNo:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->access$resetDatas(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;ILjava/util/List;)V

    return-void

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->$pageNo:I

    invoke-static {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->access$resetDatas(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
