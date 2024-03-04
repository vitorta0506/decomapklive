.class public Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field a:Lz8/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowService;->a:Lz8/c;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowService;->a:Lz8/c;

    .line 3
    invoke-virtual {p1, p0}, Lz8/c;->O(Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowService;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowService;->a:Lz8/c;

    return-object p1
.end method
