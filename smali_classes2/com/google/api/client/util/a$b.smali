.class final Lcom/google/api/client/util/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Lcom/google/api/client/util/a;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/util/a$b;->c:Lcom/google/api/client/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/api/client/util/a$b;->b:I

    .line 2
    iget-object v1, p0, Lcom/google/api/client/util/a$b;->c:Lcom/google/api/client/util/a;

    iget v2, v1, Lcom/google/api/client/util/a;->a:I

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 3
    iput v2, p0, Lcom/google/api/client/util/a$b;->b:I

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/google/api/client/util/a$b;->a:Z

    .line 5
    new-instance v2, Lcom/google/api/client/util/a$a;

    invoke-direct {v2, v1, v0}, Lcom/google/api/client/util/a$a;-><init>(Lcom/google/api/client/util/a;I)V

    return-object v2

    .line 6
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/api/client/util/a$b;->b:I

    iget-object v1, p0, Lcom/google/api/client/util/a$b;->c:Lcom/google/api/client/util/a;

    iget v1, v1, Lcom/google/api/client/util/a;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/client/util/a$b;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/api/client/util/a$b;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iget-boolean v2, p0, Lcom/google/api/client/util/a$b;->a:Z

    if-nez v2, :cond_0

    if-ltz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/api/client/util/a$b;->c:Lcom/google/api/client/util/a;

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/a;->remove(I)Ljava/lang/Object;

    .line 4
    iget v0, p0, Lcom/google/api/client/util/a$b;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/api/client/util/a$b;->b:I

    .line 5
    iput-boolean v1, p0, Lcom/google/api/client/util/a$b;->a:Z

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
