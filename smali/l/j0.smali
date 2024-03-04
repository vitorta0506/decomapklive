.class Ll/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "ks"

    const-string v3, "hd"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    move-result-object v0

    sput-object v0, Ll/j0;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Lj/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2
    sget-object v4, Ll/j0;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->A(Lcom/airbnb/lottie/parser/moshi/JsonReader$a;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->F()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Ll/d;->k(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Li/h;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_4
    new-instance p0, Lj/k;

    invoke-direct {p0, v2, v0, v3, v1}, Lj/k;-><init>(Ljava/lang/String;ILi/h;Z)V

    return-object p0
.end method
