.class Lcom/google/common/collect/d6$f$a;
.super Lcom/google/common/collect/d6$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d6$f;->w0()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6$h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/d6$f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d6$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d6$f$a;->a:Lcom/google/common/collect/d6$f;

    invoke-direct {p0}, Lcom/google/common/collect/d6$h;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d6$f$a;->a:Lcom/google/common/collect/d6$f;

    invoke-virtual {v0}, Lcom/google/common/collect/d6$f;->y0()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d6$f$a;->a:Lcom/google/common/collect/d6$f;

    return-object v0
.end method
