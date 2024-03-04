.class Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1$1;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1;->onFailure(Lg7/a;)V
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Integer;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1;->val$callback:Lr7/a$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLocalLiving(Lr7/a$a;Z)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1$1;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
