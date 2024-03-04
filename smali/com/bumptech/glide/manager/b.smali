.class Lcom/bumptech/glide/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/e;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp0/f;)V
    .locals 0
    .param p1    # Lp0/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lp0/f;->onStart()V

    return-void
.end method

.method public b(Lp0/f;)V
    .locals 0
    .param p1    # Lp0/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
