.class final Lk2/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/b0;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lk2/a$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lk2/a$b;->b:Lcom/google/android/exoplayer2/util/b0;

    iput-object p1, p0, Lk2/b$f;->a:Lcom/google/android/exoplayer2/util/b0;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->H()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lk2/b$f;->c:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->H()I

    move-result p1

    iput p1, p0, Lk2/b$f;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Lk2/b$f;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk2/b$f;->a:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->D()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lk2/b$f;->a:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->J()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget v0, p0, Lk2/b$f;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk2/b$f;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lk2/b$f;->a:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->D()I

    move-result v0

    iput v0, p0, Lk2/b$f;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 6
    :cond_2
    iget v0, p0, Lk2/b$f;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lk2/b$f;->b:I

    return v0
.end method
