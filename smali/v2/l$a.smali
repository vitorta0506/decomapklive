.class final Lv2/l$a;
.super Lv2/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field private final d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv2/l$a;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lv2/h;-><init>(Lcom/google/android/exoplayer2/i3;)V

    .line 2
    iput-object p2, p0, Lv2/l$a;->d:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lv2/l$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public static A(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;Ljava/lang/Object;)Lv2/l$a;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lv2/l$a;

    invoke-direct {v0, p0, p1, p2}, Lv2/l$a;-><init>(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic x(Lv2/l$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv2/l$a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static z(Lcom/google/android/exoplayer2/s1;)Lv2/l$a;
    .locals 3

    new-instance v0, Lv2/l$a;

    new-instance v1, Lv2/l$b;

    invoke-direct {v1, p0}, Lv2/l$b;-><init>(Lcom/google/android/exoplayer2/s1;)V

    sget-object p0, Lcom/google/android/exoplayer2/i3$d;->r:Ljava/lang/Object;

    sget-object v2, Lv2/l$a;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lv2/l$a;-><init>(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lv2/h;->c:Lcom/google/android/exoplayer2/i3;

    .line 2
    sget-object v1, Lv2/l$a;->f:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lv2/l$a;->e:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object p1, v1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/h;->c:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    .line 2
    iget-object p1, p2, Lcom/google/android/exoplayer2/i3$b;->b:Ljava/lang/Object;

    iget-object v0, p0, Lv2/l$a;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 3
    sget-object p1, Lv2/l$a;->f:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/android/exoplayer2/i3$b;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public q(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/h;->c:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/i3;->q(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lv2/l$a;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lv2/l$a;->f:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public s(ILcom/google/android/exoplayer2/i3$d;J)Lcom/google/android/exoplayer2/i3$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lv2/h;->c:Lcom/google/android/exoplayer2/i3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/i3;->s(ILcom/google/android/exoplayer2/i3$d;J)Lcom/google/android/exoplayer2/i3$d;

    .line 2
    iget-object p1, p2, Lcom/google/android/exoplayer2/i3$d;->a:Ljava/lang/Object;

    iget-object p3, p0, Lv2/l$a;->d:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/google/android/exoplayer2/i3$d;->r:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/android/exoplayer2/i3$d;->a:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public y(Lcom/google/android/exoplayer2/i3;)Lv2/l$a;
    .locals 3

    new-instance v0, Lv2/l$a;

    iget-object v1, p0, Lv2/l$a;->d:Ljava/lang/Object;

    iget-object v2, p0, Lv2/l$a;->e:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lv2/l$a;-><init>(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
