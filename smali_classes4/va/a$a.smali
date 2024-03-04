.class Lva/a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lva/a;->a(Landroid/content/Context;Lva/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/bean/CountryData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lva/a$c;


# direct methods
.method constructor <init>(Lva/a$c;)V
    .locals 0

    iput-object p1, p0, Lva/a$a;->a:Lva/a$c;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lva/a$a;->a:Lva/a$c;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/bean/CountryCacheData;->countryDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lva/a$a;->a:Lva/a$c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lva/a$c;->onResponse(Ljava/util/List;)V

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

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lva/a$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    sget-object p2, Lcom/guochao/faceshow/bean/CountryCacheData;->countryDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lva/a$a;->a:Lva/a$c;

    invoke-interface {p2, p1}, Lva/a$c;->onResponse(Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    sget-object p2, Lcom/guochao/faceshow/bean/CountryCacheData;->countryDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 5
    sget-object p2, Lcom/guochao/faceshow/bean/CountryCacheData;->countryDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
