.class Lfk/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfk/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfk/i;->s(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lfk/i;


# direct methods
.method constructor <init>(Lfk/i;ZZ)V
    .locals 0

    iput-object p1, p0, Lfk/i$a;->c:Lfk/i;

    iput-boolean p2, p0, Lfk/i$a;->a:Z

    iput-boolean p3, p0, Lfk/i$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfk/p;)Lfk/p;
    .locals 1

    instance-of v0, p1, Lfk/r;

    if-eqz v0, :cond_0

    check-cast p1, Lfk/r;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lfk/r;

    invoke-direct {p1}, Lfk/r;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lfk/r;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lfk/r;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lfk/i$a;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lfk/i$a;->c:Lfk/i;

    invoke-virtual {v0}, Lfk/i;->A()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lfk/r;->e()V

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lfk/r;->d()V

    :cond_4
    iget-boolean v0, p0, Lfk/i$a;->b:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lfk/r;->c()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lfk/i$a;->c:Lfk/i;

    invoke-virtual {v0}, Lfk/i;->B()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lfk/r;->e()V

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lfk/r;->f()V

    :cond_6
    return-object p1
.end method
