.class final Leh/t0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/t0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/t0$a$a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Leh/t0$a$a$a;

.field final c:Leh/j0$d;

.field final d:Ljava/lang/Long;

.field final e:Leh/i1;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Leh/t0$a$a$a;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cluster"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/t0$a$a;->a:Ljava/lang/String;

    const-string p1, "type"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/t0$a$a$a;

    iput-object p1, p0, Leh/t0$a$a;->b:Leh/t0$a$a$a;

    .line 4
    iput-object p3, p0, Leh/t0$a$a;->f:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Leh/t0$a$a;->g:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Leh/t0$a$a;->c:Leh/j0$d;

    .line 7
    iput-object p6, p0, Leh/t0$a$a;->d:Ljava/lang/Long;

    .line 8
    iput-object p7, p0, Leh/t0$a$a;->e:Leh/i1;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)Leh/t0$a$a;
    .locals 9

    new-instance v8, Leh/t0$a$a;

    sget-object v2, Leh/t0$a$a$a;->a:Leh/t0$a$a$a;

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Leh/t0$a$a;-><init>(Ljava/lang/String;Leh/t0$a$a$a;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)V

    return-object v8
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)Leh/t0$a$a;
    .locals 9

    new-instance v8, Leh/t0$a$a;

    sget-object v2, Leh/t0$a$a$a;->b:Leh/t0$a$a$a;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Leh/t0$a$a;-><init>(Ljava/lang/String;Leh/t0$a$a$a;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)V

    return-object v8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Leh/t0$a$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Leh/t0$a$a;

    .line 3
    iget-object v2, p0, Leh/t0$a$a;->a:Ljava/lang/String;

    iget-object v3, p1, Leh/t0$a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/t0$a$a;->b:Leh/t0$a$a$a;

    iget-object v3, p1, Leh/t0$a$a;->b:Leh/t0$a$a$a;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Leh/t0$a$a;->f:Ljava/lang/String;

    iget-object v3, p1, Leh/t0$a$a;->f:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/t0$a$a;->g:Ljava/lang/String;

    iget-object v3, p1, Leh/t0$a$a;->g:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/t0$a$a;->c:Leh/j0$d;

    iget-object v3, p1, Leh/t0$a$a;->c:Leh/j0$d;

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/t0$a$a;->d:Ljava/lang/Long;

    iget-object v3, p1, Leh/t0$a$a;->d:Ljava/lang/Long;

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leh/t0$a$a;->e:Leh/i1;

    iget-object p1, p1, Leh/t0$a$a;->e:Leh/i1;

    .line 8
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Leh/t0$a$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/t0$a$a;->b:Leh/t0$a$a$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/t0$a$a;->c:Leh/j0$d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/t0$a$a;->d:Ljava/lang/Long;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/t0$a$a;->e:Leh/i1;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/t0$a$a;->f:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/t0$a$a;->g:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/t0$a$a;->a:Ljava/lang/String;

    const-string v2, "cluster"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/t0$a$a;->b:Leh/t0$a$a$a;

    const-string v2, "type"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/t0$a$a;->f:Ljava/lang/String;

    const-string v2, "edsServiceName"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/t0$a$a;->g:Ljava/lang/String;

    const-string v2, "dnsHostName"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/t0$a$a;->c:Leh/j0$d;

    const-string v2, "lrsServerInfo"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/t0$a$a;->d:Ljava/lang/Long;

    const-string v2, "maxConcurrentRequests"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
