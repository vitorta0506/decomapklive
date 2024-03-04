.class Lcom/guochao/faceshow/aaspring/utils/AutoCleanManager$1;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/AutoCleanManager;->cleanIfNeeded()V
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Integer;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/AutoCleanManager;->access$002(Z)Z

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/AutoCleanManager$1;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
