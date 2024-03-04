.class public Lk0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj0/n<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
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
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lk0/c;->a:Landroid/content/Context;

    return-void
.end method

.method private e(Le0/e;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/c0;->d:Le0/d;

    invoke-virtual {p1, v0}, Le0/e;->a(Le0/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/c;->c(Landroid/net/Uri;IILe0/e;)Lj0/n$a;

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

    invoke-virtual {p0, p1}, Lk0/c;->d(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/net/Uri;IILe0/e;)Lj0/n$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Le0/e;",
            ")",
            "Lj0/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lf0/b;->d(II)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p4}, Lk0/c;->e(Le0/e;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lj0/n$a;

    new-instance p3, Lu0/d;

    invoke-direct {p3, p1}, Lu0/d;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lk0/c;->a:Landroid/content/Context;

    invoke-static {p4, p1}, Lf0/c;->g(Landroid/content/Context;Landroid/net/Uri;)Lf0/c;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lj0/n$a;-><init>(Le0/b;Lcom/bumptech/glide/load/data/d;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lf0/b;->c(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
