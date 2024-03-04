.class final Lcom/bumptech/glide/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/h$b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/c;Lp0/e;Lp0/h;Landroid/content/Context;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lp0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lp0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lic/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lic/d;-><init>(Lcom/bumptech/glide/c;Lp0/e;Lp0/h;Landroid/content/Context;)V

    return-object v0
.end method
