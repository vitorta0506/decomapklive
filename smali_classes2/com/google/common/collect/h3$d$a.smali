.class Lcom/google/common/collect/h3$d$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/h3$d;->a()Lcom/google/common/collect/e9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private c:I

.field private final d:I

.field final synthetic e:Lcom/google/common/collect/h3$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h3$d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/h3$d$a;->e:Lcom/google/common/collect/h3$d;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/common/collect/h3$d$a;->c:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/h3$d;->e()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/h3$d$a;->d:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/h3$d$a;->d()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/h3$d$a;->c:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/h3$d$a;->c:I

    iget v0, p0, Lcom/google/common/collect/h3$d$a;->c:I

    iget v1, p0, Lcom/google/common/collect/h3$d$a;->d:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/h3$d$a;->e:Lcom/google/common/collect/h3$d;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/h3$d;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/h3$d$a;->e:Lcom/google/common/collect/h3$d;

    iget v2, p0, Lcom/google/common/collect/h3$d$a;->c:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/h3$d;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/d6;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/common/collect/h3$d$a;->c:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
