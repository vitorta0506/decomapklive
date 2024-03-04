.class Lcom/guochao/faceshow/views/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/s;->q(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

.field final synthetic b:Lcom/guochao/faceshow/views/s;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/s;Lcom/guochao/faceshow/views/RangeSliderViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/s$a;->b:Lcom/guochao/faceshow/views/s;

    iput-object p2, p0, Lcom/guochao/faceshow/views/s$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/s$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->m()V

    return-void
.end method
