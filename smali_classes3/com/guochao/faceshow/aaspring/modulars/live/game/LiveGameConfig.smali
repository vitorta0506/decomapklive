.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private confDiamondNum:I

.field private confUserNum:I

.field private isJoin:I

.field private roundId:Ljava/lang/String;

.field private selfIn:Z

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig$a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->confUserNum:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->confDiamondNum:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->isJoin:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->selfIn:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->roundId:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->started:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->confDiamondNum:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->confUserNum:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->isJoin:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->roundId:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->isJoin:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->started:Z

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->confDiamondNum:I

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->confUserNum:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->roundId:Ljava/lang/String;

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->isJoin:I

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->selfIn:Z

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->started:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->confUserNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->confDiamondNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->isJoin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->selfIn:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->roundId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->started:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
