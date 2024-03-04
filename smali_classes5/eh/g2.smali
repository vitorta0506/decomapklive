.class abstract Leh/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/g2$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static e()Leh/g2$a;
    .locals 3

    .line 1
    new-instance v0, Leh/w$b;

    invoke-direct {v0}, Leh/w$b;-><init>()V

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Leh/w$b;->i(J)Leh/g2$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1, v2}, Leh/g2$a;->h(J)Leh/g2$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract b()Ljava/lang/String;
.end method

.method abstract c()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/h2;",
            ">;"
        }
    .end annotation
.end method

.method abstract d()J
.end method

.method abstract f()J
.end method

.method abstract g()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/i2;",
            ">;"
        }
    .end annotation
.end method
