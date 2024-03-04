.class final Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/arouter/core/InterceptorServiceImpl;->a(ILp/a;Lcom/alibaba/android/arouter/facade/Postcard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lp/a;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/arouter/facade/Postcard;


# direct methods
.method constructor <init>(Lp/a;ILcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$b;->a:Lp/a;

    iput p2, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$b;->b:I

    iput-object p3, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$b;->c:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$b;->a:Lp/a;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2
    iget v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$b;->a:Lp/a;

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl;->b(ILp/a;Lcom/alibaba/android/arouter/facade/Postcard;)V

    return-void
.end method

.method public onInterrupt(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$b;->c:Lcom/alibaba/android/arouter/facade/Postcard;

    if-nez p1, :cond_0

    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v1, "No message."

    invoke-direct {p1, v1}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->setTag(Ljava/lang/Object;)Lcom/alibaba/android/arouter/facade/Postcard;

    .line 2
    iget-object p1, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$b;->a:Lp/a;

    invoke-virtual {p1}, Lp/a;->a()V

    return-void
.end method
