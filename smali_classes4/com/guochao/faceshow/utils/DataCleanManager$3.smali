.class Lcom/guochao/faceshow/utils/DataCleanManager$3;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/DataCleanManager;->clearAllCache(Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/DataCleanManager$3;->val$callBack:Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/utils/DataCleanManager$3;->val$callBack:Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;

    invoke-interface {p1}, Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;->onSucceed()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/DataCleanManager$3;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
