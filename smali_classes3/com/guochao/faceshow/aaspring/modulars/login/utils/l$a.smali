.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;->a:I

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
            "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;
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
            "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getReg()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->f(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;->a:I

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->j(ILcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    :goto_0
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
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;->onResponse(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
