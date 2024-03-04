.class Lv2/d0$a;
.super Lv2/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/d0;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lv2/d0;Lcom/google/android/exoplayer2/i3;)V
    .locals 0

    invoke-direct {p0, p2}, Lv2/h;-><init>(Lcom/google/android/exoplayer2/i3;)V

    return-void
.end method


# virtual methods
.method public k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lv2/h;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/i3$b;->f:Z

    return-object p2
.end method

.method public s(ILcom/google/android/exoplayer2/i3$d;J)Lcom/google/android/exoplayer2/i3$d;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lv2/h;->s(ILcom/google/android/exoplayer2/i3$d;J)Lcom/google/android/exoplayer2/i3$d;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/i3$d;->l:Z

    return-object p2
.end method
