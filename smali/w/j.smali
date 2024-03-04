.class Lw/j;
.super Lw/l;
.source "SourceFile"


# instance fields
.field private b:I


# direct methods
.method constructor <init>(Lw/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw/l;-><init>(Lw/n;)V

    .line 2
    iput p2, p0, Lw/j;->b:I

    return-void
.end method


# virtual methods
.method public b(Lu/a;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lu/a;->l()I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Lw/l;->b(Lu/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lu/a;->H()I

    move-result p1

    iget v1, p0, Lw/j;->b:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
