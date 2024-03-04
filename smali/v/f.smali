.class Lv/f;
.super Lv/s;
.source "SourceFile"


# instance fields
.field private b:Lv/i;


# direct methods
.method constructor <init>(Lv/i;Lv/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lv/s;-><init>(Lv/h;)V

    .line 2
    iput-object p1, p0, Lv/f;->b:Lv/i;

    return-void
.end method


# virtual methods
.method public a(Lu/a;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lv/s;->a(Lu/a;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lu/a;->A()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/f;->b:Lv/i;

    invoke-virtual {p1}, Lu/a;->A()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lv/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
