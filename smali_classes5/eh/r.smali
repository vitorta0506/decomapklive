.class final Leh/r;
.super Leh/j1$c;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Leh/j1$c$a;


# direct methods
.method constructor <init>(ILeh/j1$c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leh/j1$c;-><init>()V

    .line 2
    iput p1, p0, Leh/r;->a:I

    const-string p1, "Null denominatorType"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Leh/r;->b:Leh/j1$c$a;

    return-void
.end method


# virtual methods
.method b()Leh/j1$c$a;
    .locals 1

    iget-object v0, p0, Leh/r;->b:Leh/j1$c$a;

    return-object v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Leh/r;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Leh/j1$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Leh/j1$c;

    .line 3
    iget v1, p0, Leh/r;->a:I

    invoke-virtual {p1}, Leh/j1$c;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Leh/r;->b:Leh/j1$c$a;

    .line 4
    invoke-virtual {p1}, Leh/j1$c;->b()Leh/j1$c$a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

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
    iget v0, p0, Leh/r;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v1, p0, Leh/r;->b:Leh/j1$c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FractionalPercent{numerator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leh/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", denominatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leh/r;->b:Leh/j1$c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
