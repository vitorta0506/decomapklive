.class public Lorg/light/PhotoClip;
.super Lorg/light/ClipAsset;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/PhotoClip;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_sharedBytes:Ljava/lang/String; = "sharedBytes"

.field private static final KEY_sharedTexture:Ljava/lang/String; = "sharedTexture"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field public bytes:[B

.field public height:I

.field public photoEffectPath:Ljava/lang/String;

.field private sharedBytes:Lorg/light/shared/SharedBytes;

.field private sharedTexture:Lorg/light/shared/SharedTexture;

.field public texId:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/PhotoClip$1;

    invoke-direct {v0}, Lorg/light/PhotoClip$1;-><init>()V

    sput-object v0, Lorg/light/PhotoClip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/ClipAsset;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/PhotoClip;->photoEffectPath:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/light/PhotoClip;->texId:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/light/PhotoClip;->width:I

    .line 5
    iput v0, p0, Lorg/light/PhotoClip;->height:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/light/PhotoClip;->bundle:Landroid/os/Bundle;

    .line 7
    iput-object v0, p0, Lorg/light/PhotoClip;->sharedBytes:Lorg/light/shared/SharedBytes;

    .line 8
    iput-object v0, p0, Lorg/light/PhotoClip;->sharedTexture:Lorg/light/shared/SharedTexture;

    .line 9
    sget v0, Lorg/light/ClipAsset;->PHOTO:I

    iput v0, p0, Lorg/light/ClipAsset;->type:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lorg/light/ClipAsset;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lorg/light/PhotoClip;->photoEffectPath:Ljava/lang/String;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lorg/light/PhotoClip;->texId:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/light/PhotoClip;->width:I

    .line 14
    iput v0, p0, Lorg/light/PhotoClip;->height:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lorg/light/PhotoClip;->bundle:Landroid/os/Bundle;

    .line 16
    iput-object v0, p0, Lorg/light/PhotoClip;->sharedBytes:Lorg/light/shared/SharedBytes;

    .line 17
    iput-object v0, p0, Lorg/light/PhotoClip;->sharedTexture:Lorg/light/shared/SharedTexture;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/PhotoClip;->photoEffectPath:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/PhotoClip;->width:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/PhotoClip;->height:I

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lorg/light/PhotoClip;->bundle:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "sharedBytes"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/light/shared/SharedBytes;

    iput-object p1, p0, Lorg/light/PhotoClip;->sharedBytes:Lorg/light/shared/SharedBytes;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lorg/light/shared/SharedBytes;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lorg/light/PhotoClip;->bytes:[B

    .line 24
    :cond_0
    iget-object p1, p0, Lorg/light/PhotoClip;->bundle:Landroid/os/Bundle;

    const-string v0, "sharedTexture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/light/shared/SharedTexture;

    iput-object p1, p0, Lorg/light/PhotoClip;->sharedTexture:Lorg/light/shared/SharedTexture;

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Lorg/light/shared/SharedTexture;->getTexture()I

    move-result p1

    iput p1, p0, Lorg/light/PhotoClip;->texId:I

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-object v0, p0, Lorg/light/PhotoClip;->sharedBytes:Lorg/light/shared/SharedBytes;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/light/shared/SharedBytes;->release()V

    .line 4
    iput-object v1, p0, Lorg/light/PhotoClip;->sharedBytes:Lorg/light/shared/SharedBytes;

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/light/PhotoClip;->sharedTexture:Lorg/light/shared/SharedTexture;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/light/shared/SharedTexture;->release()V

    .line 7
    iput-object v1, p0, Lorg/light/PhotoClip;->sharedTexture:Lorg/light/shared/SharedTexture;

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lorg/light/ClipAsset;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lorg/light/PhotoClip;->photoEffectPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lorg/light/PhotoClip;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lorg/light/PhotoClip;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lorg/light/PhotoClip;->bundle:Landroid/os/Bundle;

    .line 6
    iget-object p2, p0, Lorg/light/PhotoClip;->bytes:[B

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lorg/light/PhotoClip;->sharedBytes:Lorg/light/shared/SharedBytes;

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lorg/light/shared/SharedBytes;

    invoke-direct {p2}, Lorg/light/shared/SharedBytes;-><init>()V

    iput-object p2, p0, Lorg/light/PhotoClip;->sharedBytes:Lorg/light/shared/SharedBytes;

    .line 9
    :cond_0
    iget-object p2, p0, Lorg/light/PhotoClip;->sharedBytes:Lorg/light/shared/SharedBytes;

    iget-object v0, p0, Lorg/light/PhotoClip;->bytes:[B

    invoke-virtual {p2, v0}, Lorg/light/shared/SharedBytes;->setBytes([B)V

    .line 10
    iget-object p2, p0, Lorg/light/PhotoClip;->bundle:Landroid/os/Bundle;

    iget-object v0, p0, Lorg/light/PhotoClip;->sharedBytes:Lorg/light/shared/SharedBytes;

    const-string v1, "sharedBytes"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    :cond_1
    iget p2, p0, Lorg/light/PhotoClip;->texId:I

    if-lez p2, :cond_3

    .line 12
    iget-object p2, p0, Lorg/light/PhotoClip;->sharedTexture:Lorg/light/shared/SharedTexture;

    if-nez p2, :cond_2

    .line 13
    new-instance p2, Lorg/light/shared/SharedTexture;

    invoke-direct {p2}, Lorg/light/shared/SharedTexture;-><init>()V

    iput-object p2, p0, Lorg/light/PhotoClip;->sharedTexture:Lorg/light/shared/SharedTexture;

    .line 14
    :cond_2
    iget-object p2, p0, Lorg/light/PhotoClip;->sharedTexture:Lorg/light/shared/SharedTexture;

    iget v0, p0, Lorg/light/PhotoClip;->texId:I

    iget v1, p0, Lorg/light/PhotoClip;->width:I

    iget v2, p0, Lorg/light/PhotoClip;->height:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/light/shared/SharedTexture;->setTexture(III)V

    .line 15
    iget-object p2, p0, Lorg/light/PhotoClip;->bundle:Landroid/os/Bundle;

    iget-object v0, p0, Lorg/light/PhotoClip;->sharedTexture:Lorg/light/shared/SharedTexture;

    const-string v1, "sharedTexture"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16
    :cond_3
    iget-object p2, p0, Lorg/light/PhotoClip;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
