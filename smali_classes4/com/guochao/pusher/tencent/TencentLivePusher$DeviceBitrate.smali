.class final Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/pusher/tencent/TencentLivePusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceBitrate"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;",
        "",
        "coefficient",
        "",
        "fps",
        "",
        "(FI)V",
        "getCoefficient",
        "()F",
        "getFps",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "lib_pusher_and_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final coefficient:F

.field private final fps:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->coefficient:F

    iput p2, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->fps:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;FIILjava/lang/Object;)Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->coefficient:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->fps:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->copy(FI)Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->coefficient:F

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->fps:I

    return v0
.end method

.method public final copy(FI)Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    invoke-direct {v0, p1, p2}, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;-><init>(FI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;

    iget v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->coefficient:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->coefficient:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->fps:I

    iget p1, p1, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->fps:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCoefficient()F
    .locals 1

    iget v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->coefficient:F

    return v0
.end method

.method public final getFps()I
    .locals 1

    iget v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->fps:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->coefficient:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->fps:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceBitrate(coefficient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->coefficient:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/pusher/tencent/TencentLivePusher$DeviceBitrate;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
