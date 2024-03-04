.class public Lorg/light/TemplateClip;
.super Lorg/light/ClipAsset;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/TemplateClip;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public asset:Lorg/light/LightAsset;

.field public clipAssets:[Lorg/light/ClipAsset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/TemplateClip$1;

    invoke-direct {v0}, Lorg/light/TemplateClip$1;-><init>()V

    sput-object v0, Lorg/light/TemplateClip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/light/ClipAsset;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/light/ClipAsset;-><init>(Landroid/os/Parcel;)V

    .line 3
    const-class v0, Lorg/light/LightAsset;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/light/LightAsset;

    iput-object v0, p0, Lorg/light/TemplateClip;->asset:Lorg/light/LightAsset;

    .line 4
    const-class v0, Lorg/light/TemplateClip;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    array-length v0, p1

    new-array v0, v0, [Lorg/light/ClipAsset;

    iput-object v0, p0, Lorg/light/TemplateClip;->clipAssets:[Lorg/light/ClipAsset;

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lorg/light/TemplateClip;->clipAssets:[Lorg/light/ClipAsset;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 7
    aget-object v2, p1, v0

    check-cast v2, Lorg/light/ClipAsset;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lorg/light/ClipAsset;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lorg/light/TemplateClip;->asset:Lorg/light/LightAsset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lorg/light/TemplateClip;->clipAssets:[Lorg/light/ClipAsset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
