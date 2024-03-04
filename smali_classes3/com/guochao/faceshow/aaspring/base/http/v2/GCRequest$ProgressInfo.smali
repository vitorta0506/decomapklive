.class public final Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;",
        "",
        "current",
        "",
        "total",
        "progress",
        "",
        "(JJF)V",
        "getCurrent",
        "()J",
        "getProgress",
        "()F",
        "getTotal",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "lib_httpclient_release"
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
.field private final current:J

.field private final progress:F

.field private final total:J


# direct methods
.method public constructor <init>()V
    .locals 8

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;-><init>(JJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->current:J

    .line 3
    iput-wide p3, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->total:J

    .line 4
    iput p5, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->progress:F

    return-void
.end method

.method public synthetic constructor <init>(JJFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const-wide/16 v0, 0x0

    if-eqz p7, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p3

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    long-to-float p1, v2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    long-to-float p2, v0

    div-float p5, p1, p2

    :cond_2
    move p6, p5

    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v0

    .line 5
    invoke-direct/range {p1 .. p6}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;-><init>(JJF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;JJFILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->current:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->total:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget p5, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->progress:F

    :cond_2
    move v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->copy(JJF)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->current:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->total:J

    return-wide v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->progress:F

    return v0
.end method

.method public final copy(JJF)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;-><init>(JJF)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;

    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->current:J

    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->current:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->total:J

    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->total:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->progress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->progress:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCurrent()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->current:J

    return-wide v0
.end method

.method public final getProgress()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->progress:F

    return v0
.end method

.method public final getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->total:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->current:J

    invoke-static {v0, v1}, Lb7/b;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->total:J

    invoke-static {v1, v2}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->progress:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressInfo(current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->current:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->total:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$ProgressInfo;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
