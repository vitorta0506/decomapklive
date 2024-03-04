.class final Leh/h0;
.super Leh/p2$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/h0$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Leh/p2$c$b;

.field private final c:Leh/p2$c$c;

.field private final d:J

.field private final e:J

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Leh/j0$d;

.field private final j:Ljava/lang/Long;

.field private final k:Leh/i1;

.field private final l:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Leh/p2$c$b;Leh/p2$c$c;JJILjava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Leh/p2$c$b;",
            "Leh/p2$c$c;",
            "JJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Leh/j0$d;",
            "Ljava/lang/Long;",
            "Leh/i1;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Leh/p2$c;-><init>()V

    .line 3
    iput-object p1, p0, Leh/h0;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Leh/h0;->b:Leh/p2$c$b;

    .line 5
    iput-object p3, p0, Leh/h0;->c:Leh/p2$c$c;

    .line 6
    iput-wide p4, p0, Leh/h0;->d:J

    .line 7
    iput-wide p6, p0, Leh/h0;->e:J

    .line 8
    iput p8, p0, Leh/h0;->f:I

    .line 9
    iput-object p9, p0, Leh/h0;->g:Ljava/lang/String;

    .line 10
    iput-object p10, p0, Leh/h0;->h:Ljava/lang/String;

    .line 11
    iput-object p11, p0, Leh/h0;->i:Leh/j0$d;

    .line 12
    iput-object p12, p0, Leh/h0;->j:Ljava/lang/Long;

    .line 13
    iput-object p13, p0, Leh/h0;->k:Leh/i1;

    .line 14
    iput-object p14, p0, Leh/h0;->l:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Leh/p2$c$b;Leh/p2$c$c;JJILjava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lcom/google/common/collect/ImmutableList;Leh/h0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p14}, Leh/h0;-><init>(Ljava/lang/String;Leh/p2$c$b;Leh/p2$c$c;JJILjava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Leh/h0;->f:I

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/h0;->a:Ljava/lang/String;

    return-object v0
.end method

.method c()Leh/p2$c$b;
    .locals 1

    iget-object v0, p0, Leh/h0;->b:Leh/p2$c$b;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/h0;->h:Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/h0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/p2$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 2
    check-cast p1, Leh/p2$c;

    .line 3
    iget-object v1, p0, Leh/h0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Leh/p2$c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Leh/h0;->b:Leh/p2$c$b;

    .line 4
    invoke-virtual {p1}, Leh/p2$c;->c()Leh/p2$c$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Leh/h0;->c:Leh/p2$c$c;

    .line 5
    invoke-virtual {p1}, Leh/p2$c;->i()Leh/p2$c$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-wide v3, p0, Leh/h0;->d:J

    .line 6
    invoke-virtual {p1}, Leh/p2$c;->m()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-wide v3, p0, Leh/h0;->e:J

    .line 7
    invoke-virtual {p1}, Leh/p2$c;->l()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget v1, p0, Leh/h0;->f:I

    .line 8
    invoke-virtual {p1}, Leh/p2$c;->a()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Leh/h0;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p1}, Leh/p2$c;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Leh/p2$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Leh/h0;->h:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p1}, Leh/p2$c;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Leh/p2$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Leh/h0;->i:Leh/j0$d;

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {p1}, Leh/p2$c;->j()Leh/j0$d;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Leh/p2$c;->j()Leh/j0$d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Leh/h0;->j:Ljava/lang/Long;

    if-nez v1, :cond_4

    .line 12
    invoke-virtual {p1}, Leh/p2$c;->k()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Leh/p2$c;->k()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Leh/h0;->k:Leh/i1;

    if-nez v1, :cond_5

    .line 13
    invoke-virtual {p1}, Leh/p2$c;->o()Leh/i1;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Leh/p2$c;->o()Leh/i1;

    move-result-object v3

    invoke-virtual {v1, v3}, Leh/b1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Leh/h0;->l:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_6

    .line 14
    invoke-virtual {p1}, Leh/p2$c;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Leh/p2$c;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_8
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Leh/h0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Leh/h0;->b:Leh/p2$c$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Leh/h0;->c:Leh/p2$c$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-wide v2, p0, Leh/h0;->d:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 5
    iget-wide v2, p0, Leh/h0;->e:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 6
    iget v2, p0, Leh/h0;->f:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget-object v2, p0, Leh/h0;->g:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 8
    iget-object v2, p0, Leh/h0;->h:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 9
    iget-object v2, p0, Leh/h0;->i:Leh/j0$d;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 10
    iget-object v2, p0, Leh/h0;->j:Ljava/lang/Long;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 11
    iget-object v2, p0, Leh/h0;->k:Leh/i1;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Leh/b1;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 12
    iget-object v1, p0, Leh/h0;->l:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    return v0
.end method

.method i()Leh/p2$c$c;
    .locals 1

    iget-object v0, p0, Leh/h0;->c:Leh/p2$c$c;

    return-object v0
.end method

.method j()Leh/j0$d;
    .locals 1

    iget-object v0, p0, Leh/h0;->i:Leh/j0$d;

    return-object v0
.end method

.method k()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Leh/h0;->j:Ljava/lang/Long;

    return-object v0
.end method

.method l()J
    .locals 2

    iget-wide v0, p0, Leh/h0;->e:J

    return-wide v0
.end method

.method m()J
    .locals 2

    iget-wide v0, p0, Leh/h0;->d:J

    return-wide v0
.end method

.method n()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/h0;->l:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method o()Leh/i1;
    .locals 1

    iget-object v0, p0, Leh/h0;->k:Leh/i1;

    return-object v0
.end method
