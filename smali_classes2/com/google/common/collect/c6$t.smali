.class final Lcom/google/common/collect/c6$t;
.super Lcom/google/common/collect/c6$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c6$n<",
        "TK;TV;",
        "Lcom/google/common/collect/c6$s<",
        "TK;TV;>;",
        "Lcom/google/common/collect/c6$t<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/c6;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6<",
            "TK;TV;",
            "Lcom/google/common/collect/c6$s<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$t<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/c6$n;-><init>(Lcom/google/common/collect/c6;II)V

    .line 2
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/c6$t;->h:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic H(Lcom/google/common/collect/c6$t;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/c6$t;->h:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method bridge synthetic E()Lcom/google/common/collect/c6$n;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/c6$t;->I()Lcom/google/common/collect/c6$t;

    move-result-object v0

    return-object v0
.end method

.method I()Lcom/google/common/collect/c6$t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c6$t<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method o()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/c6$t;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/c6$n;->b(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method p()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/c6$t;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/c6$n;->f(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
