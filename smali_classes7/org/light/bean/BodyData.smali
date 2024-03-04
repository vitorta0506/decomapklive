.class public Lorg/light/bean/BodyData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/BodyData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public points:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/BodyData$1;

    invoke-direct {v0}, Lorg/light/bean/BodyData$1;-><init>()V

    sput-object v0, Lorg/light/bean/BodyData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Lorg/light/bean/BodyData;->points:[F

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

    iget-object p2, p0, Lorg/light/bean/BodyData;->points:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
