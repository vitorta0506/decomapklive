.class public Lj0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/f$b;,
        Lj0/f$e;,
        Lj0/f$a;,
        Lj0/f$c;,
        Lj0/f$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj0/n<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Lj0/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/f$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj0/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/f$d<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj0/f;->a:Lj0/f$d;

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

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lj0/f;->c(Ljava/io/File;IILe0/e;)Lj0/n$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lj0/f;->d(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/io/File;IILe0/e;)Lj0/n$a;
    .locals 1
    .param p1    # Ljava/io/File;
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
            "Ljava/io/File;",
            "II",
            "Le0/e;",
            ")",
            "Lj0/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lj0/n$a;

    new-instance p3, Lu0/d;

    invoke-direct {p3, p1}, Lu0/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lj0/f$c;

    iget-object v0, p0, Lj0/f;->a:Lj0/f$d;

    invoke-direct {p4, p1, v0}, Lj0/f$c;-><init>(Ljava/io/File;Lj0/f$d;)V

    invoke-direct {p2, p3, p4}, Lj0/n$a;-><init>(Le0/b;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public d(Ljava/io/File;)Z
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
