.class final Lcom/google/common/base/d$d;
.super Lcom/google/common/base/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:C

.field private final b:C


# direct methods
.method constructor <init>(CC)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/d$c;-><init>()V

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    iput-char p1, p0, Lcom/google/common/base/d$d;->a:C

    .line 4
    iput-char p2, p0, Lcom/google/common/base/d$d;->b:C

    return-void
.end method


# virtual methods
.method public j(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/common/base/d$d;->a:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/common/base/d$d;->b:C

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-char v0, p0, Lcom/google/common/base/d$d;->a:C

    .line 2
    invoke-static {v0}, Lcom/google/common/base/d;->a(C)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/google/common/base/d$d;->b:C

    .line 3
    invoke-static {v1}, Lcom/google/common/base/d;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CharMatcher.inRange(\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
