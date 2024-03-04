.class final Lcom/google/common/hash/p;
.super Lcom/google/common/hash/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/p$a;
    }
.end annotation


# static fields
.field static final b:Lcom/google/common/hash/i;

.field static final c:Lcom/google/common/hash/i;

.field private static final serialVersionUID:J


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/hash/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/p;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/p;->b:Lcom/google/common/hash/i;

    .line 2
    new-instance v0, Lcom/google/common/hash/p;

    sget v1, Lcom/google/common/hash/k;->a:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/p;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/p;->c:Lcom/google/common/hash/i;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/common/hash/p;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/hash/j;
    .locals 2

    new-instance v0, Lcom/google/common/hash/p$a;

    iget v1, p0, Lcom/google/common/hash/p;->a:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/p$a;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/common/hash/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/hash/p;

    .line 3
    iget v0, p0, Lcom/google/common/hash/p;->a:I

    iget p1, p1, Lcom/google/common/hash/p;->a:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    const-class v0, Lcom/google/common/hash/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/p;->a:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/common/hash/p;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Hashing.murmur3_128("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
