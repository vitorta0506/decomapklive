.class public Lcom/guochao/faceshow/aaspring/beans/PageBeanData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;
    }
.end annotation


# instance fields
.field private page:Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;

.field private selcetTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPage()Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData;->page:Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;

    return-object v0
.end method

.method public getSelcetTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData;->selcetTime:J

    return-wide v0
.end method

.method public setPage(Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData;->page:Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;

    return-void
.end method

.method public setSelcetTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/PageBeanData;->selcetTime:J

    return-void
.end method
