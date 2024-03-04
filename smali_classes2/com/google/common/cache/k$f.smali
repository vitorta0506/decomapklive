.class Lcom/google/common/cache/k$f;
.super Lcom/google/common/cache/k$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$n<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/cache/k$b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/cache/k$n;-><init>(Lcom/google/common/cache/k$b0;)V

    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
