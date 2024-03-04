.class final Ltg/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ltg/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ltg/e$a<",
        "TV;>;>;",
        "Ltg/e$a<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field final synthetic d:Ltg/d;


# direct methods
.method private constructor <init>(Ltg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltg/d$g;->d:Ltg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ltg/d$g;->a:I

    .line 3
    iput p1, p0, Ltg/d$g;->b:I

    .line 4
    iput p1, p0, Ltg/d$g;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ltg/d;Ltg/d$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ltg/d$g;-><init>(Ltg/d;)V

    return-void
.end method

.method static synthetic a(Ltg/d$g;)I
    .locals 0

    iget p0, p0, Ltg/d$g;->c:I

    return p0
.end method

.method private c()V
    .locals 2

    :goto_0
    iget v0, p0, Ltg/d$g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltg/d$g;->b:I

    iget-object v1, p0, Ltg/d$g;->d:Ltg/d;

    invoke-static {v1}, Ltg/d;->d(Ltg/d;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltg/d$g;->d:Ltg/d;

    invoke-static {v0}, Ltg/d;->d(Ltg/d;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltg/d$g;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ltg/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltg/e$a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ltg/d$g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Ltg/d$g;->b:I

    iput v0, p0, Ltg/d$g;->a:I

    .line 3
    invoke-direct {p0}, Ltg/d$g;->c()V

    .line 4
    iget v0, p0, Ltg/d$g;->a:I

    iput v0, p0, Ltg/d$g;->c:I

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Ltg/d$g;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Ltg/d$g;->c()V

    .line 3
    :cond_0
    iget v0, p0, Ltg/d$g;->b:I

    iget-object v1, p0, Ltg/d$g;->d:Ltg/d;

    invoke-static {v1}, Ltg/d;->d(Ltg/d;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public key()I
    .locals 2

    iget-object v0, p0, Ltg/d$g;->d:Ltg/d;

    invoke-static {v0}, Ltg/d;->f(Ltg/d;)[I

    move-result-object v0

    iget v1, p0, Ltg/d$g;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ltg/d$g;->b()Ltg/e$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget v0, p0, Ltg/d$g;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Ltg/d$g;->d:Ltg/d;

    invoke-static {v2, v0}, Ltg/d;->e(Ltg/d;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Ltg/d$g;->a:I

    iput v0, p0, Ltg/d$g;->b:I

    .line 4
    :cond_0
    iput v1, p0, Ltg/d$g;->a:I

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before each remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ltg/d$g;->d:Ltg/d;

    invoke-static {v0}, Ltg/d;->d(Ltg/d;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltg/d$g;->c:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ltg/d;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
