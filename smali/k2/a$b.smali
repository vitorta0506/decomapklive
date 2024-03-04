.class final Lk2/a$b;
.super Lk2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/google/android/exoplayer2/util/b0;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/util/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk2/a;-><init>(I)V

    .line 2
    iput-object p2, p0, Lk2/a$b;->b:Lcom/google/android/exoplayer2/util/b0;

    return-void
.end method
