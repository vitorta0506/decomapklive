.class public final synthetic Lcom/guochao/faceshow/aaspring/base/http/v2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/utils/a;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/Job;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/a;->a:Lkotlinx/coroutines/Job;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/a;->c:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/a;->a:Lkotlinx/coroutines/Job;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/a;->c:Landroid/os/CancellationSignal;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->a(Lkotlinx/coroutines/Job;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/CancellationSignal;)V

    return-void
.end method
