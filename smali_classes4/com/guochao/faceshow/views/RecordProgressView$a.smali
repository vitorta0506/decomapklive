.class Lcom/guochao/faceshow/views/RecordProgressView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/RecordProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/RecordProgressView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/RecordProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/RecordProgressView$a;->a:Lcom/guochao/faceshow/views/RecordProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView$a;->a:Lcom/guochao/faceshow/views/RecordProgressView;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RecordProgressView;->a(Lcom/guochao/faceshow/views/RecordProgressView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/views/RecordProgressView;->b(Lcom/guochao/faceshow/views/RecordProgressView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView$a;->a:Lcom/guochao/faceshow/views/RecordProgressView;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RecordProgressView;->d(Lcom/guochao/faceshow/views/RecordProgressView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/RecordProgressView$a;->a:Lcom/guochao/faceshow/views/RecordProgressView;

    invoke-static {v1}, Lcom/guochao/faceshow/views/RecordProgressView;->c(Lcom/guochao/faceshow/views/RecordProgressView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView$a;->a:Lcom/guochao/faceshow/views/RecordProgressView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
