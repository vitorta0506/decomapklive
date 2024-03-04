.class abstract Leh/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(ILcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Leh/d1;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)Leh/g1;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/c1;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/c1;",
            ">;",
            "Leh/d1;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Leh/g1;"
        }
    .end annotation

    new-instance v9, Leh/m;

    move-object v0, v9

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Leh/m;-><init>(ILcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Leh/d1;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract b()Leh/d1;
.end method

.method abstract d()I
.end method

.method abstract e()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/c1;",
            ">;"
        }
    .end annotation
.end method

.method abstract f()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract g()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract h()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/c1;",
            ">;"
        }
    .end annotation
.end method

.method abstract i()Ljava/lang/String;
.end method
