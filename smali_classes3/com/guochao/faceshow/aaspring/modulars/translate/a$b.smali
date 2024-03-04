.class Lcom/guochao/faceshow/aaspring/modulars/translate/a$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/translate/a;->g(Ljava/util/List;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/TranslateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/translate/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/a;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/a$b;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/a$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/TranslateResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/TranslateResult;
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
            "Lcom/guochao/faceshow/aaspring/beans/TranslateResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/TranslateResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TranslateResult;->getTexts()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TranslateResult;->getTexts()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TranslateResult;->getTexts()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/a$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;->onResponse(Ljava/util/List;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_0
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/a$b;->onFailure(Lg7/a;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/TranslateResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/a$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;->onResponse(Ljava/util/List;)V

    :cond_0
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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/TranslateResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/translate/a$b;->a(Lcom/guochao/faceshow/aaspring/beans/TranslateResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
