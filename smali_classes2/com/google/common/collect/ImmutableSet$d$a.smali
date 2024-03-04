.class Lcom/google/common/collect/ImmutableSet$d$a;
.super Lcom/google/common/collect/f4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSet$d;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f4<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableSet$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$d$a;->a:Lcom/google/common/collect/ImmutableSet$d;

    invoke-direct {p0}, Lcom/google/common/collect/f4;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic c()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$d$a;->d()Lcom/google/common/collect/ImmutableSet$d;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/common/collect/ImmutableSet$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$d<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$d$a;->a:Lcom/google/common/collect/ImmutableSet$d;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$d$a;->a:Lcom/google/common/collect/ImmutableSet$d;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$d;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
