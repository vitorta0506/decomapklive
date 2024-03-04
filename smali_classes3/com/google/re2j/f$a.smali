.class Lcom/google/re2j/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:[Lcom/google/re2j/f$b;

.field final b:[I

.field final c:[I

.field d:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/re2j/f$a;->c:[I

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/re2j/f$a;->b:[I

    .line 4
    new-array p1, p1, [Lcom/google/re2j/f$b;

    iput-object p1, p0, Lcom/google/re2j/f$a;->a:[Lcom/google/re2j/f$b;

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/re2j/f$a;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/re2j/f$a;->d:I

    .line 2
    iget-object v1, p0, Lcom/google/re2j/f$a;->c:[I

    aput v0, v1, p1

    .line 3
    iget-object v1, p0, Lcom/google/re2j/f$a;->a:[Lcom/google/re2j/f$b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 4
    iget-object v1, p0, Lcom/google/re2j/f$a;->b:[I

    aput p1, v1, v0

    return v0
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/re2j/f$a;->d:I

    return-void
.end method

.method c(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/re2j/f$a;->c:[I

    aget v0, v0, p1

    .line 2
    iget v1, p0, Lcom/google/re2j/f$a;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/re2j/f$a;->b:[I

    aget v0, v1, v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method d()Z
    .locals 1

    iget v0, p0, Lcom/google/re2j/f$a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/google/re2j/f$a;->d:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/re2j/f$a;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
