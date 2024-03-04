.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/hello/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/EventTrackData;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;Lcom/guochao/faceshow/aaspring/beans/EventTrackData;)V

    return-void
.end method
