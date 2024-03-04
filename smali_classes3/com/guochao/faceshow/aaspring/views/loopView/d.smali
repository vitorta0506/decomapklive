.class final Lcom/guochao/faceshow/aaspring/views/loopView/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/d;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/d;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->d:Lna/b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->getSelectedItem()I

    move-result v0

    invoke-interface {v1, v0}, Lna/b;->a(I)V

    return-void
.end method
