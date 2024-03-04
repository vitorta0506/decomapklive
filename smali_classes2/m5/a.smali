.class final Lm5/a;
.super Lm5/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/a$b;
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Z


# direct methods
.method private constructor <init>(IIIIIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lm5/k;-><init>()V

    .line 3
    iput p1, p0, Lm5/a;->b:I

    .line 4
    iput p2, p0, Lm5/a;->c:I

    .line 5
    iput p3, p0, Lm5/a;->d:I

    .line 6
    iput p4, p0, Lm5/a;->e:I

    .line 7
    iput p5, p0, Lm5/a;->f:I

    .line 8
    iput-boolean p6, p0, Lm5/a;->g:Z

    return-void
.end method

.method synthetic constructor <init>(IIIIIZLm5/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lm5/a;-><init>(IIIIIZ)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lm5/a;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lm5/a;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lm5/a;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lm5/a;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lm5/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lm5/k;

    .line 3
    iget v1, p0, Lm5/a;->b:I

    invoke-virtual {p1}, Lm5/k;->f()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lm5/a;->c:I

    .line 4
    invoke-virtual {p1}, Lm5/k;->d()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lm5/a;->d:I

    .line 5
    invoke-virtual {p1}, Lm5/k;->e()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lm5/a;->e:I

    .line 6
    invoke-virtual {p1}, Lm5/k;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lm5/a;->f:I

    .line 7
    invoke-virtual {p1}, Lm5/k;->b()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lm5/a;->g:Z

    .line 8
    invoke-virtual {p1}, Lm5/k;->g()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lm5/a;->b:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lm5/a;->g:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lm5/a;->b:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget v2, p0, Lm5/a;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget v2, p0, Lm5/a;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget v2, p0, Lm5/a;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget v2, p0, Lm5/a;->f:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-boolean v1, p0, Lm5/a;->g:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelPoolSettings{minRpcsPerChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm5/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRpcsPerChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm5/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm5/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm5/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initialChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm5/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preemptiveRefreshEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lm5/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
