.class final Lcom/google/common/collect/q$b;
.super Lcom/google/common/collect/d6$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/q;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/q$b;->d:Lcom/google/common/collect/q;

    invoke-direct {p0}, Lcom/google/common/collect/d6$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/q;Lcom/google/common/collect/q$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/q$b;-><init>(Lcom/google/common/collect/q;)V

    return-void
.end method


# virtual methods
.method A0()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q$b;->d:Lcom/google/common/collect/q;

    return-object v0
.end method

.method y0()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q$b;->d:Lcom/google/common/collect/q;

    invoke-virtual {v0}, Lcom/google/common/collect/q;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
