.class public Ldd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Led/a;


# direct methods
.method public constructor <init>(Lkd/a;Led/b$a;)V
    .locals 1
    .param p1    # Lkd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Led/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Led/a;

    invoke-direct {v0, p1, p2}, Led/a;-><init>(Lkd/a;Led/b$a;)V

    iput-object v0, p0, Ldd/a;->a:Led/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldd/a;->a:Led/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Led/a;->e()V

    .line 3
    iget-object v0, p0, Ldd/a;->a:Led/a;

    invoke-virtual {v0}, Led/a;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldd/a;->a:Led/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Led/a;->e()V

    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldd/a;->a:Led/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Led/a;->g(F)V

    :cond_0
    return-void
.end method
