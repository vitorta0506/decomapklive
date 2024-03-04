.class Lcom/guochao/faceshow/mine/view/AreaActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/AreaActivity;->g0(ILjava/lang/String;Lcom/guochao/faceshow/bean/CountryData;)V
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
.field final synthetic a:Lcom/guochao/faceshow/bean/CountryData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/guochao/faceshow/mine/view/AreaActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/AreaActivity;Lcom/guochao/faceshow/bean/CountryData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->c:Lcom/guochao/faceshow/mine/view/AreaActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->a:Lcom/guochao/faceshow/bean/CountryData;

    iput-object p3, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->b:Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
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
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->c:Lcom/guochao/faceshow/mine/view/AreaActivity;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->a:Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "CURRENT_COUNTRY"

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->c:Lcom/guochao/faceshow/mine/view/AreaActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->b:Ljava/lang/String;

    const-string v0, "coding"

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->c:Lcom/guochao/faceshow/mine/view/AreaActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->a:Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object p2

    const-string v0, "flag"

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->c:Lcom/guochao/faceshow/mine/view/AreaActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->a:Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->country:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->a:Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->a:Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->a:Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result p2

    iput p2, p1, Lcom/guochao/faceshow/bean/UserBean;->countryId:I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;->c:Lcom/guochao/faceshow/mine/view/AreaActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
