.class final Lcom/google/android/exoplayer2/util/y$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/util/y;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/y$d;->a:Lcom/google/android/exoplayer2/util/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/y;Lcom/google/android/exoplayer2/util/y$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/y$d;-><init>(Lcom/google/android/exoplayer2/util/y;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/y;->b(Landroid/content/Context;)I

    move-result p2

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/util/y$d;->a:Lcom/google/android/exoplayer2/util/y;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/y$b;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/util/y;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/y$d;->a:Lcom/google/android/exoplayer2/util/y;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/y;->c(Lcom/google/android/exoplayer2/util/y;I)V

    :goto_0
    return-void
.end method
