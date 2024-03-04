.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

.field public final synthetic b:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/c;->a:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/c;->b:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/c;->a:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/c;->b:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->g0(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    return-void
.end method
