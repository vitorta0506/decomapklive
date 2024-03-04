.class public abstract Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Lte/a;)V
    .locals 0

    return-void
.end method

.method public abstract onGranted(Lte/a;)V
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p1, Lte/a;->b:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onGranted(Lte/a;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p1, Lte/a;->c:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onShouldShowRequestPermissionRationale(Lte/a;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onDenied(Lte/a;)V

    :goto_0
    return-void
.end method

.method public onShouldShowRequestPermissionRationale(Lte/a;)V
    .locals 0

    return-void
.end method
