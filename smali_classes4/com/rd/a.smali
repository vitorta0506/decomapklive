.class public Lcom/rd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/a$a;
    }
.end annotation


# instance fields
.field private a:Lid/a;

.field private b:Ldd/a;

.field private c:Lcom/rd/a$a;


# direct methods
.method constructor <init>(Lcom/rd/a$a;)V
    .locals 1
    .param p1    # Lcom/rd/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/rd/a;->c:Lcom/rd/a$a;

    .line 3
    new-instance p1, Lid/a;

    invoke-direct {p1}, Lid/a;-><init>()V

    iput-object p1, p0, Lcom/rd/a;->a:Lid/a;

    .line 4
    new-instance v0, Ldd/a;

    invoke-virtual {p1}, Lid/a;->b()Lkd/a;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ldd/a;-><init>(Lkd/a;Led/b$a;)V

    iput-object v0, p0, Lcom/rd/a;->b:Ldd/a;

    return-void
.end method


# virtual methods
.method public a(Lfd/a;)V
    .locals 1
    .param p1    # Lfd/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/rd/a;->a:Lid/a;

    invoke-virtual {v0, p1}, Lid/a;->g(Lfd/a;)V

    .line 2
    iget-object p1, p0, Lcom/rd/a;->c:Lcom/rd/a$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/rd/a$a;->a()V

    :cond_0
    return-void
.end method

.method public b()Ldd/a;
    .locals 1

    iget-object v0, p0, Lcom/rd/a;->b:Ldd/a;

    return-object v0
.end method

.method public c()Lid/a;
    .locals 1

    iget-object v0, p0, Lcom/rd/a;->a:Lid/a;

    return-object v0
.end method

.method public d()Lkd/a;
    .locals 1

    iget-object v0, p0, Lcom/rd/a;->a:Lid/a;

    invoke-virtual {v0}, Lid/a;->b()Lkd/a;

    move-result-object v0

    return-object v0
.end method
