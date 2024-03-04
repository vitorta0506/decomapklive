.class public Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/b$d;,
        Lj0/b$a;,
        Lj0/b$c;,
        Lj0/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj0/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field private final a:Lj0/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj0/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/b$b<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj0/b;->a:Lj0/b$b;

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

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lj0/b;->c([BIILe0/e;)Lj0/n$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lj0/b;->d([B)Z

    move-result p1

    return p1
.end method

.method public c([BIILe0/e;)Lj0/n$a;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Le0/e;",
            ")",
            "Lj0/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lj0/n$a;

    new-instance p3, Lu0/d;

    invoke-direct {p3, p1}, Lu0/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lj0/b$c;

    iget-object v0, p0, Lj0/b;->a:Lj0/b$b;

    invoke-direct {p4, p1, v0}, Lj0/b$c;-><init>([BLj0/b$b;)V

    invoke-direct {p2, p3, p4}, Lj0/n$a;-><init>(Le0/b;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public d([B)Z
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
