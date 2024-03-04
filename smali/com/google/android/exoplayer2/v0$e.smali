.class final Lcom/google/android/exoplayer2/v0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/exoplayer2/i3;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/v0$e;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/v0$e;->b:Lcom/google/android/exoplayer2/i3;

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/v0$e;Lcom/google/android/exoplayer2/i3;)Lcom/google/android/exoplayer2/i3;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/v0$e;->b:Lcom/google/android/exoplayer2/i3;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/i3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$e;->b:Lcom/google/android/exoplayer2/i3;

    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v0$e;->a:Ljava/lang/Object;

    return-object v0
.end method
