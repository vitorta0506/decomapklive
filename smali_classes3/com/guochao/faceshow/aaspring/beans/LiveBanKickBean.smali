.class public Lcom/guochao/faceshow/aaspring/beans/LiveBanKickBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public userMsgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickBean;->userMsgList:Ljava/util/List;

    return-void
.end method
