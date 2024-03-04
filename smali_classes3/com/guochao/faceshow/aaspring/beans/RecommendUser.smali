.class public Lcom/guochao/faceshow/aaspring/beans/RecommendUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;
    }
.end annotation


# instance fields
.field private RecommendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;",
            ">;"
        }
    .end annotation
.end field

.field private hiId:Ljava/lang/String;

.field private hiImg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHiId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->hiId:Ljava/lang/String;

    return-object v0
.end method

.method public getHiImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->hiImg:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->RecommendList:Ljava/util/List;

    return-object v0
.end method

.method public setHiId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->hiId:Ljava/lang/String;

    return-void
.end method

.method public setHiImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->hiImg:Ljava/lang/String;

    return-void
.end method

.method public setRecommendList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->RecommendList:Ljava/util/List;

    return-void
.end method
