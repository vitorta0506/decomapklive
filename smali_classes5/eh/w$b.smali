.class final Leh/w$b;
.super Leh/g2$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/common/collect/ImmutableList$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$b<",
            "Leh/i2;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/i2;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/common/collect/ImmutableList$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$b<",
            "Leh/h2;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/h2;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Long;

.field private h:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leh/g2$a;-><init>()V

    return-void
.end method


# virtual methods
.method c()Leh/g2;
    .locals 12

    .line 1
    iget-object v0, p0, Leh/w$b;->c:Lcom/google/common/collect/ImmutableList$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Leh/w$b;->d:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Leh/w$b;->d:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Leh/w$b;->d:Lcom/google/common/collect/ImmutableList;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Leh/w$b;->e:Lcom/google/common/collect/ImmutableList$b;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Leh/w$b;->f:Lcom/google/common/collect/ImmutableList;

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Leh/w$b;->f:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Leh/w$b;->f:Lcom/google/common/collect/ImmutableList;

    .line 9
    :cond_3
    :goto_1
    iget-object v2, p0, Leh/w$b;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v0, p0, Leh/w$b;->g:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v1, p0, Leh/w$b;->h:Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    new-instance v11, Leh/w;

    iget-object v3, p0, Leh/w$b;->b:Ljava/lang/String;

    iget-object v4, p0, Leh/w$b;->d:Lcom/google/common/collect/ImmutableList;

    iget-object v5, p0, Leh/w$b;->f:Lcom/google/common/collect/ImmutableList;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Leh/w$b;->h:Ljava/lang/Long;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Leh/w;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;JJLeh/w$a;)V

    return-object v11

    .line 13
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v1, p0, Leh/w$b;->a:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, " clusterName"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_6
    iget-object v1, p0, Leh/w$b;->g:Ljava/lang/Long;

    if-nez v1, :cond_7

    const-string v1, " totalDroppedRequests"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_7
    iget-object v1, p0, Leh/w$b;->h:Ljava/lang/Long;

    if-nez v1, :cond_8

    const-string v1, " loadReportIntervalNano"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method d(Ljava/lang/String;)Leh/g2$a;
    .locals 1

    const-string v0, "Null clusterName"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Leh/w$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method e(Ljava/lang/String;)Leh/g2$a;
    .locals 0

    iput-object p1, p0, Leh/w$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method f()Lcom/google/common/collect/ImmutableList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList$b<",
            "Leh/h2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leh/w$b;->e:Lcom/google/common/collect/ImmutableList$b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    iput-object v0, p0, Leh/w$b;->e:Lcom/google/common/collect/ImmutableList$b;

    .line 3
    :cond_0
    iget-object v0, p0, Leh/w$b;->e:Lcom/google/common/collect/ImmutableList$b;

    return-object v0
.end method

.method g()J
    .locals 2

    .line 1
    iget-object v0, p0, Leh/w$b;->h:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"loadReportIntervalNano\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method h(J)Leh/g2$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Leh/w$b;->h:Ljava/lang/Long;

    return-object p0
.end method

.method i(J)Leh/g2$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Leh/w$b;->g:Ljava/lang/Long;

    return-object p0
.end method

.method j()Lcom/google/common/collect/ImmutableList$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList$b<",
            "Leh/i2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leh/w$b;->c:Lcom/google/common/collect/ImmutableList$b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    iput-object v0, p0, Leh/w$b;->c:Lcom/google/common/collect/ImmutableList$b;

    .line 3
    :cond_0
    iget-object v0, p0, Leh/w$b;->c:Lcom/google/common/collect/ImmutableList$b;

    return-object v0
.end method
