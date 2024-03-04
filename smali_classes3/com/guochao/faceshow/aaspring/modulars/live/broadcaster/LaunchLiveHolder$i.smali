.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$i;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;J)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$i;->a:J

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$i$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$i$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$i;Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V

    invoke-static {v0, v1}, Lba/a;->q(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$i;->onNext(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V

    return-void
.end method
