.class public final Lcom/google/android/exoplayer2/upstream/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lv2/j;

.field public final b:Lv2/m;

.field public final c:Ljava/io/IOException;

.field public final d:I


# direct methods
.method public constructor <init>(Lv2/j;Lv2/m;Ljava/io/IOException;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/b$a;->a:Lv2/j;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/b$a;->b:Lv2/m;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/b$a;->c:Ljava/io/IOException;

    .line 5
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/b$a;->d:I

    return-void
.end method
