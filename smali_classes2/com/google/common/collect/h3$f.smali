.class final Lcom/google/common/collect/h3$f;
.super Lcom/google/common/collect/h3$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h3$d<",
        "TR;",
        "Lcom/google/common/collect/ImmutableMap<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/h3;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/h3;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/h3$f;->b:Lcom/google/common/collect/h3;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/h3;->g(Lcom/google/common/collect/h3;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/h3$d;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/h3;Lcom/google/common/collect/h3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/h3$f;-><init>(Lcom/google/common/collect/h3;)V

    return-void
.end method


# virtual methods
.method bridge synthetic c(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h3$f;->f(I)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method e()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h3$f;->b:Lcom/google/common/collect/h3;

    invoke-static {v0}, Lcom/google/common/collect/h3;->k(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method f(I)Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/h3$e;

    iget-object v1, p0, Lcom/google/common/collect/h3$f;->b:Lcom/google/common/collect/h3;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/h3$e;-><init>(Lcom/google/common/collect/h3;I)V

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
