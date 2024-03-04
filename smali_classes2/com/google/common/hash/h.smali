.class public abstract Lcom/google/common/hash/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/h$a;
    }
.end annotation


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/h;->a:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static f([B)Lcom/google/common/hash/h;
    .locals 1

    new-instance v0, Lcom/google/common/hash/h$a;

    invoke-direct {v0, p0}, Lcom/google/common/hash/h$a;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract b()I
.end method

.method public abstract c()J
.end method

.method public abstract d()I
.end method

.method abstract e(Lcom/google/common/hash/h;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/hash/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/hash/h;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/hash/h;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/common/hash/h;->d()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/hash/h;->e(Lcom/google/common/hash/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method g()[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/h;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/hash/h;->d()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/hash/h;->b()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/h;->g()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    .line 5
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 6
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/common/hash/h;->g()[B

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 4
    sget-object v5, Lcom/google/common/hash/h;->a:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
