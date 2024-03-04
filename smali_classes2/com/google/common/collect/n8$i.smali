.class abstract Lcom/google/common/collect/n8$i;
.super Lcom/google/common/collect/w7$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/w7$f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/n8;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/n8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/n8$i;->a:Lcom/google/common/collect/n8;

    invoke-direct {p0}, Lcom/google/common/collect/w7$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/n8;Lcom/google/common/collect/n8$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/n8$i;-><init>(Lcom/google/common/collect/n8;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/n8$i;->a:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/n8$i;->a:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
