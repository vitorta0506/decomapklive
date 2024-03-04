.class Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->copy(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)Lio/reactivex/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
        "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

.field final synthetic val$isUgc:Z


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$2;->this$0:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$2;->val$isUgc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$2;->this$0:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->access$000(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$2;->this$0:Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$2;->val$isUgc:Z

    const/16 v3, 0x2ee

    invoke-static {v1, p1, v0, v3, v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->access$100(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setThumb(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setUri(Landroid/net/Uri;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$2;->apply(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    move-result-object p1

    return-object p1
.end method
