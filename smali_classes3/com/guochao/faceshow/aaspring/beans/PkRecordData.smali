.class public Lcom/guochao/faceshow/aaspring/beans/PkRecordData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pkCount:Ljava/lang/String;

.field private pkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PkRecord;",
            ">;"
        }
    .end annotation
.end field

.field private winRoute:Ljava/lang/String;

.field private winTimes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPkCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->pkCount:Ljava/lang/String;

    return-object v0
.end method

.method public getPkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PkRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->pkList:Ljava/util/List;

    return-object v0
.end method

.method public getWinRoute()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->winRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getWinTimes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->winTimes:Ljava/lang/String;

    return-object v0
.end method

.method public setPkCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->pkCount:Ljava/lang/String;

    return-void
.end method

.method public setPkList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PkRecord;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->pkList:Ljava/util/List;

    return-void
.end method

.method public setWinRoute(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->winRoute:Ljava/lang/String;

    return-void
.end method

.method public setWinTimes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->winTimes:Ljava/lang/String;

    return-void
.end method
