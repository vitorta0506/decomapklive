.class final Lhg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhg/i$m;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lhg/i$m;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mode"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhg/i$m;

    iput-object p1, p0, Lhg/d;->a:Lhg/i$m;

    .line 3
    iput-object p2, p0, Lhg/d;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Lhg/i$m;)Lhg/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lhg/d;->b(Lhg/i$m;Ljava/lang/String;)Lhg/d;

    move-result-object p0

    return-object p0
.end method

.method static b(Lhg/i$m;Ljava/lang/String;)Lhg/d;
    .locals 1

    new-instance v0, Lhg/d;

    invoke-direct {v0, p0, p1}, Lhg/d;-><init>(Lhg/i$m;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method c()Lhg/i$m;
    .locals 1

    iget-object v0, p0, Lhg/d;->a:Lhg/i$m;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhg/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lhg/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lhg/d;

    .line 3
    iget-object v2, p0, Lhg/d;->a:Lhg/i$m;

    iget-object v3, p1, Lhg/d;->a:Lhg/i$m;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lhg/d;->b:Ljava/lang/String;

    iget-object p1, p1, Lhg/d;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lhg/d;->a:Lhg/i$m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lhg/d;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lhg/d;->a:Lhg/i$m;

    const-string v2, "mode"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lhg/d;->b:Ljava/lang/String;

    const-string v2, "serviceName"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
