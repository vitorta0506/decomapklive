.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/PkChangeUiMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private mPkRound:Lcom/guochao/faceshow/aaspring/beans/PkRound;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pk"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getPkRound()Lcom/guochao/faceshow/aaspring/beans/PkRound;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkChangeUiMessage;->mPkRound:Lcom/guochao/faceshow/aaspring/beans/PkRound;

    return-object v0
.end method

.method public setPkRound(Lcom/guochao/faceshow/aaspring/beans/PkRound;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkChangeUiMessage;->mPkRound:Lcom/guochao/faceshow/aaspring/beans/PkRound;

    return-void
.end method
