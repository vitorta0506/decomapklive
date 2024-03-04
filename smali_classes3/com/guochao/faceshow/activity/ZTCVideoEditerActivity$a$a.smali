.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a;->onPreviewProgressWrapper(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a$a;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a;

    iput p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a$a;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a$a;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/views/s;->B(J)V

    return-void
.end method
