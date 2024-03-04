.class public Lcom/guochao/faceshow/aaspring/beans/PayoneerData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private payeeId:Ljava/lang/String;

.field private payoneerId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->payeeId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayoneerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->payoneerId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->payeeId:Ljava/lang/String;

    return-void
.end method

.method public setPayoneerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->payoneerId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->userId:Ljava/lang/String;

    return-void
.end method
