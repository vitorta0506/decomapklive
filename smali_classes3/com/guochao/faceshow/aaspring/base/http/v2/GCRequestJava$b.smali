.class Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$b;->b:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$b;->a:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$b;->a:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$b;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
