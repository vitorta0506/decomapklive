.class final Lcom/google/common/collect/c6$r;
.super Lcom/google/common/collect/c6$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "r"
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
        "Lcom/google/common/collect/c6$q<",
        "TK;TV;>;",
        "Lcom/google/common/collect/c6$r<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/c6;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6<",
            "TK;TV;",
            "Lcom/google/common/collect/c6$q<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$r<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/c6$n;-><init>(Lcom/google/common/collect/c6;II)V

    return-void
.end method


# virtual methods
.method bridge synthetic E()Lcom/google/common/collect/c6$n;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/c6$r;->H()Lcom/google/common/collect/c6$r;

    move-result-object v0

    return-object v0
.end method

.method H()Lcom/google/common/collect/c6$r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c6$r<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method
