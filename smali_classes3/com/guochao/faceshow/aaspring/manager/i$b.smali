.class Lcom/guochao/faceshow/aaspring/manager/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/i;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/i;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/i;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i$b;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i$b;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/i;->j(Lcom/guochao/faceshow/aaspring/manager/i;Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;)Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;

    return-void
.end method
