.class public final Lj0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/k$a;,
        Lj0/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj0/n<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj0/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILe0/e;)Lj0/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lj0/k;->c(Landroid/net/Uri;IILe0/e;)Lj0/n$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lj0/k;->d(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/net/Uri;IILe0/e;)Lj0/n$a;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Le0/e;",
            ")",
            "Lj0/n$a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance p2, Lj0/n$a;

    new-instance p3, Lu0/d;

    invoke-direct {p3, p1}, Lu0/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lj0/k$b;

    iget-object v0, p0, Lj0/k;->a:Landroid/content/Context;

    invoke-direct {p4, v0, p1}, Lj0/k$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p3, p4}, Lj0/n$a;-><init>(Le0/b;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lf0/b;->b(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
