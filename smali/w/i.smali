.class Lw/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/n;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lu/a;)Z
    .locals 1

    invoke-virtual {p1}, Lu/a;->I()I

    move-result v0

    invoke-virtual {p1}, Lu/a;->q()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
