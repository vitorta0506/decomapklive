.class public Ly/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lu/m;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lu/m;->k()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lu/m;->d()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
