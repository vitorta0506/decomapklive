.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o$a;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o$a;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o$a;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->k1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Ljava/io/File;)V

    return-void
.end method
