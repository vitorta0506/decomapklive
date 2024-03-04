.class Lcom/guochao/faceshow/aaspring/views/q$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/q$b;->a(Lio/reactivex/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/m;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/q$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/q$b;Lio/reactivex/m;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/q$b$a;->b:Lcom/guochao/faceshow/aaspring/views/q$b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/q$b$a;->a:Lio/reactivex/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/q$b$a;->a:Lio/reactivex/m;

    invoke-interface {p1}, Lio/reactivex/m;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/q$b$a;->a:Lio/reactivex/m;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/q$b$a;->b:Lcom/guochao/faceshow/aaspring/views/q$b;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/q$b;->b(Lcom/guochao/faceshow/aaspring/views/q$b;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/d;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
