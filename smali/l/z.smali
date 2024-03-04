.class Ll/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Lf/i;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->w()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 2
    :goto_0
    invoke-static {}, Lm/h;->e()F

    move-result v3

    sget-object v4, Ll/a0;->a:Ll/a0;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v6}, Ll/t;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;FLl/m0;ZZ)Ln/a;

    move-result-object p0

    .line 4
    new-instance v0, Lf/i;

    invoke-direct {v0, p1, p0}, Lf/i;-><init>(Lcom/airbnb/lottie/d;Ln/a;)V

    return-object v0
.end method
