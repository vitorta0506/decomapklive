.class public final synthetic Lcom/google/android/exoplayer2/audio/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/r$a;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/r$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/q;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/q;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/q;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/q;->b:Z

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/r$a;->a(Lcom/google/android/exoplayer2/audio/r$a;Z)V

    return-void
.end method
