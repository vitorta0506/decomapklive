.class final Lcom/google/android/exoplayer2/e2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lv2/l;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv2/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lv2/q;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv2/l;

    invoke-direct {v0, p1, p2}, Lv2/l;-><init>(Lv2/q;Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/e2$c;->c:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/e2$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/i3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/e2$c;->a:Lv2/l;

    invoke-virtual {v0}, Lv2/l;->L()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/e2$c;->d:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/e2$c;->e:Z

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/e2$c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getUid()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/e2$c;->b:Ljava/lang/Object;

    return-object v0
.end method
