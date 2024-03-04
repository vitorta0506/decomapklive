.class final Lk2/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:[Lk2/p;

.field public b:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Lk2/p;

    iput-object p1, p0, Lk2/b$d;->a:[Lk2/p;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lk2/b$d;->d:I

    return-void
.end method
