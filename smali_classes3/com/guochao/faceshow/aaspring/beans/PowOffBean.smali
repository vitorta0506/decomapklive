.class public Lcom/guochao/faceshow/aaspring/beans/PowOffBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;,
        Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/PowOffBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;

.field private data:Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->code:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->message:Ljava/lang/String;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->data:Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->data:Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->data:Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->message:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->data:Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
