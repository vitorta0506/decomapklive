.class abstract Lt/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lu/a;)I
    .locals 2

    invoke-virtual {p0}, Lu/a;->q()I

    move-result v0

    invoke-virtual {p0}, Lu/a;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lu/a;->E()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method static b(Lu/a;)I
    .locals 2

    invoke-virtual {p0}, Lu/a;->n()I

    move-result v0

    invoke-virtual {p0}, Lu/a;->l()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lu/a;->E()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
