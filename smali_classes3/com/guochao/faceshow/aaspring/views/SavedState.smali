.class public Lcom/guochao/faceshow/aaspring/views/SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/views/SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currSelectedMax:F

.field public currSelectedMin:F

.field public maxValue:F

.field public minValue:F

.field public rangeInterval:F

.field public tickNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/SavedState$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/SavedState$a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->minValue:F

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->maxValue:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->rangeInterval:F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->tickNumber:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->currSelectedMin:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->currSelectedMax:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/guochao/faceshow/aaspring/views/SavedState$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->minValue:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->maxValue:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->rangeInterval:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->tickNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->currSelectedMin:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/SavedState;->currSelectedMax:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
