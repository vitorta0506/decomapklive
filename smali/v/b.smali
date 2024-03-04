.class Lv/b;
.super Lv/s;
.source "SourceFile"


# instance fields
.field private b:Ls/a;


# direct methods
.method constructor <init>(Ls/a;Lv/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lv/s;-><init>(Lv/h;)V

    .line 2
    iput-object p1, p0, Lv/b;->b:Ls/a;

    return-void
.end method


# virtual methods
.method public a(Lu/a;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv/b;->b:Ls/a;

    invoke-virtual {p1}, Lu/a;->A()I

    move-result v1

    invoke-interface {v0, v1}, Ls/a;->a(I)Z

    move-result v0

    .line 2
    invoke-super {p0, p1}, Lv/s;->a(Lu/a;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

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
