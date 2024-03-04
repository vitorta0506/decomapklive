.class public final Lcom/google/common/base/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/r$c;,
        Lcom/google/common/base/r$d;,
        Lcom/google/common/base/r$e;,
        Lcom/google/common/base/r$b;,
        Lcom/google/common/base/r$f;,
        Lcom/google/common/base/r$g;
    }
.end annotation


# direct methods
.method static synthetic a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/r;->j(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/q<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/r$g;->a:Lcom/google/common/base/r$g;

    invoke-virtual {v0}, Lcom/google/common/base/r$g;->b()Lcom/google/common/base/q;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/google/common/base/q;Lcom/google/common/base/q;)Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/q<",
            "-TT;>;",
            "Lcom/google/common/base/q<",
            "-TT;>;)",
            "Lcom/google/common/base/q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/r$b;

    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/q;

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/q;

    invoke-static {p0, p1}, Lcom/google/common/base/r;->d(Lcom/google/common/base/q;Lcom/google/common/base/q;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/r$b;-><init>(Ljava/util/List;Lcom/google/common/base/r$a;)V

    return-object v0
.end method

.method private static d(Lcom/google/common/base/q;Lcom/google/common/base/q;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/q<",
            "-TT;>;",
            "Lcom/google/common/base/q<",
            "-TT;>;)",
            "Ljava/util/List<",
            "Lcom/google/common/base/q<",
            "-TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/google/common/base/q;Lcom/google/common/base/h;)Lcom/google/common/base/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/q<",
            "TB;>;",
            "Lcom/google/common/base/h<",
            "TA;+TB;>;)",
            "Lcom/google/common/base/q<",
            "TA;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/r$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/r$c;-><init>(Lcom/google/common/base/q;Lcom/google/common/base/h;Lcom/google/common/base/r$a;)V

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Lcom/google/common/base/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/q<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/common/base/r;->h()Lcom/google/common/base/q;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/base/r$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/r$e;-><init>(Ljava/lang/Object;Lcom/google/common/base/r$a;)V

    invoke-virtual {v0}, Lcom/google/common/base/r$e;->a()Lcom/google/common/base/q;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static g(Ljava/util/Collection;)Lcom/google/common/base/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lcom/google/common/base/q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/r$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/r$d;-><init>(Ljava/util/Collection;Lcom/google/common/base/r$a;)V

    return-object v0
.end method

.method public static h()Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/q<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/r$g;->c:Lcom/google/common/base/r$g;

    invoke-virtual {v0}, Lcom/google/common/base/r$g;->b()Lcom/google/common/base/q;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lcom/google/common/base/q;)Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/q<",
            "TT;>;)",
            "Lcom/google/common/base/q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/r$f;

    invoke-direct {v0, p0}, Lcom/google/common/base/r$f;-><init>(Lcom/google/common/base/q;)V

    return-object v0
.end method

.method private static j(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_0

    const/16 p1, 0x2c

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
