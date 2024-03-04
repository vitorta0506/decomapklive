.class public Lcom/guochao/faceshow/bean/NewMatchedCountBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:I

.field private firstUserImg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/NewMatchedCountBean;->count:I

    return v0
.end method

.method public getFirstUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/NewMatchedCountBean;->firstUserImg:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/NewMatchedCountBean;->count:I

    return-void
.end method

.method public setFirstUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/NewMatchedCountBean;->firstUserImg:Ljava/lang/String;

    return-void
.end method
