.class public final Lcom/google/android/exoplayer2/a3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/q$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/q$b;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/q$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a3$a;->a:Lcom/google/android/exoplayer2/q$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/a3;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/a3$a;->a:Lcom/google/android/exoplayer2/q$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q$b;->e()Lcom/google/android/exoplayer2/a3;

    move-result-object v0

    return-object v0
.end method
