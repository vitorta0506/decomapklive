.class final Ll5/c;
.super Ll5/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/c$b;
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ll5/m;-><init>()V

    .line 3
    iput p1, p0, Ll5/c;->b:I

    .line 4
    iput-object p2, p0, Ll5/c;->c:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/concurrent/ThreadFactory;Ll5/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ll5/c;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Ll5/c;->b:I

    return v0
.end method

.method public d()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    iget-object v0, p0, Ll5/c;->c:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ll5/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Ll5/m;

    .line 3
    iget v1, p0, Ll5/c;->b:I

    invoke-virtual {p1}, Ll5/m;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ll5/c;->c:Ljava/util/concurrent/ThreadFactory;

    .line 4
    invoke-virtual {p1}, Ll5/m;->d()Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ll5/c;->b:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v1, p0, Ll5/c;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantiatingExecutorProvider{executorThreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll5/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", threadFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll5/c;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
