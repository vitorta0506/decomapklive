.class Lcom/google/common/cache/k$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/k$n;->j(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/h<",
        "TV;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/cache/k$n;


# direct methods
.method constructor <init>(Lcom/google/common/cache/k$n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/k$n$a;->a:Lcom/google/common/cache/k$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$n$a;->a:Lcom/google/common/cache/k$n;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k$n;->k(Ljava/lang/Object;)Z

    return-object p1
.end method
