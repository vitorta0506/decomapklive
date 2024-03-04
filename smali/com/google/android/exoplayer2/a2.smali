.class public final synthetic Lcom/google/android/exoplayer2/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/b2;

.field public final synthetic b:Lcom/google/common/collect/ImmutableList$b;

.field public final synthetic c:Lv2/q$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/b2;Lcom/google/common/collect/ImmutableList$b;Lv2/q$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a2;->a:Lcom/google/android/exoplayer2/b2;

    iput-object p2, p0, Lcom/google/android/exoplayer2/a2;->b:Lcom/google/common/collect/ImmutableList$b;

    iput-object p3, p0, Lcom/google/android/exoplayer2/a2;->c:Lv2/q$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->a:Lcom/google/android/exoplayer2/b2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->b:Lcom/google/common/collect/ImmutableList$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->c:Lv2/q$b;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/b2;->a(Lcom/google/android/exoplayer2/b2;Lcom/google/common/collect/ImmutableList$b;Lv2/q$b;)V

    return-void
.end method
