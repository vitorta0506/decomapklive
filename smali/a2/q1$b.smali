.class final La2/q1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/k1;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/k1;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La2/q1$b;->a:Lcom/google/android/exoplayer2/k1;

    .line 3
    iput p2, p0, La2/q1$b;->b:I

    .line 4
    iput-object p3, p0, La2/q1$b;->c:Ljava/lang/String;

    return-void
.end method
