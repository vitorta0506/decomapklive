.class public Lv/o;
.super Lv/s;
.source "SourceFile"


# instance fields
.field private b:I


# direct methods
.method constructor <init>(ILv/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lv/s;-><init>(Lv/h;)V

    .line 2
    iput p1, p0, Lv/o;->b:I

    return-void
.end method


# virtual methods
.method public a(Lu/a;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lv/s;->a(Lu/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lu/a;->F()I

    move-result p1

    iget v0, p0, Lv/o;->b:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
