.class abstract Leh/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Leh/f1;)Leh/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/f1;",
            ">;",
            "Leh/f1;",
            ")",
            "Leh/h1;"
        }
    .end annotation

    new-instance v0, Leh/n;

    invoke-direct {v0, p0, p1, p2, p3}, Leh/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Leh/f1;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract c()Leh/f1;
.end method

.method abstract d()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/f1;",
            ">;"
        }
    .end annotation
.end method

.method abstract e()Ljava/lang/String;
.end method
