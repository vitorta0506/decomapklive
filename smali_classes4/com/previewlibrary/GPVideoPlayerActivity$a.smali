.class Lcom/previewlibrary/GPVideoPlayerActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/GPVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/previewlibrary/GPVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/previewlibrary/GPVideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/GPVideoPlayerActivity$a;->a:Lcom/previewlibrary/GPVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p1, p0, Lcom/previewlibrary/GPVideoPlayerActivity$a;->a:Lcom/previewlibrary/GPVideoPlayerActivity;

    sget p2, Lcom/previewlibrary/R$string;->Playback_failed:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return p3
.end method
