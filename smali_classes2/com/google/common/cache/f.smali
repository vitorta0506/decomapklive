.class public abstract Lcom/google/common/cache/f;
.super Lcom/google/common/collect/w3;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/w3;",
        "Lcom/google/common/cache/c<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/w3;-><init>()V

    return-void
.end method


# virtual methods
.method public v0()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/f;->w0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->v0()V

    return-void
.end method

.method protected abstract w0()Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end method
