.class final Lcom/google/common/collect/h3$c;
.super Lcom/google/common/collect/h3$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h3$d<",
        "TC;",
        "Lcom/google/common/collect/ImmutableMap<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/h3;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/h3;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/h3$c;->b:Lcom/google/common/collect/h3;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/h3;->j(Lcom/google/common/collect/h3;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/h3$d;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/h3;Lcom/google/common/collect/h3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/h3$c;-><init>(Lcom/google/common/collect/h3;)V

    return-void
.end method


# virtual methods
.method bridge synthetic c(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h3$c;->f(I)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method e()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h3$c;->b:Lcom/google/common/collect/h3;

    invoke-static {v0}, Lcom/google/common/collect/h3;->h(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method f(I)Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/h3$b;

    iget-object v1, p0, Lcom/google/common/collect/h3$c;->b:Lcom/google/common/collect/h3;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/h3$b;-><init>(Lcom/google/common/collect/h3;I)V

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
