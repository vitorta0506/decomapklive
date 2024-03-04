.class Lcom/google/common/cache/k$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/c;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/c<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final a:Lcom/google/common/cache/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/d<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/cache/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/cache/k;-><init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lcom/google/common/cache/k$p;-><init>(Lcom/google/common/cache/k;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/cache/k$p;->a:Lcom/google/common/cache/k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/cache/k;Lcom/google/common/cache/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/cache/k$p;-><init>(Lcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method public v0()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$p;->a:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->clear()V

    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/cache/k$q;

    iget-object v1, p0, Lcom/google/common/cache/k$p;->a:Lcom/google/common/cache/k;

    invoke-direct {v0, v1}, Lcom/google/common/cache/k$q;-><init>(Lcom/google/common/cache/k;)V

    return-object v0
.end method
