.class public final Lmh/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh/m$b;
    }
.end annotation


# static fields
.field public static final b:Lmh/m;


# instance fields
.field private final a:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lmh/m;->b(B)Lmh/m;

    move-result-object v0

    sput-object v0, Lmh/m;->b:Lmh/m;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Lmh/m;->a:B

    return-void
.end method

.method public static a()Lmh/m$b;
    .locals 3

    new-instance v0, Lmh/m$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmh/m$b;-><init>(BLmh/m$a;)V

    return-object v0
.end method

.method public static b(B)Lmh/m;
    .locals 1

    new-instance v0, Lmh/m;

    invoke-direct {v0, p0}, Lmh/m;-><init>(B)V

    return-object v0
.end method

.method private c(I)Z
    .locals 1

    iget-byte v0, p0, Lmh/m;->a:B

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmh/m;->c(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lmh/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lmh/m;

    .line 3
    iget-byte v1, p0, Lmh/m;->a:B

    iget-byte p1, p1, Lmh/m;->a:B

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    iget-byte v1, p0, Lmh/m;->a:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TraceOptions{sampled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmh/m;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
