.class public Lcom/guochao/faceshow/bean/LiveActivityDialogBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;
    }
.end annotation


# instance fields
.field private homePageFrame:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private liveFrame:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHomePageFrame()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;->homePageFrame:Ljava/util/List;

    return-object v0
.end method

.method public getLiveFrame()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;->liveFrame:Ljava/util/List;

    return-object v0
.end method

.method public setHomePageFrame(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;->homePageFrame:Ljava/util/List;

    return-void
.end method

.method public setLiveFrame(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;->liveFrame:Ljava/util/List;

    return-void
.end method
