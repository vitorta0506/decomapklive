.class public final synthetic Lcom/twitter/sdk/android/tweetui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/tweetui/s;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetui/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/n;->a:Lcom/twitter/sdk/android/tweetui/s;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/n;->a:Lcom/twitter/sdk/android/tweetui/s;

    invoke-static {v0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/s;->c(Lcom/twitter/sdk/android/tweetui/s;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
