.class final Lpg/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
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
.field private a:Lpg/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lpg/g;


# direct methods
.method private constructor <init>(Lpg/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpg/g$c;->b:Lpg/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lpg/g;->b:Lpg/g$b;

    iput-object p1, p0, Lpg/g$c;->a:Lpg/g$b;

    return-void
.end method

.method synthetic constructor <init>(Lpg/g;Lpg/g$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lpg/g$c;-><init>(Lpg/g;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/g$c;->a:Lpg/g$b;

    iget-object v0, v0, Lpg/g$b;->f:Lpg/g$b;

    iput-object v0, p0, Lpg/g$c;->a:Lpg/g$b;

    .line 2
    iget-object v1, p0, Lpg/g$c;->b:Lpg/g;

    iget-object v1, v1, Lpg/g;->b:Lpg/g$b;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lpg/g$c;->a:Lpg/g$b;

    iget-object v0, v0, Lpg/g$b;->f:Lpg/g$b;

    iget-object v1, p0, Lpg/g$c;->b:Lpg/g;

    iget-object v1, v1, Lpg/g;->b:Lpg/g$b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lpg/g$c;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
