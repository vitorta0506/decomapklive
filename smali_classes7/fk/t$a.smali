.class final Lfk/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfk/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfk/t;->a(Lfk/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfk/t$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfk/p;)Lfk/p;
    .locals 3

    instance-of v0, p1, Lfk/s;

    if-eqz v0, :cond_0

    check-cast p1, Lfk/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfk/s;->a()I

    move-result v1

    iget v2, p0, Lfk/t$a;->a:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Lfk/s;->i(I)V

    return-object p1

    :cond_1
    new-instance v1, Lfk/s;

    invoke-direct {v1}, Lfk/s;-><init>()V

    invoke-virtual {v1, v0}, Lfk/s;->i(I)V

    iget v0, p0, Lfk/t$a;->a:I

    invoke-virtual {v1, v0}, Lfk/s;->f(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lfk/s;->b()[Lfk/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfk/s;->g([Lfk/i;)V

    invoke-virtual {p1}, Lfk/s;->c()[Lfk/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfk/s;->h([Lfk/i;)V

    invoke-virtual {p1}, Lfk/s;->d()Lfk/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfk/s;->j(Lfk/i;)V

    invoke-virtual {p1}, Lfk/s;->e()I

    move-result p1

    invoke-virtual {v1, p1}, Lfk/s;->k(I)V

    :cond_2
    return-object v1
.end method
