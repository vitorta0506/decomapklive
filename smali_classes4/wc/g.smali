.class final Lwc/g;
.super Lwc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwc/d<",
        "Lvc/h;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwc/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lwc/g;->c(Lorg/json/JSONObject;)Lvc/h;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lorg/json/JSONObject;)Lvc/h;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lvc/h$b;

    invoke-direct {v0}, Lvc/h$b;-><init>()V

    const-string v1, "issuer"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lvc/h$b;->k(Ljava/lang/String;)Lvc/h$b;

    move-result-object v0

    const-string v1, "authorization_endpoint"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lvc/h$b;->h(Ljava/lang/String;)Lvc/h$b;

    move-result-object v0

    const-string/jumbo v1, "token_endpoint"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lvc/h$b;->o(Ljava/lang/String;)Lvc/h$b;

    move-result-object v0

    const-string v1, "jwks_uri"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lvc/h$b;->l(Ljava/lang/String;)Lvc/h$b;

    move-result-object v0

    const-string v1, "response_types_supported"

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lyc/b;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lvc/h$b;->m(Ljava/util/List;)Lvc/h$b;

    move-result-object v0

    const-string/jumbo v1, "subject_types_supported"

    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lyc/b;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lvc/h$b;->n(Ljava/util/List;)Lvc/h$b;

    move-result-object v0

    const-string v1, "id_token_signing_alg_values_supported"

    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lyc/b;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lvc/h$b;->j(Ljava/util/List;)Lvc/h$b;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lvc/h$b;->i()Lvc/h;

    move-result-object p1

    return-object p1
.end method
