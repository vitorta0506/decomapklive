.class public Ll/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/d;Ll/m0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/d;",
            "Ll/m0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ln/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, p3, v0}, Ll/u;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;FLl/m0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;Ll/m0;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/d;",
            "Ll/m0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ln/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Ll/u;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;FLl/m0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Li/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Li/a;

    sget-object v1, Ll/g;->a:Ll/g;

    invoke-static {p0, p1, v1}, Ll/d;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;Ll/m0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Li/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Li/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Li/j;

    sget-object v1, Ll/i;->a:Ll/i;

    invoke-static {p0, p1, v1}, Ll/d;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;Ll/m0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Li/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Li/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ll/d;->f(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;Z)Li/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;Z)Li/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Li/b;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lm/h;->e()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Ll/l;->a:Ll/l;

    invoke-static {p0, p2, p1, v1}, Ll/d;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/d;Ll/m0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Li/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;I)Li/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Li/c;

    new-instance v1, Ll/o;

    invoke-direct {v1, p2}, Ll/o;-><init>(I)V

    .line 2
    invoke-static {p0, p1, v1}, Ll/d;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;Ll/m0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Li/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static h(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Li/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Li/d;

    sget-object v1, Ll/r;->a:Ll/r;

    invoke-static {p0, p1, v1}, Ll/d;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;Ll/m0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Li/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static i(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Li/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Li/f;

    invoke-static {}, Lm/h;->e()F

    move-result v1

    sget-object v2, Ll/b0;->a:Ll/b0;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Ll/u;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;FLl/m0;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Li/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static j(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Li/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Li/g;

    sget-object v1, Ll/f0;->a:Ll/f0;

    invoke-static {p0, p1, v1}, Ll/d;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;Ll/m0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Li/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static k(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/d;)Li/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Li/h;

    .line 2
    invoke-static {}, Lm/h;->e()F

    move-result v1

    sget-object v2, Ll/g0;->a:Ll/g0;

    invoke-static {p0, v1, p1, v2}, Ll/d;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/d;Ll/m0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Li/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method
