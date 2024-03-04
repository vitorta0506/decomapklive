.class public Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/f<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Le0/e;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Ln0/a;->d(Ljava/io/File;Le0/e;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILe0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Ln0/a;->c(Ljava/io/File;IILe0/e;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/File;IILe0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
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
            "Lcom/bumptech/glide/load/engine/u<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance p2, Ln0/b;

    invoke-direct {p2, p1}, Ln0/b;-><init>(Ljava/io/File;)V

    return-object p2
.end method

.method public d(Ljava/io/File;Le0/e;)Z
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
