.class public Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pkFcion:Ljava/lang/String;

.field private waitPeople:Ljava/lang/String;

.field private winTimes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->imgList:Ljava/util/List;

    return-object v0
.end method

.method public getPkFcion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->pkFcion:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitPeople()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->waitPeople:Ljava/lang/String;

    return-object v0
.end method

.method public getWinTimes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->winTimes:Ljava/lang/String;

    return-object v0
.end method

.method public setImgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->imgList:Ljava/util/List;

    return-void
.end method

.method public setPkFcion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->pkFcion:Ljava/lang/String;

    return-void
.end method

.method public setWaitPeople(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->waitPeople:Ljava/lang/String;

    return-void
.end method

.method public setWinTimes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->winTimes:Ljava/lang/String;

    return-void
.end method
