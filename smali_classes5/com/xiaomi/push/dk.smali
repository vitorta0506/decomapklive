.class public Lcom/xiaomi/push/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/push/ef;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/push/ef<",
        "Lcom/xiaomi/push/dk;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/push/m2;

.field private static final a:Lcom/xiaomi/push/s2;

.field private static final b:Lcom/xiaomi/push/m2;

.field private static final c:Lcom/xiaomi/push/m2;

.field private static final d:Lcom/xiaomi/push/m2;

.field private static final e:Lcom/xiaomi/push/m2;

.field private static final f:Lcom/xiaomi/push/m2;


# instance fields
.field public a:J

.field public a:Ljava/lang/String;

.field private a:Ljava/util/BitSet;

.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/push/s2;

    const-string v1, "Target"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/s2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/dk;->a:Lcom/xiaomi/push/s2;

    new-instance v0, Lcom/xiaomi/push/m2;

    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/m2;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/dk;->a:Lcom/xiaomi/push/m2;

    new-instance v0, Lcom/xiaomi/push/m2;

    const/16 v2, 0xb

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/m2;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/dk;->b:Lcom/xiaomi/push/m2;

    new-instance v0, Lcom/xiaomi/push/m2;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/xiaomi/push/m2;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/dk;->c:Lcom/xiaomi/push/m2;

    new-instance v0, Lcom/xiaomi/push/m2;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4}, Lcom/xiaomi/push/m2;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/dk;->d:Lcom/xiaomi/push/m2;

    new-instance v0, Lcom/xiaomi/push/m2;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/push/m2;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/dk;->e:Lcom/xiaomi/push/m2;

    new-instance v0, Lcom/xiaomi/push/m2;

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/m2;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/dk;->f:Lcom/xiaomi/push/m2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/util/BitSet;

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/xiaomi/push/dk;->a:J

    const-string v0, "xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/dk;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/dk;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/xiaomi/push/dk;->a:J

    iget-wide v2, p1, Lcom/xiaomi/push/dk;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/i2;->c(JJ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/i2;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/i2;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/i2;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/xiaomi/push/dk;->a:Z

    iget-boolean v1, p1, Lcom/xiaomi/push/dk;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/push/i2;->k(ZZ)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/push/dk;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/push/dk;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaomi/push/i2;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_c

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/push/eq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'userId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/eq;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/xiaomi/push/p2;)V
    .locals 6

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->i()Lcom/xiaomi/push/s2;

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->e()Lcom/xiaomi/push/m2;

    move-result-object v0

    iget-byte v1, v0, Lcom/xiaomi/push/m2;->b:B

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->C()V

    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->a()V

    return-void

    :cond_0
    new-instance p1, Lcom/xiaomi/push/eq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'channelId\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaomi/push/eq;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-short v0, v0, Lcom/xiaomi/push/m2;->c:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    const/16 v4, 0xb

    if-eq v0, v3, :cond_7

    const/4 v5, 0x3

    if-eq v0, v5, :cond_6

    const/4 v5, 0x4

    if-eq v0, v5, :cond_5

    const/4 v5, 0x5

    if-eq v0, v5, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    :cond_2
    invoke-static {p1, v1}, Lcom/xiaomi/push/q2;->a(Lcom/xiaomi/push/p2;B)V

    goto :goto_1

    :cond_3
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/dk;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->x()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/push/dk;->a:Z

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/dk;->b(Z)V

    goto :goto_1

    :cond_5
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    goto :goto_1

    :cond_7
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/16 v0, 0xa

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/dk;->a:J

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/dk;->a(Z)V

    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->D()V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/xiaomi/push/dk;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/xiaomi/push/dk;->a:J

    iget-wide v3, p1, Lcom/xiaomi/push/dk;->a:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v1, :cond_11

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->c()Z

    move-result v2

    if-nez v1, :cond_5

    if-eqz v2, :cond_7

    :cond_5
    if-eqz v1, :cond_11

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->d()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_a

    :cond_8
    if-eqz v1, :cond_11

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->e()Z

    move-result v2

    if-nez v1, :cond_b

    if-eqz v2, :cond_d

    :cond_b
    if-eqz v1, :cond_11

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    iget-boolean v1, p0, Lcom/xiaomi/push/dk;->a:Z

    iget-boolean v2, p1, Lcom/xiaomi/push/dk;->a:Z

    if-eq v1, v2, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/dk;->f()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_10

    :cond_e
    if-eqz v1, :cond_11

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    iget-object v1, p0, Lcom/xiaomi/push/dk;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/push/dk;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v0

    :cond_10
    const/4 p1, 0x1

    return p1

    :cond_11
    :goto_0
    return v0
.end method

.method public b(Lcom/xiaomi/push/p2;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->a()V

    sget-object v0, Lcom/xiaomi/push/dk;->a:Lcom/xiaomi/push/s2;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->s(Lcom/xiaomi/push/s2;)V

    sget-object v0, Lcom/xiaomi/push/dk;->a:Lcom/xiaomi/push/m2;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->p(Lcom/xiaomi/push/m2;)V

    iget-wide v0, p0, Lcom/xiaomi/push/dk;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/p2;->o(J)V

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->y()V

    iget-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/dk;->b:Lcom/xiaomi/push/m2;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->p(Lcom/xiaomi/push/m2;)V

    iget-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->t(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->y()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/push/dk;->c:Lcom/xiaomi/push/m2;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->p(Lcom/xiaomi/push/m2;)V

    iget-object v0, p0, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->t(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->y()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/push/dk;->d:Lcom/xiaomi/push/m2;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->p(Lcom/xiaomi/push/m2;)V

    iget-object v0, p0, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->t(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->y()V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/push/dk;->e:Lcom/xiaomi/push/m2;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->p(Lcom/xiaomi/push/m2;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/dk;->a:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->w(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->y()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/dk;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/push/dk;->f:Lcom/xiaomi/push/m2;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->p(Lcom/xiaomi/push/m2;)V

    iget-object v0, p0, Lcom/xiaomi/push/dk;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/p2;->t(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->y()V

    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->z()V

    invoke-virtual {p1}, Lcom/xiaomi/push/p2;->m()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/xiaomi/push/dk;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/dk;->a(Lcom/xiaomi/push/dk;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/dk;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/xiaomi/push/dk;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/xiaomi/push/dk;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/dk;->a(Lcom/xiaomi/push/dk;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/dk;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "channelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/dk;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "userId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/dk;->a:Ljava/lang/String;

    const-string v3, "null"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "server:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/dk;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resource:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/dk;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isPreview:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/push/dk;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/dk;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/dk;->d:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
