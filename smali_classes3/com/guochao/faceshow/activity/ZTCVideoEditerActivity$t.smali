.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/s$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$t;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$t;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q1(J)V

    return-void
.end method

.method public b(J)V
    .locals 4

    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$t;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->m0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J

    move-result-wide v0

    iget-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$t;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object p2

    iget-wide v2, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a2(JJ)V

    return-void
.end method
