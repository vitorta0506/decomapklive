.class final Lkg/o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkg/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field final synthetic c:Lkg/o;


# direct methods
.method private constructor <init>(Lkg/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkg/o$e;->c:Lkg/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lkg/o;->k4()I

    move-result p1

    iput p1, p0, Lkg/o$e;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lkg/o;Lkg/o$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lkg/o$e;-><init>(Lkg/o;)V

    return-void
.end method


# virtual methods
.method public a()Lkg/j;
    .locals 3

    .line 1
    iget v0, p0, Lkg/o$e;->a:I

    iget-object v1, p0, Lkg/o$e;->c:Lkg/o;

    invoke-virtual {v1}, Lkg/o;->k4()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lkg/o$e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lkg/o$e;->c:Lkg/o;

    invoke-static {v0}, Lkg/o;->F3(Lkg/o;)[Lkg/o$d;

    move-result-object v0

    iget v1, p0, Lkg/o$e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkg/o$e;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lkg/o$d;->h()Lkg/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lkg/o$e;->a:I

    iget v1, p0, Lkg/o$e;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkg/o$e;->a()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-Only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
