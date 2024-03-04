.class Lcom/guochao/faceshow/fragment/TCTimeFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/SliderViewContainer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/fragment/TCTimeFragment;->a2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/fragment/TCTimeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/fragment/TCTimeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$b;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$b;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->P1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$b;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->R1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$b;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->Q1(Lcom/guochao/faceshow/fragment/TCTimeFragment;I)I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$b;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->U1(Lcom/guochao/faceshow/fragment/TCTimeFragment;J)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$b;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->T1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/views/s;->B(J)V

    return-void
.end method
