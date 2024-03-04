.class public Lcom/guochao/faceshow/aaspring/beans/ActivityGift;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appActivityGiftEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppActivityGiftEntityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->appActivityGiftEntityList:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setAppActivityGiftEntityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->appActivityGiftEntityList:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->id:Ljava/lang/String;

    return-void
.end method
