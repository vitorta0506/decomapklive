.class final Leh/h0$b;
.super Leh/p2$c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Leh/p2$c$b;

.field private c:Leh/p2$c$c;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Leh/j0$d;

.field private j:Ljava/lang/Long;

.field private k:Leh/i1;

.field private l:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leh/p2$c$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Leh/p2$c;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Leh/h0$b;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, v0, Leh/h0$b;->b:Leh/p2$c$b;

    if-eqz v3, :cond_1

    iget-object v4, v0, Leh/h0$b;->c:Leh/p2$c$c;

    if-eqz v4, :cond_1

    iget-object v1, v0, Leh/h0$b;->d:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v5, v0, Leh/h0$b;->e:Ljava/lang/Long;

    if-eqz v5, :cond_1

    iget-object v5, v0, Leh/h0$b;->f:Ljava/lang/Integer;

    if-nez v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v17, Leh/h0;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, v0, Leh/h0$b;->e:Ljava/lang/Long;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, v0, Leh/h0$b;->f:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v0, Leh/h0$b;->g:Ljava/lang/String;

    iget-object v11, v0, Leh/h0$b;->h:Ljava/lang/String;

    iget-object v12, v0, Leh/h0$b;->i:Leh/j0$d;

    iget-object v13, v0, Leh/h0$b;->j:Ljava/lang/Long;

    iget-object v14, v0, Leh/h0$b;->k:Leh/i1;

    iget-object v15, v0, Leh/h0$b;->l:Lcom/google/common/collect/ImmutableList;

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Leh/h0;-><init>(Ljava/lang/String;Leh/p2$c$b;Leh/p2$c$c;JJILjava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lcom/google/common/collect/ImmutableList;Leh/h0$a;)V

    return-object v17

    .line 6
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v2, v0, Leh/h0$b;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, " clusterName"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    iget-object v2, v0, Leh/h0$b;->b:Leh/p2$c$b;

    if-nez v2, :cond_3

    const-string v2, " clusterType"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    iget-object v2, v0, Leh/h0$b;->c:Leh/p2$c$c;

    if-nez v2, :cond_4

    const-string v2, " lbPolicy"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_4
    iget-object v2, v0, Leh/h0$b;->d:Ljava/lang/Long;

    if-nez v2, :cond_5

    const-string v2, " minRingSize"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_5
    iget-object v2, v0, Leh/h0$b;->e:Ljava/lang/Long;

    if-nez v2, :cond_6

    const-string v2, " maxRingSize"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_6
    iget-object v2, v0, Leh/h0$b;->f:Ljava/lang/Integer;

    if-nez v2, :cond_7

    const-string v2, " choiceCount"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected b(I)Leh/p2$c$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Leh/h0$b;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method protected c(Leh/p2$c$b;)Leh/p2$c$a;
    .locals 1

    const-string v0, "Null clusterType"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Leh/h0$b;->b:Leh/p2$c$b;

    return-object p0
.end method

.method protected d(Ljava/lang/String;)Leh/p2$c$a;
    .locals 0

    iput-object p1, p0, Leh/h0$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method protected e(Ljava/lang/String;)Leh/p2$c$a;
    .locals 0

    iput-object p1, p0, Leh/h0$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method protected f(Leh/p2$c$c;)Leh/p2$c$a;
    .locals 1

    const-string v0, "Null lbPolicy"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Leh/h0$b;->c:Leh/p2$c$c;

    return-object p0
.end method

.method protected h(Leh/j0$d;)Leh/p2$c$a;
    .locals 0

    iput-object p1, p0, Leh/h0$b;->i:Leh/j0$d;

    return-object p0
.end method

.method protected i(Ljava/lang/Long;)Leh/p2$c$a;
    .locals 0

    iput-object p1, p0, Leh/h0$b;->j:Ljava/lang/Long;

    return-object p0
.end method

.method protected j(J)Leh/p2$c$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Leh/h0$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method protected k(J)Leh/p2$c$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Leh/h0$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method protected l(Ljava/util/List;)Leh/p2$c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Leh/p2$c$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Leh/h0$b;->l:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method protected o(Leh/i1;)Leh/p2$c$a;
    .locals 0

    iput-object p1, p0, Leh/h0$b;->k:Leh/i1;

    return-object p0
.end method

.method protected p(Ljava/lang/String;)Leh/p2$c$a;
    .locals 1

    const-string v0, "Null clusterName"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Leh/h0$b;->a:Ljava/lang/String;

    return-object p0
.end method
