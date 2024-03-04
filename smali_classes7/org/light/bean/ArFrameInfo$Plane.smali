.class public Lorg/light/bean/ArFrameInfo$Plane;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/bean/ArFrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Plane"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/ArFrameInfo$Plane;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public arbitraryPoint:[F

.field public normal:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/ArFrameInfo$Plane$1;

    invoke-direct {v0}, Lorg/light/bean/ArFrameInfo$Plane$1;-><init>()V

    sput-object v0, Lorg/light/bean/ArFrameInfo$Plane;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lorg/light/bean/ArFrameInfo$Plane;->arbitraryPoint:[F

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lorg/light/bean/ArFrameInfo$Plane;->normal:[F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lorg/light/bean/ArFrameInfo$Plane;->arbitraryPoint:[F

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lorg/light/bean/ArFrameInfo$Plane;->normal:[F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/ArFrameInfo$Plane;->arbitraryPoint:[F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Lorg/light/bean/ArFrameInfo$Plane;->normal:[F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/light/bean/ArFrameInfo$Plane;->arbitraryPoint:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2
    iget-object p2, p0, Lorg/light/bean/ArFrameInfo$Plane;->normal:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
