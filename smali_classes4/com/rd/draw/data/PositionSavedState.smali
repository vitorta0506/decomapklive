.class public Lcom/rd/draw/data/PositionSavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rd/draw/data/PositionSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastSelectedPosition:I

.field private selectedPosition:I

.field private selectingPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rd/draw/data/PositionSavedState$a;

    invoke-direct {v0}, Lcom/rd/draw/data/PositionSavedState$a;-><init>()V

    sput-object v0, Lcom/rd/draw/data/PositionSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectedPosition:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectingPosition:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/rd/draw/data/PositionSavedState;->lastSelectedPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/rd/draw/data/PositionSavedState$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rd/draw/data/PositionSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/rd/draw/data/PositionSavedState;->lastSelectedPosition:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectedPosition:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectingPosition:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/rd/draw/data/PositionSavedState;->lastSelectedPosition:I

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/rd/draw/data/PositionSavedState;->selectedPosition:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/rd/draw/data/PositionSavedState;->selectingPosition:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/rd/draw/data/PositionSavedState;->selectedPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/rd/draw/data/PositionSavedState;->selectingPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/rd/draw/data/PositionSavedState;->lastSelectedPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
