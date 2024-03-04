.class public final Lv2/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lj3/i$a;

.field private b:Lv2/x$a;

.field private c:Lcom/google/android/exoplayer2/drm/x;

.field private d:Lcom/google/android/exoplayer2/upstream/b;

.field private e:I

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj3/i$a;)V
    .locals 1

    .line 1
    new-instance v0, Lc2/i;

    invoke-direct {v0}, Lc2/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lv2/d0$b;-><init>(Lj3/i$a;Lc2/r;)V

    return-void
.end method

.method public constructor <init>(Lj3/i$a;Lc2/r;)V
    .locals 1

    .line 2
    new-instance v0, Lv2/e0;

    invoke-direct {v0, p2}, Lv2/e0;-><init>(Lc2/r;)V

    invoke-direct {p0, p1, v0}, Lv2/d0$b;-><init>(Lj3/i$a;Lv2/x$a;)V

    return-void
.end method

.method public constructor <init>(Lj3/i$a;Lv2/x$a;)V
    .locals 6

    .line 3
    new-instance v3, Lcom/google/android/exoplayer2/drm/j;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/drm/j;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/a;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/a;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lv2/d0$b;-><init>(Lj3/i$a;Lv2/x$a;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/upstream/b;I)V

    return-void
.end method

.method public constructor <init>(Lj3/i$a;Lv2/x$a;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/upstream/b;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lv2/d0$b;->a:Lj3/i$a;

    .line 6
    iput-object p2, p0, Lv2/d0$b;->b:Lv2/x$a;

    .line 7
    iput-object p3, p0, Lv2/d0$b;->c:Lcom/google/android/exoplayer2/drm/x;

    .line 8
    iput-object p4, p0, Lv2/d0$b;->d:Lcom/google/android/exoplayer2/upstream/b;

    .line 9
    iput p5, p0, Lv2/d0$b;->e:I

    return-void
.end method

.method public static synthetic a(Lc2/r;La2/s1;)Lv2/x;
    .locals 0

    invoke-static {p0, p1}, Lv2/d0$b;->c(Lc2/r;La2/s1;)Lv2/x;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Lc2/r;La2/s1;)Lv2/x;
    .locals 0

    new-instance p1, Lv2/b;

    invoke-direct {p1, p0}, Lv2/b;-><init>(Lc2/r;)V

    return-object p1
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/s1;)Lv2/d0;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1;->b:Lcom/google/android/exoplayer2/s1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/s1;->b:Lcom/google/android/exoplayer2/s1$h;

    iget-object v1, v0, Lcom/google/android/exoplayer2/s1$h;->h:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lv2/d0$b;->g:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/s1$h;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lv2/d0$b;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s1;->b()Lcom/google/android/exoplayer2/s1$c;

    move-result-object p1

    iget-object v0, p0, Lv2/d0$b;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s1$c;->d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/s1$c;

    move-result-object p1

    iget-object v0, p0, Lv2/d0$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s1$c;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/s1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s1$c;->a()Lcom/google/android/exoplayer2/s1;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s1;->b()Lcom/google/android/exoplayer2/s1$c;

    move-result-object p1

    iget-object v0, p0, Lv2/d0$b;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s1$c;->d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/s1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s1$c;->a()Lcom/google/android/exoplayer2/s1;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s1;->b()Lcom/google/android/exoplayer2/s1$c;

    move-result-object p1

    iget-object v0, p0, Lv2/d0$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s1$c;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/s1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s1$c;->a()Lcom/google/android/exoplayer2/s1;

    move-result-object p1

    :cond_4
    :goto_2
    move-object v1, p1

    .line 7
    new-instance p1, Lv2/d0;

    iget-object v2, p0, Lv2/d0$b;->a:Lj3/i$a;

    iget-object v3, p0, Lv2/d0$b;->b:Lv2/x$a;

    iget-object v0, p0, Lv2/d0$b;->c:Lcom/google/android/exoplayer2/drm/x;

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/x;->a(Lcom/google/android/exoplayer2/s1;)Lcom/google/android/exoplayer2/drm/u;

    move-result-object v4

    iget-object v5, p0, Lv2/d0$b;->d:Lcom/google/android/exoplayer2/upstream/b;

    iget v6, p0, Lv2/d0$b;->e:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lv2/d0;-><init>(Lcom/google/android/exoplayer2/s1;Lj3/i$a;Lv2/x$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/b;ILv2/d0$a;)V

    return-object p1
.end method
