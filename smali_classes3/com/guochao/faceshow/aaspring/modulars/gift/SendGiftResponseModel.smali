.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u001fB\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0015H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R(\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00118\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\u00158\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
        "",
        "balance",
        "",
        "(I)V",
        "getBalance",
        "()I",
        "level",
        "getLevel",
        "luckyGiftResults",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;",
        "getLuckyGiftResults",
        "()Ljava/util/List;",
        "setLuckyGiftResults",
        "(Ljava/util/List;)V",
        "serverTime",
        "",
        "getServerTime",
        "()J",
        "useDiamond",
        "",
        "getUseDiamond",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "LuckyGiftResult",
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
.field private final balance:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b"
    .end annotation
.end field

.field private final level:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ulid"
    .end annotation
.end field

.field private luckyGiftResults:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resultVoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final serverTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cts"
    .end annotation
.end field

.field private final useDiamond:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "at"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->balance:I

    const-string p1, "1"

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->useDiamond:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;-><init>(I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;IILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->balance:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->copy(I)Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->balance:I

    return v0
.end method

.method public final copy(I)Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->balance:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->balance:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getBalance()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->balance:I

    return v0
.end method

.method public final getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->level:I

    return v0
.end method

.method public final getLuckyGiftResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->luckyGiftResults:Ljava/util/List;

    return-object v0
.end method

.method public final getServerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->serverTime:J

    return-wide v0
.end method

.method public final getUseDiamond()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->useDiamond:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->balance:I

    return v0
.end method

.method public final setLuckyGiftResults(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->luckyGiftResults:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendGiftResponseModel(balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->balance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
