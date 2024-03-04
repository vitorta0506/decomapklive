.class public final synthetic Lcom/google/android/exoplayer2/util/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/util/q;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/o;->a:Lcom/google/android/exoplayer2/util/q;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/o;->a:Lcom/google/android/exoplayer2/util/q;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/q;->b(Lcom/google/android/exoplayer2/util/q;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
