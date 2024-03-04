.class final Leh/a2$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final a:J

.field final b:J


# direct methods
.method constructor <init>(JJ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "minRingSize <= 0"

    .line 2
    invoke-static {v4, v5}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    cmp-long v4, p3, v0

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "maxRingSize <= 0"

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    cmp-long v0, p1, p3

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v0, "minRingSize > maxRingSize"

    .line 4
    invoke-static {v2, v0}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 5
    iput-wide p1, p0, Leh/a2$d;->a:J

    .line 6
    iput-wide p3, p0, Leh/a2$d;->b:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Leh/a2$d;->a:J

    const-string v3, "minRingSize"

    .line 2
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-wide v1, p0, Leh/a2$d;->b:J

    const-string v3, "maxRingSize"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
