.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/hello/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;

.field public final synthetic b:Lcom/guochao/faceshow/databinding/FragmentHelloSummonBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;Lcom/guochao/faceshow/databinding/FragmentHelloSummonBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/d;->b:Lcom/guochao/faceshow/databinding/FragmentHelloSummonBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/d;->b:Lcom/guochao/faceshow/databinding/FragmentHelloSummonBinding;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;Lcom/guochao/faceshow/databinding/FragmentHelloSummonBinding;Landroid/view/View;)V

    return-void
.end method
