.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->submitNumber(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getSelectTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;Z)V

    return-void
.end method

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
            "Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;",
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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$a;->a(Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
