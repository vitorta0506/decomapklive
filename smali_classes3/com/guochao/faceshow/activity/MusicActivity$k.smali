.class Lcom/guochao/faceshow/activity/MusicActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/activity/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$k;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$k;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    check-cast p2, Lcom/guochao/faceshow/service/MediaService$a;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/MusicActivity;->d0(Lcom/guochao/faceshow/activity/MusicActivity;Lcom/guochao/faceshow/service/MediaService$a;)Lcom/guochao/faceshow/service/MediaService$a;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
