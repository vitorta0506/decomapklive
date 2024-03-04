.class Lrk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lrk/n;Lrk/e;I[B[B)Lrk/k;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-virtual {p0}, Lrk/n;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lrk/n;->c()I

    move-result v1

    shl-int v7, v0, v1

    new-instance v0, Lrk/k;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lrk/k;-><init>(Lrk/n;Lrk/e;I[BI[B)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "root seed is less than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrk/n;->d()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lrk/i;)Lrk/m;
    .locals 4

    invoke-virtual {p0}, Lrk/i;->i()Lrk/f;

    move-result-object v0

    invoke-virtual {p0}, Lrk/i;->j()[B

    move-result-object v1

    invoke-virtual {p0}, Lrk/i;->g()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrk/o;->c(Lrk/f;[B[B)Lrk/g;

    move-result-object v0

    new-instance v1, Lrk/m;

    invoke-virtual {p0}, Lrk/i;->i()Lrk/f;

    move-result-object v2

    invoke-virtual {v2}, Lrk/f;->d()I

    move-result v2

    invoke-virtual {p0}, Lrk/i;->k()Lrk/n;

    move-result-object v3

    invoke-virtual {p0}, Lrk/i;->h()[[B

    move-result-object p0

    invoke-direct {v1, v2, v0, v3, p0}, Lrk/m;-><init>(ILrk/g;Lrk/n;[[B)V

    return-object v1
.end method

.method public static c(Lrk/k;[B)Lrk/m;
    .locals 2

    invoke-virtual {p0}, Lrk/k;->f()Lrk/i;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lrk/i;->c([BII)V

    invoke-static {p0}, Lrk/h;->b(Lrk/i;)Lrk/m;

    move-result-object p0

    return-object p0
.end method
