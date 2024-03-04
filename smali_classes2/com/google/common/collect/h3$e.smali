.class final Lcom/google/common/collect/h3$e;
.super Lcom/google/common/collect/h3$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h3$d<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field private final b:I

.field final synthetic c:Lcom/google/common/collect/h3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/h3$e;->c:Lcom/google/common/collect/h3;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/h3;->g(Lcom/google/common/collect/h3;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/h3$d;-><init>(I)V

    .line 3
    iput p2, p0, Lcom/google/common/collect/h3$e;->b:I

    return-void
.end method


# virtual methods
.method c(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h3$e;->c:Lcom/google/common/collect/h3;

    invoke-static {v0}, Lcom/google/common/collect/h3;->i(Lcom/google/common/collect/h3;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/h3$e;->b:I

    aget-object v0, v0, v1

    aget-object p1, v0, p1

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

    iget-object v0, p0, Lcom/google/common/collect/h3$e;->c:Lcom/google/common/collect/h3;

    invoke-static {v0}, Lcom/google/common/collect/h3;->h(Lcom/google/common/collect/h3;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
