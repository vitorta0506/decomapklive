.class public Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/bean/UgcPoiBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private icon:Ljava/lang/String;

.field private isCity:I

.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private vicinity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCity()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->isCity:I

    return v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVicinity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->vicinity:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIsCity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->isCity:I

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->lng:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setVicinity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->vicinity:Ljava/lang/String;

    return-void
.end method
