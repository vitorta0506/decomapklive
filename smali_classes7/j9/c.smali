.class public final synthetic Lj9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9/c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj9/c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->c(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;)V

    return-void
.end method
