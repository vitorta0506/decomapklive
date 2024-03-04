.class public final synthetic Lcom/google/android/exoplayer2/audio/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/r$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/k1;

.field public final synthetic c:Lb2/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/r$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/l;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/l;->b:Lcom/google/android/exoplayer2/k1;

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/l;->c:Lb2/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/l;->b:Lcom/google/android/exoplayer2/k1;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/l;->c:Lb2/g;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->e(Lcom/google/android/exoplayer2/audio/r$a;Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    return-void
.end method
