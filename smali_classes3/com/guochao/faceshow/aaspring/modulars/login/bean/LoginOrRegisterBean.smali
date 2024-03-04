.class public Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkkey:Ljava/lang/String;

.field private existUser:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "type"
        }
        value = "existUser"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;->existUser:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;->checkkey:Ljava/lang/String;

    return-object v0
.end method

.method public getExistUser()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;->existUser:I

    return v0
.end method

.method public setCheckkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;->checkkey:Ljava/lang/String;

    return-void
.end method

.method public setExistUser(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;->existUser:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;->existUser:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
