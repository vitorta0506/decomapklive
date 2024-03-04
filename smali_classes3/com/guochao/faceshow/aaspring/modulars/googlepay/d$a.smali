.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->onSubscribeSuccess()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
