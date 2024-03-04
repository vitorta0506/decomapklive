.class public final synthetic Lcom/google/android/exoplayer2/util/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/util/y;

.field public final synthetic b:Lcom/google/android/exoplayer2/util/y$c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/y;Lcom/google/android/exoplayer2/util/y$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/x;->a:Lcom/google/android/exoplayer2/util/y;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/x;->b:Lcom/google/android/exoplayer2/util/y$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/x;->a:Lcom/google/android/exoplayer2/util/y;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/x;->b:Lcom/google/android/exoplayer2/util/y$c;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/y;->a(Lcom/google/android/exoplayer2/util/y;Lcom/google/android/exoplayer2/util/y$c;)V

    return-void
.end method
