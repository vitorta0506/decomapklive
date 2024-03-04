.class public Lcom/guochao/faceshow/aaspring/beans/SignResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private selectTime:J

.field private signInContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/SignResult;->selectTime:J

    return-wide v0
.end method

.method public getSignInContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SignResult;->signInContent:Ljava/lang/String;

    return-object v0
.end method

.method public setSelectTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/SignResult;->selectTime:J

    return-void
.end method

.method public setSignInContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SignResult;->signInContent:Ljava/lang/String;

    return-void
.end method
