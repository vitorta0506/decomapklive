.class public final Lm0/d;
.super Lcom/bumptech/glide/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/i<",
        "Lm0/d;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/i;-><init>()V

    return-void
.end method

.method public static i()Lm0/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lm0/d;

    invoke-direct {v0}, Lm0/d;-><init>()V

    invoke-virtual {v0}, Lm0/d;->f()Lm0/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public f()Lm0/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lt0/c$a;

    invoke-direct {v0}, Lt0/c$a;-><init>()V

    invoke-virtual {p0, v0}, Lm0/d;->g(Lt0/c$a;)Lm0/d;

    move-result-object v0

    return-object v0
.end method

.method public g(Lt0/c$a;)Lm0/d;
    .locals 0
    .param p1    # Lt0/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lt0/c$a;->a()Lt0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm0/d;->h(Lt0/c;)Lm0/d;

    move-result-object p1

    return-object p1
.end method

.method public h(Lt0/c;)Lm0/d;
    .locals 0
    .param p1    # Lt0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->e(Lt0/g;)Lcom/bumptech/glide/i;

    move-result-object p1

    check-cast p1, Lm0/d;

    return-object p1
.end method
