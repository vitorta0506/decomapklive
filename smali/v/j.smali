.class public Lv/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/a;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lu/a;->H()I

    move-result v0

    invoke-virtual {p1}, Lu/a;->z()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lu/a;->l()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lu/a;->H()I

    move-result v0

    invoke-virtual {p1}, Lu/a;->n()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
