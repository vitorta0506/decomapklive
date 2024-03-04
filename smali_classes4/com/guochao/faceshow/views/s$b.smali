.class Lcom/guochao/faceshow/views/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/s;->r(Lcom/guochao/faceshow/views/SliderViewContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/SliderViewContainer;

.field final synthetic b:Lcom/guochao/faceshow/views/s;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/s;Lcom/guochao/faceshow/views/SliderViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/s$b;->b:Lcom/guochao/faceshow/views/s;

    iput-object p2, p0, Lcom/guochao/faceshow/views/s$b;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/s$b;->a:Lcom/guochao/faceshow/views/SliderViewContainer;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/SliderViewContainer;->e()V

    return-void
.end method
