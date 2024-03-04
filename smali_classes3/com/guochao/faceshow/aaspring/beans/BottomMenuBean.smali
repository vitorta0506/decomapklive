.class public Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private icon:I

.field private itemId:I

.field private text:Ljava/lang/CharSequence;

.field private textColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->icon:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->text:Ljava/lang/CharSequence;

    .line 5
    const-class v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->textColor:Landroid/content/res/ColorStateList;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->itemId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->icon:I

    return v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->itemId:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->textColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->icon:I

    return-void
.end method

.method public setItemId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->itemId:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->text:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->textColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->itemId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
