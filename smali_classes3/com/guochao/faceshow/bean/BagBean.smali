.class public final Lcom/guochao/faceshow/bean/BagBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000b\"\u0004\u0008\u0017\u0010\r\u00a8\u0006$"
    }
    d2 = {
        "Lcom/guochao/faceshow/bean/BagBean;",
        "",
        "giftId",
        "",
        "number",
        "freezeNumber",
        "expireDay",
        "",
        "bagAttribute",
        "(IIIJI)V",
        "getBagAttribute",
        "()I",
        "setBagAttribute",
        "(I)V",
        "getExpireDay",
        "()J",
        "setExpireDay",
        "(J)V",
        "getFreezeNumber",
        "setFreezeNumber",
        "getGiftId",
        "setGiftId",
        "getNumber",
        "setNumber",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "app_GooglePlayRelease"
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
.field private bagAttribute:I

.field private expireDay:J

.field private freezeNumber:I

.field private giftId:I

.field private number:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/guochao/faceshow/bean/BagBean;-><init>(IIIJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/bean/BagBean;->giftId:I

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/bean/BagBean;->number:I

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/bean/BagBean;->freezeNumber:I

    .line 5
    iput-wide p4, p0, Lcom/guochao/faceshow/bean/BagBean;->expireDay:J

    .line 6
    iput p6, p0, Lcom/guochao/faceshow/bean/BagBean;->bagAttribute:I

    return-void
.end method

.method public synthetic constructor <init>(IIIJIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    const/4 p8, 0x0

    goto :goto_0

    :cond_0
    move p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    const-wide/16 p4, 0x0

    :cond_3
    move-wide v2, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p6, 0x1

    const/4 p7, 0x1

    goto :goto_3

    :cond_4
    move p7, p6

    :goto_3
    move-object p1, p0

    move p2, p8

    move p3, v1

    move p4, v0

    move-wide p5, v2

    .line 7
    invoke-direct/range {p1 .. p7}, Lcom/guochao/faceshow/bean/BagBean;-><init>(IIIJI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/bean/BagBean;IIIJIILjava/lang/Object;)Lcom/guochao/faceshow/bean/BagBean;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/bean/BagBean;->giftId:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/guochao/faceshow/bean/BagBean;->number:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/guochao/faceshow/bean/BagBean;->freezeNumber:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/guochao/faceshow/bean/BagBean;->expireDay:J

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p6, p0, Lcom/guochao/faceshow/bean/BagBean;->bagAttribute:I

    :cond_4
    move v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move-wide p6, v1

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/guochao/faceshow/bean/BagBean;->copy(IIIJI)Lcom/guochao/faceshow/bean/BagBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/BagBean;->giftId:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/BagBean;->number:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/BagBean;->freezeNumber:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/bean/BagBean;->expireDay:J

    return-wide v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/BagBean;->bagAttribute:I

    return v0
.end method

.method public final copy(IIIJI)Lcom/guochao/faceshow/bean/BagBean;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lcom/guochao/faceshow/bean/BagBean;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/bean/BagBean;-><init>(IIIJI)V

    return-object v7
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
    instance-of v1, p1, Lcom/guochao/faceshow/bean/BagBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/bean/BagBean;

    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->giftId:I

    iget v3, p1, Lcom/guochao/faceshow/bean/BagBean;->giftId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->number:I

    iget v3, p1, Lcom/guochao/faceshow/bean/BagBean;->number:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->freezeNumber:I

    iget v3, p1, Lcom/guochao/faceshow/bean/BagBean;->freezeNumber:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/guochao/faceshow/bean/BagBean;->expireDay:J

    iget-wide v5, p1, Lcom/guochao/faceshow/bean/BagBean;->expireDay:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->bagAttribute:I

    iget p1, p1, Lcom/guochao/faceshow/bean/BagBean;->bagAttribute:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBagAttribute()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/BagBean;->bagAttribute:I

    return v0
.end method

.method public final getExpireDay()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/bean/BagBean;->expireDay:J

    return-wide v0
.end method

.method public final getFreezeNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/BagBean;->freezeNumber:I

    return v0
.end method

.method public final getGiftId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/BagBean;->giftId:I

    return v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/BagBean;->number:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/bean/BagBean;->giftId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->number:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->freezeNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/faceshow/bean/BagBean;->expireDay:J

    invoke-static {v1, v2}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->bagAttribute:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setBagAttribute(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/BagBean;->bagAttribute:I

    return-void
.end method

.method public final setExpireDay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/bean/BagBean;->expireDay:J

    return-void
.end method

.method public final setFreezeNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/BagBean;->freezeNumber:I

    return-void
.end method

.method public final setGiftId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/BagBean;->giftId:I

    return-void
.end method

.method public final setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/BagBean;->number:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BagBean(giftId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->giftId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freezeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->freezeNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expireDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/bean/BagBean;->expireDay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bagAttribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/BagBean;->bagAttribute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
