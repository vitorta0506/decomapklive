.class final Ln1/c;
.super Ln1/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/c$b;
    }
.end annotation


# instance fields
.field private final a:Ln1/o;

.field private final b:Ljava/lang/String;

.field private final c:Ll1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/c<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Ll1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/d<",
            "*[B>;"
        }
    .end annotation
.end field

.field private final e:Ll1/b;


# direct methods
.method private constructor <init>(Ln1/o;Ljava/lang/String;Ll1/c;Ll1/d;Ll1/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/o;",
            "Ljava/lang/String;",
            "Ll1/c<",
            "*>;",
            "Ll1/d<",
            "*[B>;",
            "Ll1/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ln1/n;-><init>()V

    .line 3
    iput-object p1, p0, Ln1/c;->a:Ln1/o;

    .line 4
    iput-object p2, p0, Ln1/c;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Ln1/c;->c:Ll1/c;

    .line 6
    iput-object p4, p0, Ln1/c;->d:Ll1/d;

    .line 7
    iput-object p5, p0, Ln1/c;->e:Ll1/b;

    return-void
.end method

.method synthetic constructor <init>(Ln1/o;Ljava/lang/String;Ll1/c;Ll1/d;Ll1/b;Ln1/c$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Ln1/c;-><init>(Ln1/o;Ljava/lang/String;Ll1/c;Ll1/d;Ll1/b;)V

    return-void
.end method


# virtual methods
.method public b()Ll1/b;
    .locals 1

    iget-object v0, p0, Ln1/c;->e:Ll1/b;

    return-object v0
.end method

.method c()Ll1/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll1/c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ln1/c;->c:Ll1/c;

    return-object v0
.end method

.method e()Ll1/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll1/d<",
            "*[B>;"
        }
    .end annotation

    iget-object v0, p0, Ln1/c;->d:Ll1/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln1/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Ln1/n;

    .line 3
    iget-object v1, p0, Ln1/c;->a:Ln1/o;

    invoke-virtual {p1}, Ln1/n;->f()Ln1/o;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln1/c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ln1/n;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln1/c;->c:Ll1/c;

    .line 5
    invoke-virtual {p1}, Ln1/n;->c()Ll1/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln1/c;->d:Ll1/d;

    .line 6
    invoke-virtual {p1}, Ln1/n;->e()Ll1/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln1/c;->e:Ll1/b;

    .line 7
    invoke-virtual {p1}, Ln1/n;->b()Ll1/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ll1/b;->equals(Ljava/lang/Object;)Z

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

.method public f()Ln1/o;
    .locals 1

    iget-object v0, p0, Ln1/c;->a:Ln1/o;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln1/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ln1/c;->a:Ln1/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ln1/c;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Ln1/c;->c:Ll1/c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Ln1/c;->d:Ll1/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v1, p0, Ln1/c;->e:Ll1/b;

    invoke-virtual {v1}, Ll1/b;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRequest{transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln1/c;->a:Ln1/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln1/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln1/c;->c:Ll1/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln1/c;->d:Ll1/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln1/c;->e:Ll1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
