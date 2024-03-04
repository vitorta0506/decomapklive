.class Lw/c;
.super Lw/l;
.source "SourceFile"

# interfaces
.implements Lu/j;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lw/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw/l;-><init>(Lw/n;)V

    .line 2
    iput p2, p0, Lw/c;->b:I

    return-void
.end method


# virtual methods
.method public a(Lu/h;)V
    .locals 0

    .line 1
    check-cast p1, Lu/a;

    invoke-super {p0, p1}, Lw/l;->b(Lu/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lw/c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lw/c;->c:I

    :cond_0
    return-void
.end method

.method public b(Lu/a;)Z
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Lu/a;->s(Lu/j;)V

    .line 2
    invoke-super {p0, p1}, Lw/l;->b(Lu/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lw/c;->c:I

    iget v0, p0, Lw/c;->b:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
