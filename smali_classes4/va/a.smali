.class public Lva/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lva/a$d;,
        Lva/a$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lva/a$c;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/bean/CountryCacheData;->countryDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/guochao/faceshow/bean/CountryCacheData;->countryDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Lva/a$c;->onResponse(Ljava/util/List;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "api/countrynamemultilingual/list"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lva/a$a;

    invoke-direct {v0, p1}, Lva/a$a;-><init>(Lva/a$c;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static b(Landroid/content/Context;Lva/a$d;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "api/Country/getCountryMsg"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lva/a$b;

    invoke-direct {v0, p1}, Lva/a$b;-><init>(Lva/a$d;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
