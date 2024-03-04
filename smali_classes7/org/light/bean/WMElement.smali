.class public Lorg/light/bean/WMElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CHECK_IN_ERR_CODE_DUPLICATE:I = 0xb

.field public static final CHECK_IN_ERR_CODE_SUCCESS:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/WMElement;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WMElement"

.field public static final TYPE_CHECK_IN:Ljava/lang/String; = "CHECK_IN"

.field public static final TYPE_COUNTDOWN:Ljava/lang/String; = "COUNTDOWN"

.field public static final TYPE_EDITABLE_LOCATION:Ljava/lang/String; = "EDITABLE_LOCATION"

.field public static final TYPE_PLAIN_TEXT:Ljava/lang/String; = "PLAIN_TEXT"

.field public static final TYPE_SINCE:Ljava/lang/String; = "SINCE"

.field protected static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;


# instance fields
.field public controller:Lorg/light/Controller;

.field public final elementId:Ljava/lang/String;

.field protected instanceId:I

.field public final key:Ljava/lang/String;

.field public final materialId:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/WMElement$1;

    invoke-direct {v0}, Lorg/light/bean/WMElement$1;-><init>()V

    sput-object v0, Lorg/light/bean/WMElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/light/bean/WMElement;->instanceId:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/WMElement;->materialId:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/WMElement;->elementId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/WMElement;->type:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/WMElement;->key:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/light/bean/WMElement;->instanceId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/bean/WMElement;->instanceId:I

    .line 3
    iput-object p1, p0, Lorg/light/bean/WMElement;->materialId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/light/bean/WMElement;->elementId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lorg/light/bean/WMElement;->type:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/WMElement;->key:Ljava/lang/String;

    .line 7
    sget-object v0, Lorg/light/bean/WMElement;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lorg/light/ILightSDKServiceInterface;->wmElementConstructor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/light/bean/WMElement;->instanceId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WMElement"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private native getCustomInnerValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeDoCheckIn(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeResetCheckIn(Ljava/lang/String;)V
.end method

.method private setCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/light/bean/WMElement;->setCustomData(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private native setCustomData(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/bean/WMElement;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doCheckIn()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/bean/WMElement;->key:Ljava/lang/String;

    iget-object v1, p0, Lorg/light/bean/WMElement;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/light/bean/WMElement;->doCheckIn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public doCheckIn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 2
    sget-object v0, Lorg/light/bean/WMElement;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget v1, p0, Lorg/light/bean/WMElement;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->wmElementDoCheckIn(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WMElement"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/bean/WMElement;->nativeDoCheckIn(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInnerValue()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/bean/WMElement;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/bean/WMElement;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->wmElementGetInnerValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WMElement"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/bean/WMElement;->key:Ljava/lang/String;

    iget-object v1, p0, Lorg/light/bean/WMElement;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/light/bean/WMElement;->getCustomInnerValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetCheckIn()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/bean/WMElement;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/bean/WMElement;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->wmElementResetCheckIn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WMElement"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/bean/WMElement;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/light/bean/WMElement;->nativeResetCheckIn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDate(J)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/bean/WMElement;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/bean/WMElement;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->wmElementSetDate(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WMElement"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/bean/WMElement;->key:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/light/bean/WMElement;->setCustomData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0

    iput p1, p0, Lorg/light/bean/WMElement;->instanceId:I

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/bean/WMElement;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/bean/WMElement;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->wmElementSetLocation(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WMElement"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/bean/WMElement;->key:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/light/bean/WMElement;->setCustomData(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/bean/WMElement;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/bean/WMElement;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->wmElementSetText(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WMElement"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/bean/WMElement;->key:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/light/bean/WMElement;->setCustomData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/light/bean/WMElement;->materialId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lorg/light/bean/WMElement;->elementId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/light/bean/WMElement;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lorg/light/bean/WMElement;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lorg/light/bean/WMElement;->instanceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
