.class Lva/a$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lva/a;->b(Landroid/content/Context;Lva/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/CountryData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lva/a$d;


# direct methods
.method constructor <init>(Lva/a$d;)V
    .locals 0

    iput-object p1, p0, Lva/a$b;->a:Lva/a$d;

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
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lva/a$b;->a:Lva/a$d;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lva/a$d;->onResponse(Lcom/guochao/faceshow/bean/CountryData;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/bean/CountryData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/bean/CountryData;
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
            "Lcom/guochao/faceshow/bean/CountryData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lva/a$b;->a:Lva/a$d;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1}, Lva/a$d;->onResponse(Lcom/guochao/faceshow/bean/CountryData;)V

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
    check-cast p1, Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {p0, p1, p2}, Lva/a$b;->onResponse(Lcom/guochao/faceshow/bean/CountryData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
