.class public final Lx2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# static fields
.field public static final b:Lx2/e;

.field public static final c:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lx2/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lx2/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx2/e;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lx2/e;-><init>(Ljava/util/List;)V

    sput-object v0, Lx2/e;->b:Lx2/e;

    .line 2
    sget-object v0, Lx2/d;->a:Lx2/d;

    sput-object v0, Lx2/e;->c:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lx2/e;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lx2/e;
    .locals 0

    invoke-static {p0}, Lx2/e;->b(Landroid/os/Bundle;)Lx2/e;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Landroid/os/Bundle;)Lx2/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lx2/e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lx2/b;->s:Lcom/google/android/exoplayer2/h$a;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/c;->b(Lcom/google/android/exoplayer2/h$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 4
    :goto_0
    new-instance v0, Lx2/e;

    invoke-direct {v0, p0}, Lx2/e;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
