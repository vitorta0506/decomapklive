.class public Lw/q;
.super Lw/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lw/n;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lw/e;

    invoke-direct {v0}, Lw/e;-><init>()V

    .line 2
    iget v1, p0, Lw/a;->a:I

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lw/d;

    invoke-direct {v2, v0, v1}, Lw/d;-><init>(Lw/n;I)V

    move-object v0, v2

    .line 4
    :cond_0
    iget v1, p0, Lw/a;->b:I

    if-eqz v1, :cond_1

    .line 5
    new-instance v2, Lw/c;

    invoke-direct {v2, v0, v1}, Lw/c;-><init>(Lw/n;I)V

    move-object v0, v2

    :cond_1
    return-object v0
.end method

.method public b()Lw/n;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lw/k;

    invoke-direct {v0}, Lw/k;-><init>()V

    .line 2
    iget v1, p0, Lw/a;->a:I

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lw/j;

    invoke-direct {v2, v0, v1}, Lw/j;-><init>(Lw/n;I)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method
