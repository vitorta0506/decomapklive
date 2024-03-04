.class abstract Leh/g2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Leh/h2;)Leh/g2$a;
    .locals 1

    invoke-virtual {p0}, Leh/g2$a;->f()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    return-object p0
.end method

.method b(Leh/i2;)Leh/g2$a;
    .locals 1

    invoke-virtual {p0}, Leh/g2$a;->j()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    return-object p0
.end method

.method abstract c()Leh/g2;
.end method

.method abstract d(Ljava/lang/String;)Leh/g2$a;
.end method

.method abstract e(Ljava/lang/String;)Leh/g2$a;
.end method

.method abstract f()Lcom/google/common/collect/ImmutableList$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList$b<",
            "Leh/h2;",
            ">;"
        }
    .end annotation
.end method

.method abstract g()J
.end method

.method abstract h(J)Leh/g2$a;
.end method

.method abstract i(J)Leh/g2$a;
.end method

.method abstract j()Lcom/google/common/collect/ImmutableList$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList$b<",
            "Leh/i2;",
            ">;"
        }
    .end annotation
.end method
