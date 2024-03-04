.class public final Lj0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/e$c;,
        Lj0/e$b;,
        Lj0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj0/n<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field private final a:Lj0/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/e$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj0/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/e$a<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj0/e;->a:Lj0/e$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILe0/e;)Lj0/n$a;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Le0/e;",
            ")",
            "Lj0/n$a<",
            "TData;>;"
        }
    .end annotation

    .line 1
    new-instance p2, Lj0/n$a;

    new-instance p3, Lu0/d;

    invoke-direct {p3, p1}, Lu0/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lj0/e$b;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lj0/e;->a:Lj0/e$a;

    invoke-direct {p4, p1, v0}, Lj0/e$b;-><init>(Ljava/lang/String;Lj0/e$a;)V

    invoke-direct {p2, p3, p4}, Lj0/n$a;-><init>(Le0/b;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
