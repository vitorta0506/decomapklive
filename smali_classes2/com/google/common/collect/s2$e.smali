.class final Lcom/google/common/collect/s2$e;
.super Lcom/google/common/collect/s2$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/s2$d<",
        "TInElementT;TOutElementT;",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;>;IJ)V"
        }
    .end annotation

    sget-object v4, Lcom/google/common/collect/x2;->a:Lcom/google/common/collect/x2;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/s2$d;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;Lcom/google/common/collect/s2$d$a;IJ)V

    return-void
.end method
