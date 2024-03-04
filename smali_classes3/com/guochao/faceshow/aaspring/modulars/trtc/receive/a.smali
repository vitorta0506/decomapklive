.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$c;->d(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method
