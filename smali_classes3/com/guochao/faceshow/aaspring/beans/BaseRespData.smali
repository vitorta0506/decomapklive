.class public Lcom/guochao/faceshow/aaspring/beans/BaseRespData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->code:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->msg:Ljava/lang/String;

    return-void
.end method
