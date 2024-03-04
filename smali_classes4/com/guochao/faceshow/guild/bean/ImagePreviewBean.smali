.class public Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/previewlibrary/enitity/IThumbViewInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private url:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "\u7528\u6237\u5b57\u6bb5"

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->user:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->url:Ljava/lang/String;

    .line 11
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->mBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->user:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "\u7528\u6237\u5b57\u6bb5"

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->user:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "\u7528\u6237\u5b57\u6bb5"

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->user:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->url:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->videoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->user:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->user:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
