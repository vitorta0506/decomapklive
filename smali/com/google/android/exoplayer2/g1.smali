.class public final synthetic Lcom/google/android/exoplayer2/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/h1;

.field public final synthetic b:Lcom/google/android/exoplayer2/p2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/h1;Lcom/google/android/exoplayer2/p2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/g1;->a:Lcom/google/android/exoplayer2/h1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/g1;->b:Lcom/google/android/exoplayer2/p2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/g1;->a:Lcom/google/android/exoplayer2/h1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g1;->b:Lcom/google/android/exoplayer2/p2;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/h1;->g(Lcom/google/android/exoplayer2/h1;Lcom/google/android/exoplayer2/p2;)V

    return-void
.end method
