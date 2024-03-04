.class public Lcom/bumptech/glide/request/h;
.super Lcom/bumptech/glide/request/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/a<",
        "Lcom/bumptech/glide/request/h;",
        ">;"
    }
.end annotation


# static fields
.field private static A:Lcom/bumptech/glide/request/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static B:Lcom/bumptech/glide/request/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static C:Lcom/bumptech/glide/request/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/request/a;-><init>()V

    return-void
.end method

.method public static B0(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/a;->h(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/h;

    return-object p0
.end method

.method public static D0(Le0/b;)Lcom/bumptech/glide/request/h;
    .locals 1
    .param p0    # Le0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/a;->l0(Le0/b;)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/h;

    return-object p0
.end method

.method public static H0(Z)Lcom/bumptech/glide/request/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    sget-object p0, Lcom/bumptech/glide/request/h;->A:Lcom/bumptech/glide/request/h;

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/bumptech/glide/request/h;

    invoke-direct {p0}, Lcom/bumptech/glide/request/h;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/a;->n0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/h;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->b()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/h;

    sput-object p0, Lcom/bumptech/glide/request/h;->A:Lcom/bumptech/glide/request/h;

    .line 3
    :cond_0
    sget-object p0, Lcom/bumptech/glide/request/h;->A:Lcom/bumptech/glide/request/h;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/bumptech/glide/request/h;->B:Lcom/bumptech/glide/request/h;

    if-nez p0, :cond_2

    .line 5
    new-instance p0, Lcom/bumptech/glide/request/h;

    invoke-direct {p0}, Lcom/bumptech/glide/request/h;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/a;->n0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/h;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->b()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/h;

    sput-object p0, Lcom/bumptech/glide/request/h;->B:Lcom/bumptech/glide/request/h;

    .line 6
    :cond_2
    sget-object p0, Lcom/bumptech/glide/request/h;->B:Lcom/bumptech/glide/request/h;

    return-object p0
.end method

.method public static x0(Le0/h;)Lcom/bumptech/glide/request/h;
    .locals 1
    .param p0    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/h;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/h;

    return-object p0
.end method

.method public static y0()Lcom/bumptech/glide/request/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/request/h;->C:Lcom/bumptech/glide/request/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->e()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->b()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/h;

    sput-object v0, Lcom/bumptech/glide/request/h;->C:Lcom/bumptech/glide/request/h;

    .line 3
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/h;->C:Lcom/bumptech/glide/request/h;

    return-object v0
.end method

.method public static z0(Ljava/lang/Class;)Lcom/bumptech/glide/request/h;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/h;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/a;->g(Ljava/lang/Class;)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/h;

    return-object p0
.end method
