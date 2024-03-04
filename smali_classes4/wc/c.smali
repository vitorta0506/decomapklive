.class final Lwc/c;
.super Lwc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwc/d<",
        "Lvc/f;",
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

    invoke-virtual {p0, p1}, Lwc/c;->c(Lorg/json/JSONObject;)Lvc/f;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lorg/json/JSONObject;)Lvc/f;
    .locals 5
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "keys"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 5
    new-instance v3, Lvc/f$c$a;

    invoke-direct {v3}, Lvc/f$c$a;-><init>()V

    const-string v4, "kty"

    .line 6
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lvc/f$c$a;->l(Ljava/lang/String;)Lvc/f$c$a;

    move-result-object v3

    const-string v4, "alg"

    .line 7
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lvc/f$c$a;->h(Ljava/lang/String;)Lvc/f$c$a;

    move-result-object v3

    const-string/jumbo v4, "use"

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lvc/f$c$a;->m(Ljava/lang/String;)Lvc/f$c$a;

    move-result-object v3

    const-string v4, "kid"

    .line 9
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lvc/f$c$a;->k(Ljava/lang/String;)Lvc/f$c$a;

    move-result-object v3

    const-string v4, "crv"

    .line 10
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lvc/f$c$a;->j(Ljava/lang/String;)Lvc/f$c$a;

    move-result-object v3

    const-string/jumbo v4, "x"

    .line 11
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lvc/f$c$a;->n(Ljava/lang/String;)Lvc/f$c$a;

    move-result-object v3

    const-string/jumbo v4, "y"

    .line 12
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lvc/f$c$a;->o(Ljava/lang/String;)Lvc/f$c$a;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lvc/f$c$a;->i()Lvc/f$c;

    move-result-object v2

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Lvc/f$b;

    invoke-direct {p1}, Lvc/f$b;-><init>()V

    .line 16
    invoke-virtual {p1, v0}, Lvc/f$b;->c(Ljava/util/List;)Lvc/f$b;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lvc/f$b;->b()Lvc/f;

    move-result-object p1

    return-object p1
.end method
